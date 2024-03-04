package com.guochao.faceshow.aaspring.modulars.live.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import java.util.List;
/* loaded from: classes3.dex */
public class LiveMicApplyResult implements Parcelable {
    public static final Parcelable.Creator<LiveMicApplyResult> CREATOR = new Parcelable.Creator<LiveMicApplyResult>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.LiveMicApplyResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveMicApplyResult createFromParcel(Parcel parcel) {
            return new LiveMicApplyResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveMicApplyResult[] newArray(int i9) {
            return new LiveMicApplyResult[i9];
        }
    };
    private String audienceId;
    private String fcoin;
    private String isLockMicrophone;
    private String likeNum;
    private String liveId;
    private String liveType;
    private List<LiveInfoMatchBean> matchList;
    private String microphoneMode;
    private String onlineNum;
    private String pushUrl;
    private String selectTime;
    private String shareUrl;
    private String streamId;
    private String voiceStatus;

    public LiveMicApplyResult() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAudienceId() {
        return this.audienceId;
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

    public String getLiveType() {
        return this.liveType;
    }

    public List<LiveInfoMatchBean> getMatchList() {
        return this.matchList;
    }

    public String getMicrophoneMode() {
        return this.microphoneMode;
    }

    public String getOnlineNum() {
        return this.onlineNum;
    }

    public String getPushUrl() {
        return this.pushUrl;
    }

    public String getSelectTime() {
        return this.selectTime;
    }

    public String getShareUrl() {
        return this.shareUrl;
    }

    public String getStreamId() {
        return this.streamId;
    }

    public String getVoiceStatus() {
        return this.voiceStatus;
    }

    public void setAudienceId(String str) {
        this.audienceId = str;
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

    public void setLiveType(String str) {
        this.liveType = str;
    }

    public void setMatchList(List<LiveInfoMatchBean> list) {
        this.matchList = list;
    }

    public void setMicrophoneMode(String str) {
        this.microphoneMode = str;
    }

    public void setOnlineNum(String str) {
        this.onlineNum = str;
    }

    public void setPushUrl(String str) {
        this.pushUrl = str;
    }

    public void setSelectTime(String str) {
        this.selectTime = str;
    }

    public void setShareUrl(String str) {
        this.shareUrl = str;
    }

    public void setStreamId(String str) {
        this.streamId = str;
    }

    public void setVoiceStatus(String str) {
        this.voiceStatus = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.pushUrl);
        parcel.writeString(this.audienceId);
        parcel.writeTypedList(this.matchList);
        parcel.writeString(this.isLockMicrophone);
        parcel.writeString(this.streamId);
        parcel.writeString(this.onlineNum);
        parcel.writeString(this.fcoin);
        parcel.writeString(this.microphoneMode);
        parcel.writeString(this.likeNum);
        parcel.writeString(this.voiceStatus);
        parcel.writeString(this.liveType);
        parcel.writeString(this.shareUrl);
        parcel.writeString(this.liveId);
        parcel.writeString(this.selectTime);
    }

    protected LiveMicApplyResult(Parcel parcel) {
        this.pushUrl = parcel.readString();
        this.audienceId = parcel.readString();
        this.matchList = parcel.createTypedArrayList(LiveInfoMatchBean.CREATOR);
        this.isLockMicrophone = parcel.readString();
        this.streamId = parcel.readString();
        this.onlineNum = parcel.readString();
        this.fcoin = parcel.readString();
        this.microphoneMode = parcel.readString();
        this.likeNum = parcel.readString();
        this.voiceStatus = parcel.readString();
        this.liveType = parcel.readString();
        this.shareUrl = parcel.readString();
        this.liveId = parcel.readString();
        this.selectTime = parcel.readString();
    }
}
