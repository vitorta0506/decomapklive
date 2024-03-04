package com.guochao.faceshow.aaspring.beans;

import b8.e;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.utils.TimeUtil;
/* loaded from: classes3.dex */
public class LiveOperationVo {
    private int disableType;
    private int hour;
    private int liveFlag;
    private long mRestartLiveTimeStamp;
    private int reasonId;
    private String reasonMsg;
    private String reasonMsgLang;
    private long speechTimeStamp;

    private static long getEndTime(int i9) {
        long currentTimeMillis;
        long serverTimeDiff;
        switch (i9) {
            case 1:
                currentTimeMillis = System.currentTimeMillis() + 900000;
                serverTimeDiff = i.u().s().getServerTimeDiff();
                break;
            case 2:
                currentTimeMillis = System.currentTimeMillis() + 1800000;
                serverTimeDiff = i.u().s().getServerTimeDiff();
                break;
            case 3:
                currentTimeMillis = System.currentTimeMillis() + 3600000;
                serverTimeDiff = i.u().s().getServerTimeDiff();
                break;
            case 4:
                currentTimeMillis = System.currentTimeMillis() + 43200000;
                serverTimeDiff = i.u().s().getServerTimeDiff();
                break;
            case 5:
                currentTimeMillis = System.currentTimeMillis() + 86400000;
                serverTimeDiff = i.u().s().getServerTimeDiff();
                break;
            case 6:
                currentTimeMillis = System.currentTimeMillis() + 172800000;
                serverTimeDiff = i.u().s().getServerTimeDiff();
                break;
            case 7:
                currentTimeMillis = System.currentTimeMillis() + TimeUtil.MONTH;
                serverTimeDiff = i.u().s().getServerTimeDiff();
                break;
            default:
                currentTimeMillis = System.currentTimeMillis() + 31536000000L;
                serverTimeDiff = i.u().s().getServerTimeDiff();
                break;
        }
        return currentTimeMillis + serverTimeDiff;
    }

    public static long getLiveBannedEndTime(int i9) {
        long endTime = getEndTime(i9);
        BaseApplication baseApplication = BaseApplication.getInstance();
        SpUtils.setLong(baseApplication, e.g().getUserId() + "LiveBannedEndTime", endTime);
        return endTime;
    }

    public static long getLocalLiveBannedEndTime() {
        BaseApplication baseApplication = BaseApplication.getInstance();
        return SpUtils.getLong(baseApplication, e.g().getUserId() + "LiveBannedEndTime");
    }

    public int getDisableType() {
        return this.disableType;
    }

    public int getHour() {
        return this.hour;
    }

    public int getLiveFlag() {
        return this.liveFlag;
    }

    public int getReasonId() {
        return this.reasonId;
    }

    public String getReasonMsg() {
        return this.reasonMsg;
    }

    public String getReasonMsgLang() {
        return this.reasonMsgLang;
    }

    public long getRestartLiveTimeStamp() {
        if (this.mRestartLiveTimeStamp == 0) {
            this.mRestartLiveTimeStamp = getLocalLiveBannedEndTime();
        }
        return this.mRestartLiveTimeStamp;
    }

    public long getSpeechTimeStamp() {
        return this.speechTimeStamp;
    }

    public void setDisableType(int i9) {
        this.disableType = i9;
    }

    public void setHour(int i9) {
        this.hour = i9;
    }

    public void setLiveFlag(int i9) {
        this.liveFlag = i9;
    }

    public void setReasonId(int i9) {
        this.reasonId = i9;
    }

    public void setReasonMsg(String str) {
        this.reasonMsg = str;
    }

    public void setReasonMsgLang(String str) {
        this.reasonMsgLang = str;
    }

    public void setRestartLiveTimeStamp(long j10) {
        this.mRestartLiveTimeStamp = j10;
    }

    public void setSpeechTimeStamp(long j10) {
        this.speechTimeStamp = j10;
    }
}
