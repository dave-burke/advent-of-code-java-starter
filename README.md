# Advent of Code Java Starter project

A project to get you started solving [Advent of Code](https://adventofcode.com/) challenge in Java.

## Architecture

Each day should extend the parent `Day` class, and initialise `Day.currentDay` with an instance of the day using a static initializer block. `Day` has a main method which will execute the code for the current day based on input in `src/main/resources/day[number].txt`

Running your child class will load the puzzle input and print the results of `part1()` and `part2()` to `stdout`.

## Assumptions

1. Each day's puzzle will have an input consisting of one or more lines of plain text.
1. Each day's puzzle will have two "parts" requiring separate implementations, but using the same input.
1. Puzzle solutions will be a single line of text.
1. Each puzzle description will provide at least one example input/output.

## How to add a puzzle

The shell for day 1 is already there. These are the steps to add day 2, etc. For day 1 you can start by writing the test cases once the puzzle posts.

### Part 1

1. Create `aoc.day02.Day02.java extends Day`
1. Create a static initialization block in `Day02.java` to set your new `Day` child class: `static {currentDay = new Day02();}`
1. Create `Day02Test.java` and use the sample input/output from https://adventofcode.com/2019/day/2 to write tests (they will initially fail).
1. Implement `Day02.part1()` until the tests pass (Test Driven Development!). You can run `./gradlew --continuous check` to have the tests run every time you save your code.
1. When the example input passes, get your unique puzzle input from https://adventofcode.com/2019/day/2/input and save it as `src/main/resources/day02.txt`
1. Run `./gradlew clean build install && ./build/install/advent-of-code/bin/advent-of-code 2` to get your output.
    - Notice the day number ("2") is passed to the start script as an argument.
1. Check your solution on https://adventofcode.com!

### Part 2

1. Add new tests for part 2 to `Day02Test.java` using the sample input/output from https://adventofcode.com/2019/day/2
1. Implement `Day02.part2()` until the tests pass.
1. When the example input passes, run `./gradlew clean build install && ./build/install/advent-of-code/bin/advent-of-code 2 2` to get your output.
    - Notice the second argument to the script is the part number. It defaults to 1, so now you have to pass it as 2.
1. Check your solution on https://adventofcode.com!

