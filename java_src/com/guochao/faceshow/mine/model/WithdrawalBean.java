package com.guochao.faceshow.mine.model;
/* loaded from: classes4.dex */
public class WithdrawalBean {
    private int F;
    public int currency;
    public float price;
    private double price_America;
    private int price_China;
    private int withdraw_id;

    public WithdrawalBean() {
    }

    public int getF() {
        return this.F;
    }

    public double getPrice_America() {
        return this.price_America;
    }

    public int getPrice_China() {
        return this.price_China;
    }

    public int getWithdraw_id() {
        return this.withdraw_id;
    }

    public void setF(int i9) {
        this.F = i9;
    }

    public void setPrice_America(double d10) {
        this.price_America = d10;
    }

    public void setPrice_China(int i9) {
        this.price_China = i9;
    }

    public void setWithdraw_id(int i9) {
        this.withdraw_id = i9;
    }

    public String toString() {
        return "WithdrawalBean{withdraw_id=" + this.withdraw_id + ", price_America=" + this.price_America + ", price_China=" + this.price_China + ", F=" + this.F + '}';
    }

    public WithdrawalBean(int i9, double d10, int i10, int i11) {
        this.withdraw_id = i9;
        this.price_America = d10;
        this.price_China = i10;
        this.F = i11;
    }
}
