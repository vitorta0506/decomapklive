package com.guochao.faceshow.aaspring.modulars.live.model;

import com.google.gson.annotations.SerializedName;
/* loaded from: classes3.dex */
public class PkResultMessage extends BaseLiveMessage {
    private String fcoin;
    private String otherFcoin;
    private boolean punishment;
    @SerializedName("pkResult")
    private int result;

    public String getFcoin() {
        return this.fcoin;
    }

    public String getOtherFcoin() {
        return this.otherFcoin;
    }

    public int getResult() {
        return this.result;
    }

    public boolean isPunishment() {
        return this.punishment;
    }

    public void setFcoin(String str) {
        this.fcoin = str;
    }

    public void setOtherFcoin(String str) {
        this.otherFcoin = str;
    }

    public void setPunishment(boolean z10) {
        this.punishment = z10;
    }

    public void setResult(int i9) {
        this.result = i9;
    }
}
