package com.tcmkb.utils;

public class IndexResult {
    private String err_no;
    private String err_msg;

    public String getErr_no() {
        return err_no;
    }

    public void setErr_no(String err_no) {
        this.err_no = err_no;
    }

    public String getErr_msg() {
        return err_msg;
    }

    public void setErr_msg(String err_msg) {
        this.err_msg = err_msg;
    }

    @Override
    public String toString() {
        return "IndexResult{" +
                "err_no='" + err_no + '\'' +
                ", err_msg='" + err_msg + '\'' +
                '}';
    }
}
