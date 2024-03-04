package com.guochao.faceshow.mine.model;
/* loaded from: classes4.dex */
public class RecordDetails {
    private int account;
    private String accountUserName;
    private int applyState;
    private String createTime;
    private String gname;
    private int isType;
    private int payState;
    private int price;
    private int types;
    private int userId;
    private String userName;

    public RecordDetails() {
    }

    public int getAccount() {
        return this.account;
    }

    public String getAccountUserName() {
        return this.accountUserName;
    }

    public int getApplyState() {
        return this.applyState;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public String getGname() {
        return this.gname;
    }

    public int getIsType() {
        return this.isType;
    }

    public int getPayState() {
        return this.payState;
    }

    public int getPrice() {
        return this.price;
    }

    public int getTypes() {
        return this.types;
    }

    public int getUserId() {
        return this.userId;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setAccount(int i9) {
        this.account = i9;
    }

    public void setAccountUserName(String str) {
        this.accountUserName = str;
    }

    public void setApplyState(int i9) {
        this.applyState = i9;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setGname(String str) {
        this.gname = str;
    }

    public void setIsType(int i9) {
        this.isType = i9;
    }

    public void setPayState(int i9) {
        this.payState = i9;
    }

    public void setPrice(int i9) {
        this.price = i9;
    }

    public void setTypes(int i9) {
        this.types = i9;
    }

    public void setUserId(int i9) {
        this.userId = i9;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public String toString() {
        return "RecordDetails{types=" + this.types + ", accountUserName='" + this.accountUserName + "', createTime='" + this.createTime + "', price=" + this.price + ", gname='" + this.gname + "', userId=" + this.userId + ", isType=" + this.isType + ", account=" + this.account + ", userName='" + this.userName + "', applyState=" + this.applyState + ", payState=" + this.payState + '}';
    }

    public RecordDetails(int i9, String str, String str2, int i10, String str3, int i11, int i12, int i13, String str4, int i14, int i15) {
        this.types = i9;
        this.accountUserName = str;
        this.createTime = str2;
        this.price = i10;
        this.gname = str3;
        this.userId = i11;
        this.isType = i12;
        this.account = i13;
        this.userName = str4;
        this.applyState = i14;
        this.payState = i15;
    }
}
