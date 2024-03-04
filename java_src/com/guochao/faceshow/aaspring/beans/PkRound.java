package com.guochao.faceshow.aaspring.beans;

import com.google.gson.annotations.SerializedName;
/* loaded from: classes3.dex */
public class PkRound {
    @SerializedName("pkingEndTime")
    private long pkIngEndTime;
    private long pkPunishEndTime;
    private long selectTime;

    public long getPkIngEndTime() {
        return this.pkIngEndTime;
    }

    public long getPkPunishEndTime() {
        return this.pkPunishEndTime;
    }

    public long getSelectTime() {
        return this.selectTime;
    }

    public void setPkIngEndTime(long j10) {
        this.pkIngEndTime = j10;
    }

    public void setPkPunishEndTime(long j10) {
        this.pkPunishEndTime = j10;
    }

    public void setSelectTime(long j10) {
        this.selectTime = j10;
    }
}
