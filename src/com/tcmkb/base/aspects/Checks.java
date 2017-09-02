package com.tcmkb.base.aspects;

import org.aspectj.lang.ProceedingJoinPoint;

public class Checks {
  public Object loginCheck(ProceedingJoinPoint joinPoint){
    System.out.println("checks;");
    Object args[]=joinPoint.getArgs();
    for(Object a:args){
      System.out.println(a.getClass());
    }
    try {
      return joinPoint.proceed();
    } catch (Throwable e) {
      e.printStackTrace();
    }
    return null;
  }
}
