package aoc.day01;

import aoc.Day;

import java.util.List;

public class Day01 implements Day {

    @Override
    public String exec(List<String> input) {
        return input.isEmpty() ? "" : input.get(0);
    }
}
