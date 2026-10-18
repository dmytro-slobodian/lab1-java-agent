package com.lab1;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

class AppTest {
    @Test
    void messageReturnsHelloWorld() {
        assertEquals("Hello, World!", App.message());
    }
}