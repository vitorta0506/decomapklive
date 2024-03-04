package com.guochao.faceshow.aaspring.beans;
/* loaded from: classes3.dex */
public class PurchaseStatus {
    private String orderId;
    private String purchaseToken;

    public PurchaseStatus(String str, String str2) {
        this.purchaseToken = str;
        this.orderId = str2;
    }

    public String getOrderId() {
        return this.orderId;
    }

    public String getPurchaseToken() {
        return this.purchaseToken;
    }

    public void setOrderId(String str) {
        this.orderId = str;
    }

    public void setPurchaseToken(String str) {
        this.purchaseToken = str;
    }
}
