package com.guochao.faceshow.mine.model;

import com.guochao.faceshow.aaspring.beans.UserVipData;
/* loaded from: classes4.dex */
public class ContributionBean {
    private String countryFlag;
    private String img;
    private String nick_name;
    private int sum;
    private int totalPrice;
    private UserVipData userVipMsg;
    public String user_id;

    public ContributionBean(String str, int i9, String str2, String str3, int i10) {
        this.img = str;
        this.totalPrice = i9;
        this.user_id = str2;
        this.nick_name = str3;
        this.sum = i10;
    }

    public String getCountryFlag() {
        return this.countryFlag;
    }

    public String getImg() {
        return this.img;
    }

    public String getNick_name() {
        return this.nick_name;
    }

    public int getSum() {
        return this.sum;
    }

    public int getTotalPrice() {
        return this.totalPrice;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    public String getUser_id() {
        return this.user_id;
    }

    public void setCountryFlag(String str) {
        this.countryFlag = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setNick_name(String str) {
        this.nick_name = str;
    }

    public void setSum(int i9) {
        this.sum = i9;
    }

    public void setTotalPrice(int i9) {
        this.totalPrice = i9;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    public void setUser_id(String str) {
        this.user_id = str;
    }

    public String toString() {
        return "ContributionBean{img='" + this.img + "', totalPrice=" + this.totalPrice + ", user_id=" + this.user_id + ", nick_name='" + this.nick_name + "', sum=" + this.sum + '}';
    }

    public ContributionBean() {
    }
}
