package com.tcmkb.model;

import java.util.Date;

public class Users {
    private Integer id;

    private String account;

    private String pass;

    private String email;

    private Long mobile;

    private Short groupId;

    private String regip;

    private Integer score;

    private String realName;

    private String affiliation;

    private String job;

    private String icon;

    private Integer createTime;

    private Integer createIp;

    private Boolean createOs;

    private Integer loginTime;

    private Integer loginIp;

    private Boolean loginOs;

    private Date dt;

    private Boolean status;

    private Boolean emailStatus;

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Long getMobile() {
        return mobile;
    }

    public void setMobile(Long mobile) {
        this.mobile = mobile;
    }

    public Short getGroupId() {
        return groupId;
    }

    public void setGroupId(Short groupId) {
        this.groupId = groupId;
    }

    public String getRegip() {
        return regip;
    }

    public void setRegip(String regip) {
        this.regip = regip == null ? null : regip.trim();
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName == null ? null : realName.trim();
    }

    public String getAffiliation() {
        return affiliation;
    }

    public void setAffiliation(String affiliation) {
        this.affiliation = affiliation == null ? null : affiliation.trim();
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job == null ? null : job.trim();
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon == null ? null : icon.trim();
    }

    public Integer getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Integer createTime) {
        this.createTime = createTime;
    }

    public Integer getCreateIp() {
        return createIp;
    }

    public void setCreateIp(Integer createIp) {
        this.createIp = createIp;
    }

    public Boolean getCreateOs() {
        return createOs;
    }

    public void setCreateOs(Boolean createOs) {
        this.createOs = createOs;
    }

    public Integer getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Integer loginTime) {
        this.loginTime = loginTime;
    }

    public Integer getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(Integer loginIp) {
        this.loginIp = loginIp;
    }

    public Boolean getLoginOs() {
        return loginOs;
    }

    public void setLoginOs(Boolean loginOs) {
        this.loginOs = loginOs;
    }

    public Date getDt() {
        return dt;
    }

    public void setDt(Date dt) {
        this.dt = dt;
    }

    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public Boolean getEmailStatus() {
        return emailStatus;
    }

    public void setEmailStatus(Boolean emailStatus) {
        this.emailStatus = emailStatus;
    }

    @Override
    public String toString() {
        return "Users{" +
                "id=" + id +
                ", account='" + account + '\'' +
                ", pass='" + pass + '\'' +
                ", email='" + email + '\'' +
                ", mobile=" + mobile +
                ", groupId=" + groupId +
                ", regip='" + regip + '\'' +
                ", score=" + score +
                ", realName='" + realName + '\'' +
                ", affiliation='" + affiliation + '\'' +
                ", job='" + job + '\'' +
                ", icon='" + icon + '\'' +
                ", createTime=" + createTime +
                ", createIp=" + createIp +
                ", createOs=" + createOs +
                ", loginTime=" + loginTime +
                ", loginIp=" + loginIp +
                ", loginOs=" + loginOs +
                ", dt=" + dt +
                ", status=" + status +
                ", emailStatus=" + emailStatus +
                '}';
    }
}