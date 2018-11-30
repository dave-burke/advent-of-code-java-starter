package aoc.day01;

import org.junit.Test;

import java.util.Collections;
import java.util.List;

import static org.junit.Assert.assertEquals;

public class Day01Test {

    @Test
    public void testDay01(){
        // Given
        List<String> input = Collections.singletonList("test");

        // When
        String result = new Day01().exec(input);

        // Then
        assertEquals(input.get(0), result);
    }
}
