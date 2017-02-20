package com.ang.elearning.serviceTest;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.apache.shiro.crypto.hash.SimpleHash;

public class Test {

	@org.junit.Test
	public void test() {
		ArrayList<String> list = new ArrayList<>();
		list.add("a");
	}

	@org.junit.Test
	public void testMD5() {
		String hashAlgorithmName = "MD5";
		Object credentials = "123456";
		Object salt = "teacher@163.com";
		int hashIterations = 1024;
		Object result = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations);
		System.out.println(result);

	}

}
