package com.tcmkb.base.aspects;

import org.aspectj.lang.ProceedingJoinPoint;

public class AspectTest {
  public void before(){
    System.out.println("before execution");
  }
  public Object around(ProceedingJoinPoint joinPoint){
    try {
      return joinPoint.proceed();
    } catch (Throwable e) {
      throw new RuntimeException(e);
    }
  }
  public void after(){
    System.out.println("after execution");
  }
}
