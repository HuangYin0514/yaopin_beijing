package com.tcmkb.model;

public class UsersLogLogin {
    private Integer id;

    private String account;

    private String pass;

    private Integer loginIp;

    private Integer loginTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account == null ? null : account.trim();
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass == null ? null : pass.trim();
    }

    public Integer getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(Integer loginIp) {
        this.loginIp = loginIp;
    }

    public Integer getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Integer loginTime) {
        this.loginTime = loginTime;
    }
}