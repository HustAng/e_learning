package com.ang.elearning.serviceTest;

import static org.junit.Assert.*;

import org.apache.shiro.crypto.hash.SimpleHash;

enum Type{
}
public class Test {

	@org.junit.Test
	public void test() {
		
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
