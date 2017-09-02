package com.tcmkb.utils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUitl {
  public static String camelStyle(boolean capital,String str){
    List<String> toBeReplace=new ArrayList<String>();
    str=str.toLowerCase();
    
    Pattern p=Pattern.compile("_[a-z0-9]");
    Matcher matcher = p.matcher(str);
    while(matcher.find()){
      toBeReplace.add(matcher.group());
    }
    if(!toBeReplace.isEmpty()){
      for(String x:toBeReplace){
        String x1=x.substring(1).toUpperCase();
        str=str.replaceFirst(x, x1);
      }
    }
    if(capital){
      str=str.substring(0, 1).toUpperCase()+str.substring(1);
    }
    return str;
  }
  
  public static void main(String[] args) {
    List str=Arrays.asList("users_log_action","create_name","create_ip","create_time","asthma_english_journals","clinic_jianbie","already_read","asthma_journals","clinic_xtpj","case_record","areas","users_roles","gastritis_diagnosis_treatment_standard","asthma_evaluation_diagnosis_treatment","asthma_traditional_chinese_medicine","email_status","create_os","users_groups");
    
  }
}
