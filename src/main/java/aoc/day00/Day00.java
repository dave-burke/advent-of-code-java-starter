package aoc.day00;

import aoc.Day;
import aoc.Utils;
import java.util.List;

public class Day00 implements Day {

    @Override
    public String part1(String input) {
        List<String> lines = Utils.splitLines(input);
        return lines.isEmpty() ? "" : lines.get(0);
    }

    @Override
    public String part2(String input) {
        return input;
    }
}
