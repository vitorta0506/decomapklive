package com.guochao.faceshow.mine.model;
/* loaded from: classes4.dex */
public class WeChatPayBean {
    private String appid;
    private String noncestr;
    private String partnerid;
    private String prepayid;
    private String sign;
    private long timestamp;

    public WeChatPayBean() {
    }

    public String getAppid() {
        return this.appid;
    }

    public String getNoncestr() {
        return this.noncestr;
    }

    public String getPartnerid() {
        return this.partnerid;
    }

    public String getPrepayid() {
        return this.prepayid;
    }

    public String getSign() {
        return this.sign;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public void setAppid(String str) {
        this.appid = str;
    }

    public void setNoncestr(String str) {
        this.noncestr = str;
    }

    public void setPartnerid(String str) {
        this.partnerid = str;
    }

    public void setPrepayid(String str) {
        this.prepayid = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setTimestamp(long j10) {
        this.timestamp = j10;
    }

    public String toString() {
        return "WeChatPayBean{appid='" + this.appid + "', noncestr='" + this.noncestr + "', partnerid='" + this.partnerid + "', prepayid='" + this.prepayid + "', sign='" + this.sign + "', timestamp=" + this.timestamp + '}';
    }

    public WeChatPayBean(String str, String str2, String str3, String str4, String str5, long j10) {
        this.appid = str;
        this.noncestr = str2;
        this.partnerid = str3;
        this.prepayid = str4;
        this.sign = str5;
        this.timestamp = j10;
    }
}
