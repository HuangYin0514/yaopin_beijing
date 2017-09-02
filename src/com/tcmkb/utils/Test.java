package com.tcmkb.utils;

import java.io.File;

public class Test {
  public static void main(String[] args) {
    File file=new File("C:/users/wangwd/desktop/../");
    System.out.println(file.getAbsolutePath());
  }
}
