package aoc.day01;

import aoc.Day;

import java.util.List;

public class Day01 extends Day {

    static {
        currentDay = new Day01();
    }

    public Day01() {
        super(1);
    }

    @Override
    public String part1(List<String> input) {
        return input.isEmpty() ? "" : input.get(0);
    }

    @Override
    public String part2(List<String> input) {
        return input.isEmpty() ? "" : input.get(0);
    }

}
