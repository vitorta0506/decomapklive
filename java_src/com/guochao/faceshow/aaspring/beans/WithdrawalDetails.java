package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class WithdrawalDetails {
    private String account;
    private int amount_type;
    private List<Progress> auditProces;
    private String bankAddress;
    private String bankName;
    private String deduction;
    private String failReason;
    private String money;
    private String payTypeName;
    private int pay_type;
    private String payee;
    private String realName;
    private int speed;

    public String getAccount() {
        return this.account;
    }

    public int getAmount_type() {
        return this.amount_type;
    }

    public List<Progress> getAuditProces() {
        return this.auditProces;
    }

    public String getBankAddress() {
        return this.bankAddress;
    }

    public String getBankName() {
        return this.bankName;
    }

    public String getDeduction() {
        return this.deduction;
    }

    public String getFailReason() {
        return this.failReason;
    }

    public String getMoney() {
        return this.money;
    }

    public String getPayTypeName() {
        return this.payTypeName;
    }

    public int getPay_type() {
        return this.pay_type;
    }

    public String getPayee() {
        return this.payee;
    }

    public String getRealName() {
        return this.realName;
    }

    public int getSpeed() {
        return this.speed;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public void setAmount_type(int i9) {
        this.amount_type = i9;
    }

    public void setAuditProces(List<Progress> list) {
        this.auditProces = list;
    }

    public void setBankAddress(String str) {
        this.bankAddress = str;
    }

    public void setBankName(String str) {
        this.bankName = str;
    }

    public void setDeduction(String str) {
        this.deduction = str;
    }

    public void setFailReason(String str) {
        this.failReason = str;
    }

    public void setMoney(String str) {
        this.money = str;
    }

    public void setPayTypeName(String str) {
        this.payTypeName = str;
    }

    public void setPay_type(int i9) {
        this.pay_type = i9;
    }

    public void setPayee(String str) {
        this.payee = str;
    }

    public void setRealName(String str) {
        this.realName = str;
    }

    public void setSpeed(int i9) {
        this.speed = i9;
    }
}
