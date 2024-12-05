#!/usr/bin/env bash
set -euo pipefail

help() {
  cat <<'EOF'
Generate boilerplate for the specified day

USAGE:
    generate_day.sh [options]

FLAGS:
    -h, --help      Display this message
    -d, --day       The day to generate boilerplate for. e.g. '2' or '15'.

EXAMPLE:
    Generate boilerplate for day 2
    $ ./generate_day.sh --day 2
EOF
}

say() {
  echo "install: $*" >&2
}

err() {
  say "error: $*"
  exit 1
}

need() {
  if ! command -v "$1" > /dev/null 2>&1; then
    err "need $1 (command not found)"
  fi
}

if [[ $# -eq 0 ]] ; then
    help
    exit 1
fi

while test $# -gt 0; do
  case $1 in
    --day | -d)
      day=$2
      shift
      ;;
    --help | -h)
      help
      exit 0
      ;;
    *)
      say "error: unrecognized argument '$1'. Usage:"
      help
      exit 1
      ;;
  esac
  shift
done

need mkdir
need sed
need cp
need printf

day=$(printf %02d ${day})
readonly day

echo "Generating boilerplate for day ${day}"

declare -r DAY_DIR="src/main/java/aoc"
declare -r TEST_DIR="src/test/java/aoc"
declare -r BOILER_PLATE_DAY="${DAY_DIR}/day00/Day00.java"
declare -r BOILER_PLATE_TEST="${TEST_DIR}/day00/Day00Test.java"

# Generate Test boilerplate
declare -r test_fname="Day${day}Test.java"
declare -r new_test_dir="${TEST_DIR}/day${day}"
mkdir -p "${new_test_dir}"

declare -r new_test_fpath="${new_test_dir}/${test_fname}"
cp "${BOILER_PLATE_TEST}" "${new_test_fpath}"

# Replace instances of "00" with the day argument (zero-padded)
sed -i "s/00/${day}/g" "${new_test_fpath}"

# Generate puzzle solution boilerplate
declare -r new_day_dir="${DAY_DIR}/day${day}"
mkdir -p "${new_day_dir}"

declare -r day_fname="Day${day}.java"
declare -r new_day_fpath="${new_day_dir}/${day_fname}"
cp "${BOILER_PLATE_DAY}" "${new_day_fpath}"

# Replace instances of "00" with the day argument (zero-padded)
sed -i "s/00/${day}/g" "${new_day_fpath}"
