package com.guochao.faceshow.aaspring.beans;

import u7.c;
/* loaded from: classes3.dex */
public class GooglePlayPurchaseResult {

    /* renamed from: id  reason: collision with root package name */
    private int f16310id;
    private int scene = 0;
    private String signture;
    private String signtureData;
    private long timeStamp;
    private String userId;

    public int getId() {
        return this.f16310id;
    }

    public int getScene() {
        return this.scene;
    }

    public String getSignture() {
        return this.signture;
    }

    public String getSigntureData() {
        return this.signtureData;
    }

    public long getTimeStamp() {
        return this.timeStamp;
    }

    public String getUserId() {
        return this.userId;
    }

    public boolean isTimeout() {
        boolean z10 = this.timeStamp > 0 && ((float) (System.currentTimeMillis() - this.timeStamp)) > 3.024E8f;
        if (z10) {
            c.c().a(this.userId, this.signture, this.signtureData);
        }
        return z10;
    }

    public void setId(int i9) {
        this.f16310id = i9;
    }

    public void setScene(int i9) {
        this.scene = i9;
    }

    public void setSignture(String str) {
        this.signture = str;
    }

    public void setSigntureData(String str) {
        this.signtureData = str;
    }

    public void setTimeStamp(long j10) {
        this.timeStamp = j10;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public String toString() {
        return "GooglePlayPurchaseResult{id=" + this.f16310id + ", userId='" + this.userId + "', signtureData='" + this.signtureData + "', signture='" + this.signture + "', timeStamp=" + this.timeStamp + ", scene=" + this.scene + '}';
    }
}
