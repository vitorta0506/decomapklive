package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class UploadedVideoResult implements Parcelable {
    public static final Parcelable.Creator<UploadedVideoResult> CREATOR = new Parcelable.Creator<UploadedVideoResult>() { // from class: com.guochao.faceshow.aaspring.beans.UploadedVideoResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UploadedVideoResult createFromParcel(Parcel parcel) {
            return new UploadedVideoResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UploadedVideoResult[] newArray(int i9) {
            return new UploadedVideoResult[i9];
        }
    };
    private String img;
    private int isLottery;
    private String lotteryUrl;
    private String prospectus;
    private String shortUrl;
    private int videoId;

    protected UploadedVideoResult(Parcel parcel) {
        this.img = parcel.readString();
        this.shortUrl = parcel.readString();
        this.videoId = parcel.readInt();
        this.isLottery = parcel.readInt();
        this.prospectus = parcel.readString();
        this.lotteryUrl = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getImg() {
        return this.img;
    }

    public int getIsLottery() {
        return this.isLottery;
    }

    public String getLotteryUrl() {
        return this.lotteryUrl;
    }

    public String getProspectus() {
        return this.prospectus;
    }

    public String getShortUrl() {
        return this.shortUrl;
    }

    public int getVideoId() {
        return this.videoId;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setIsLottery(int i9) {
        this.isLottery = i9;
    }

    public void setLotteryUrl(String str) {
        this.lotteryUrl = str;
    }

    public void setProspectus(String str) {
        this.prospectus = str;
    }

    public void setShortUrl(String str) {
        this.shortUrl = str;
    }

    public void setVideoId(int i9) {
        this.videoId = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.img);
        parcel.writeString(this.shortUrl);
        parcel.writeInt(this.videoId);
        parcel.writeInt(this.isLottery);
        parcel.writeString(this.prospectus);
        parcel.writeString(this.lotteryUrl);
    }
}
