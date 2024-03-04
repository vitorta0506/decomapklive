package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class LookVideBean implements Parcelable {
    public static final Parcelable.Creator<LookVideBean> CREATOR = new Parcelable.Creator<LookVideBean>() { // from class: com.guochao.faceshow.aaspring.beans.LookVideBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LookVideBean createFromParcel(Parcel parcel) {
            return new LookVideBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LookVideBean[] newArray(int i9) {
            return new LookVideBean[i9];
        }
    };
    private int attention;
    private String browseCount;
    private int height;
    private int hisself;
    private int imStatus;
    private String likeCount;
    private int likeStatus;
    private String musicName;
    private String musicUrl;
    private int privat;
    private String shortUrl;
    private int superLikeToday;
    private String userId;
    private String userNick;
    private String videoId;
    private String videoImg;
    private String videoUrl;
    private int width;

    public LookVideBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAttention() {
        return this.attention;
    }

    public String getBrowseCount() {
        return this.browseCount;
    }

    public int getHeight() {
        return this.height;
    }

    public int getHisself() {
        return this.hisself;
    }

    public int getImStatus() {
        return this.imStatus;
    }

    public String getLikeCount() {
        return this.likeCount;
    }

    public int getLikeStatus() {
        return this.likeStatus;
    }

    public String getMusicName() {
        return this.musicName;
    }

    public String getMusicUrl() {
        return this.musicUrl;
    }

    public int getPrivat() {
        return this.privat;
    }

    public String getShortUrl() {
        return this.shortUrl;
    }

    public int getSuperLikeToday() {
        return this.superLikeToday;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getUserNick() {
        return this.userNick;
    }

    public String getVideoId() {
        return this.videoId;
    }

    public String getVideoImg() {
        return this.videoImg;
    }

    public String getVideoUrl() {
        return this.videoUrl;
    }

    public int getWidth() {
        return this.width;
    }

    public void readFromParcel(Parcel parcel) {
        this.userId = parcel.readString();
        this.userNick = parcel.readString();
        this.hisself = parcel.readInt();
        this.videoId = parcel.readString();
        this.videoUrl = parcel.readString();
        this.shortUrl = parcel.readString();
        this.videoImg = parcel.readString();
        this.musicUrl = parcel.readString();
        this.musicName = parcel.readString();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.privat = parcel.readInt();
        this.browseCount = parcel.readString();
        this.likeCount = parcel.readString();
        this.attention = parcel.readInt();
        this.likeStatus = parcel.readInt();
        this.superLikeToday = parcel.readInt();
        this.imStatus = parcel.readInt();
    }

    public void setAttention(int i9) {
        this.attention = i9;
    }

    public void setBrowseCount(String str) {
        this.browseCount = str;
    }

    public void setHeight(int i9) {
        this.height = i9;
    }

    public void setHisself(int i9) {
        this.hisself = i9;
    }

    public void setImStatus(int i9) {
        this.imStatus = i9;
    }

    public void setLikeCount(String str) {
        this.likeCount = str;
    }

    public void setLikeStatus(int i9) {
        this.likeStatus = i9;
    }

    public void setMusicName(String str) {
        this.musicName = str;
    }

    public void setMusicUrl(String str) {
        this.musicUrl = str;
    }

    public void setPrivat(int i9) {
        this.privat = i9;
    }

    public void setShortUrl(String str) {
        this.shortUrl = str;
    }

    public void setSuperLikeToday(int i9) {
        this.superLikeToday = i9;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserNick(String str) {
        this.userNick = str;
    }

    public void setVideoId(String str) {
        this.videoId = str;
    }

    public void setVideoImg(String str) {
        this.videoImg = str;
    }

    public void setVideoUrl(String str) {
        this.videoUrl = str;
    }

    public void setWidth(int i9) {
        this.width = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.userId);
        parcel.writeString(this.userNick);
        parcel.writeInt(this.hisself);
        parcel.writeString(this.videoId);
        parcel.writeString(this.videoUrl);
        parcel.writeString(this.shortUrl);
        parcel.writeString(this.videoImg);
        parcel.writeString(this.musicUrl);
        parcel.writeString(this.musicName);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeInt(this.privat);
        parcel.writeString(this.browseCount);
        parcel.writeString(this.likeCount);
        parcel.writeInt(this.attention);
        parcel.writeInt(this.likeStatus);
        parcel.writeInt(this.superLikeToday);
        parcel.writeInt(this.imStatus);
    }

    protected LookVideBean(Parcel parcel) {
        this.userId = parcel.readString();
        this.userNick = parcel.readString();
        this.hisself = parcel.readInt();
        this.videoId = parcel.readString();
        this.videoUrl = parcel.readString();
        this.shortUrl = parcel.readString();
        this.videoImg = parcel.readString();
        this.musicUrl = parcel.readString();
        this.musicName = parcel.readString();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.privat = parcel.readInt();
        this.browseCount = parcel.readString();
        this.likeCount = parcel.readString();
        this.attention = parcel.readInt();
        this.likeStatus = parcel.readInt();
        this.superLikeToday = parcel.readInt();
        this.imStatus = parcel.readInt();
    }
}
