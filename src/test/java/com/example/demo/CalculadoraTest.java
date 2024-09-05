package com.example.demo;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.example.Calculadora;

public class CalculadoraTest {

	private Calculadora calculadora;

	@BeforeEach
	void setUp() {
		calculadora = new Calculadora();
	}

	@Test
	void testAdicionar() {
		assertEquals(5, calculadora.adicionar(2, 3), "2 + 3 deve ser 5");
	}

	@Test
	void testSubtrair() {
		assertEquals(1, calculadora.subtrair(3, 2), "3 - 2 deve ser 1");
	}

	@Test
	void testSubtrairComValorNegativo() {
		assertEquals(-1, calculadora.subtrair(2, 3), "2 - 3 deve ser -1");
	}

}
