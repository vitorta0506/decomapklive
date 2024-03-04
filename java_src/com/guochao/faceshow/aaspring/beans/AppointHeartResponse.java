package com.guochao.faceshow.aaspring.beans;
/* loaded from: classes3.dex */
public class AppointHeartResponse {
    private int code;
    private String msg;
    private AppointHeartBean result;

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public AppointHeartBean getResult() {
        return this.result;
    }

    public void setCode(int i9) {
        this.code = i9;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setResult(AppointHeartBean appointHeartBean) {
        this.result = appointHeartBean;
    }
}
