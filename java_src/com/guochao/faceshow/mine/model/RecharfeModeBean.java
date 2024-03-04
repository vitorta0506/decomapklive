package com.guochao.faceshow.mine.model;

import android.text.TextUtils;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes4.dex */
public class RecharfeModeBean {
    private int awardNumber;
    public String img;
    public int isActivity;
    private int newNumber;
    private int number;
    private int preferenCount;
    private int preferences;
    private String price;
    private double price_America;
    private double price_China;
    private String sign;

    public RecharfeModeBean() {
    }

    private String getIntString(double d10) {
        String[] split = String.valueOf(d10).split("\\.");
        try {
            if (split.length > 1 && Integer.parseInt(split[1]) == 0) {
                return split[0];
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return String.valueOf(d10);
    }

    public int getAwardNumber() {
        return this.awardNumber;
    }

    @NotNull
    public String getDefaultPrice() {
        String str = PhoneUtils.isLocalChina() ? "￥" : "US$";
        if (PhoneUtils.isLocalChina()) {
            return str + getIntString(this.price_China);
        }
        return str + getIntString(this.price_America);
    }

    public int getNewNumber() {
        return this.newNumber;
    }

    public int getNumber() {
        return this.number;
    }

    public int getPreferenCount() {
        return this.preferenCount;
    }

    public int getPreferences() {
        return this.preferences;
    }

    public String getPrice() {
        return this.price;
    }

    public double getPrice_America() {
        return this.price_America;
    }

    public double getPrice_China() {
        return this.price_China;
    }

    public String getSign() {
        return this.sign;
    }

    public void setAwardNumber(int i9) {
        this.awardNumber = i9;
    }

    public void setDefaultPrice() {
        if (TextUtils.isEmpty(this.price)) {
            this.price = getDefaultPrice();
        }
    }

    public void setNewNumber(int i9) {
        this.newNumber = i9;
    }

    public void setNumber(int i9) {
        this.number = i9;
    }

    public void setPreferenCount(int i9) {
        this.preferenCount = i9;
    }

    public void setPreferences(int i9) {
        this.preferences = i9;
    }

    public void setPrice(String str) {
        this.price = str;
    }

    public void setPrice_America(double d10) {
        this.price_America = d10;
    }

    public void setPrice_China(double d10) {
        this.price_China = d10;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public String toString() {
        return "RecharfeModeBean{sign='" + this.sign + "', number=" + this.number + ", price_America=" + this.price_America + ", price_China=" + this.price_China + '}';
    }

    public RecharfeModeBean(String str, int i9, double d10, double d11) {
        this.sign = str;
        this.number = i9;
        this.price_America = d10;
        this.price_China = d11;
    }
}
