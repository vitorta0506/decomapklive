package com.guochao.faceshow.aaspring.beans;
/* loaded from: classes3.dex */
public class ActivityGiftEntity {
    private int duringNum;
    private int giftId;
    private String giftUrl;
    private int nowNum;
    private int rank;

    public int getDuringNum() {
        return this.duringNum;
    }

    public int getGiftId() {
        return this.giftId;
    }

    public String getGiftUrl() {
        return this.giftUrl;
    }

    public int getRank() {
        return this.rank;
    }

    public int getSendCount() {
        return this.nowNum;
    }

    public void setDuringNum(int i9) {
        this.duringNum = i9;
    }

    public void setGiftId(int i9) {
        this.giftId = i9;
    }

    public void setGiftUrl(String str) {
        this.giftUrl = str;
    }

    public void setRank(int i9) {
        this.rank = i9;
    }

    public void setSendCount(int i9) {
        this.nowNum = i9;
    }
}
