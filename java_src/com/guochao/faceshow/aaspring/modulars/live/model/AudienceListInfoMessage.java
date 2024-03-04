package com.guochao.faceshow.aaspring.modulars.live.model;

import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.beans.AudienceInformation;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class AudienceListInfoMessage extends BaseLiveMessage {
    protected List<AudienceInformation> audienceList;
    protected String fcoin;
    protected String isLockMicrophone;
    protected String likeNum;
    protected String liveId;
    protected String livePkState;
    protected String liveType;
    protected String matchType;
    protected String microphoneMode;
    protected String onlineNum;
    protected String shareUrl;
    protected String voiceStatus;
    @SerializedName(alternate = {"videoSwitch"}, value = NotifyType.SOUND)
    private int videoSwitch = 0;
    @SerializedName(alternate = {"videoOpen"}, value = NotifyType.VIBRATE)
    private int videoOpen = 0;
    @SerializedName(alternate = {"screenShotSwitch"}, value = "sss")
    private int screenShotSwitch = 1;

    public List<AudienceInformation> getAudienceList() {
        if (this.audienceList == null) {
            this.audienceList = new ArrayList();
        }
        return this.audienceList;
    }

    public String getFcoin() {
        return this.fcoin;
    }

    public String getIsLockMicrophone() {
        return this.isLockMicrophone;
    }

    public String getLikeNum() {
        return this.likeNum;
    }

    public String getLiveId() {
        return this.liveId;
    }

    public String getLivePkState() {
        return this.livePkState;
    }

    public String getLiveType() {
        return this.liveType;
    }

    public String getMatchType() {
        return this.matchType;
    }

    public String getMicrophoneMode() {
        return this.microphoneMode;
    }

    public String getOnlineNum() {
        return this.onlineNum;
    }

    public int getScreenShotSwitch() {
        return this.screenShotSwitch;
    }

    public String getShareUrl() {
        return this.shareUrl;
    }

    public int getVideoOpen() {
        return this.videoOpen;
    }

    public int getVideoSwitch() {
        return this.videoSwitch;
    }

    public String getVoiceStatus() {
        return this.voiceStatus;
    }

    public void setAudienceList(List<AudienceInformation> list) {
        this.audienceList = list;
    }

    public void setFcoin(String str) {
        this.fcoin = str;
    }

    public void setIsLockMicrophone(String str) {
        this.isLockMicrophone = str;
    }

    public void setLikeNum(String str) {
        this.likeNum = str;
    }

    public void setLiveId(String str) {
        this.liveId = str;
    }

    public void setLivePkState(String str) {
        this.livePkState = str;
    }

    public void setLiveType(String str) {
        this.liveType = str;
    }

    public void setMatchType(String str) {
        this.matchType = str;
    }

    public void setMicrophoneMode(String str) {
        this.microphoneMode = str;
    }

    public void setOnlineNum(String str) {
        this.onlineNum = str;
    }

    public void setScreenShotSwitch(int i9) {
        this.screenShotSwitch = i9;
    }

    public void setShareUrl(String str) {
        this.shareUrl = str;
    }

    public void setVideoOpen(int i9) {
        this.videoOpen = i9;
    }

    public void setVideoSwitch(int i9) {
        this.videoSwitch = i9;
    }

    public void setVoiceStatus(String str) {
        this.voiceStatus = str;
    }
}
