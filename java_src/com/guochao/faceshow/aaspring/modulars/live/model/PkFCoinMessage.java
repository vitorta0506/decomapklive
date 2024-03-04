package com.guochao.faceshow.aaspring.modulars.live.model;

import com.google.gson.annotations.SerializedName;
/* loaded from: classes3.dex */
public class PkFCoinMessage extends BaseLiveMessage {
    @SerializedName("fcoin")
    private long mFCoin;

    public long getFCoin() {
        return this.mFCoin;
    }

    public void setFCoin(long j10) {
        this.mFCoin = j10;
    }
}
