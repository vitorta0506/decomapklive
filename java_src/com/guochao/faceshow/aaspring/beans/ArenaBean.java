package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class ArenaBean {
    private long arenaDurationTime;
    private long arenaPunishmentDurationTime;
    private List<String> introductionToPlay;
    private long selectTime;
    private int surplusAdmitDefeatNum;

    public int getAdmitDefeatNum() {
        return this.surplusAdmitDefeatNum;
    }

    public long getArenaDurationTime() {
        return this.arenaDurationTime;
    }

    public long getArenaPunishmentDurationTime() {
        return this.arenaPunishmentDurationTime;
    }

    public List<String> getIntroductionToPlay() {
        return this.introductionToPlay;
    }

    public long getSelectTime() {
        return this.selectTime;
    }

    public void setAdmitDefeatNum(int i9) {
        this.surplusAdmitDefeatNum = i9;
    }

    public void setArenaDurationTime(long j10) {
        this.arenaDurationTime = j10;
    }

    public void setArenaPunishmentDurationTime(long j10) {
        this.arenaPunishmentDurationTime = j10;
    }

    public void setIntroductionToPlay(List<String> list) {
        this.introductionToPlay = list;
    }

    public void setSelectTime(long j10) {
        this.selectTime = j10;
    }
}
