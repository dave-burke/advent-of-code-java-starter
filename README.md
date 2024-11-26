# Advent of Code Java Starter project

A project to get you started solving [Advent of Code](https://adventofcode.com/) challenge in Java.

## Architecture

The `Main` method in `App` will execute the code for a given day based on input in `src/main/resources/day[number].txt`

The given `Day` class will process the input and return a result, which `App` will print to `stdout`.

## Assumptions

1. Each day's puzzle will have an input consisting of one or more lines of plain text.
1. Each day's puzzle will have two "parts" requiring separate implementations, but using the same input.
1. Puzzle solutions will be a single line of text.
1. Each puzzle description will provide at least one example input/output.

## How to add a puzzle

The shell for day 1 is already there. These are the steps to add day 2, etc. For day 1 you can start by writing the test cases once the puzzle posts.

### Part 1

1. Create `src/main/java/aoc/day02/Day02.java` and make sure it `implements Day`
1. Create `src/main/test/aoc/day02/Day02Test.java` and use the sample input/output from adventofcode.com to write tests (they will initially fail). Use `Day01Test.java` as an example.
1. Implement `Day02.part1()` until the tests pass (Test Driven Development!). You can run `./gradlew --continuous check` to have the tests run every time you save your code.
1. When the example input passes, get your input from adventofcode.com and save it as `src/main/resources/day02.txt`
1. Run `./gradlew run --args="2"` to get your output.
    - Notice the day number ("2") is passed as an argument.
    - If you are working on the puzzle for today (e.g. it is December 3rd and you are working on Day03), then you can just run `./gradlew run`.
1. Check your solution on adventofcode.com!

### Part 2

1. Add new tests for part 2 to `Day02Test.java` using the sample input/output from adventofcode.com
1. Implement `Day02.part2()` until the tests pass.
1. When the example input passes, run `./gradlew run --args="2 2"` to get your output.
    - Notice the second argument to the script is the part number. It defaults to 1, so now you have to pass it as 2.
1. Check your solution on adventofcode.com!

## Other ways to run the app

### VSCode

If you are using VSCode, this project comes with a launch template that will prompt you for arguments. Enter just the day (to run part 1) or the day and part to run part 2.

- If you want to run Day 3 part 1, just type `3`
- If you want to run Day 4 part 2, type `4 2`

### Per-day main method

If you want to run a day directly (e.g. run `Day01.java`) you can just add a `main` method to your `Day01` class:

```java
public static void main(String[] args) {
    App.runPart1ForDay(1);
}
```

Call `runPart1ForDay` for part 2. **Make sure you specify the correct day number (`1` in the example above)!**

## Working on previous years

The `App` calls `defaultYear()` which defaults to the current year during December, and the previous year otherwise. If you want to use this starter to work on another year, just hard code the value of `year` in `App.main` to return the year you want.
