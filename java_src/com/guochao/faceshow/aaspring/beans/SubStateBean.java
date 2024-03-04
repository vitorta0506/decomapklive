package com.guochao.faceshow.aaspring.beans;
/* loaded from: classes3.dex */
public class SubStateBean {
    private String orderId;
    private String purchaseToken;
    private String sign;
    private Integer subType;
    private int type;
    private String userId;

    public String getOrderId() {
        return this.orderId;
    }

    public String getPurchaseToken() {
        return this.purchaseToken;
    }

    public String getSign() {
        return this.sign;
    }

    public Integer getSubType() {
        return this.subType;
    }

    public int getType() {
        return this.type;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setOrderId(String str) {
        this.orderId = str;
    }

    public void setPurchaseToken(String str) {
        this.purchaseToken = str;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public void setSubType(Integer num) {
        this.subType = num;
    }

    public void setType(int i9) {
        this.type = i9;
    }

    public void setUserId(String str) {
        this.userId = str;
    }
}
