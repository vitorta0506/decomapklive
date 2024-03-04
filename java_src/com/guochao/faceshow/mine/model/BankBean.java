package com.guochao.faceshow.mine.model;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class BankBean implements Serializable {
    private int bank_id;
    private String bank_name;
    private String logo;

    public BankBean() {
    }

    public int getBank_id() {
        return this.bank_id;
    }

    public String getBank_name() {
        return this.bank_name;
    }

    public String getLogo() {
        return this.logo;
    }

    public void setBank_id(int i9) {
        this.bank_id = i9;
    }

    public void setBank_name(String str) {
        this.bank_name = str;
    }

    public void setLogo(String str) {
        this.logo = str;
    }

    public String toString() {
        return "BankBean{bank_id=" + this.bank_id + ", bank_name='" + this.bank_name + "', logo='" + this.logo + "'}";
    }

    public BankBean(int i9, String str, String str2) {
        this.bank_id = i9;
        this.bank_name = str;
        this.logo = str2;
    }
}
