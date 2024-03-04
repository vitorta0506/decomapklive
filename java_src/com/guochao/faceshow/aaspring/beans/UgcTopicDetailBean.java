package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import p7.d;
import p7.g;
import p7.h;
/* loaded from: classes3.dex */
public class UgcTopicDetailBean implements Parcelable, h {
    public static final Parcelable.Creator<UgcTopicDetailBean> CREATOR = new Parcelable.Creator<UgcTopicDetailBean>() { // from class: com.guochao.faceshow.aaspring.beans.UgcTopicDetailBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UgcTopicDetailBean createFromParcel(Parcel parcel) {
            return new UgcTopicDetailBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UgcTopicDetailBean[] newArray(int i9) {
            return new UgcTopicDetailBean[i9];
        }
    };
    private String avatar;
    private String friendTopicId;
    private String friendTopicName;
    private int historyHot;
    private int hotNum;
    private int isRecommend;
    private int partakeTimes;
    private String shortUrl;
    private int state;
    private String userId;
    private String userImg;
    private String userNickName;
    private UserVipData userVipMsg;

    public UgcTopicDetailBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // p7.b
    public /* bridge */ /* synthetic */ int getAge() {
        return p7.a.a(this);
    }

    public String getAvatar() {
        return this.avatar;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return this.userImg;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return null;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    public String getFriendTopicId() {
        return this.friendTopicId;
    }

    public String getFriendTopicName() {
        return this.friendTopicName;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return 0;
    }

    public int getHistoryHot() {
        return this.historyHot;
    }

    public int getHotNum() {
        return this.hotNum;
    }

    public int getIsRecommend() {
        return this.isRecommend;
    }

    @Override // p7.e
    public /* bridge */ /* synthetic */ int getLevel() {
        return d.a(this);
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    public int getPartakeTimes() {
        return this.partakeTimes;
    }

    @Override // p7.h
    public String getPendantUrl() {
        return this.avatar;
    }

    public String getShortUrl() {
        return this.shortUrl;
    }

    public int getState() {
        return this.state;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getUserImg() {
        return this.userImg;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getUserName() {
        return g.b(this);
    }

    public String getUserNickName() {
        return this.userNickName;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    @Override // p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setFriendTopicId(String str) {
        this.friendTopicId = str;
    }

    public void setFriendTopicName(String str) {
        this.friendTopicName = str;
    }

    public void setHistoryHot(int i9) {
        this.historyHot = i9;
    }

    public void setHotNum(int i9) {
        this.hotNum = i9;
    }

    public void setIsRecommend(int i9) {
        this.isRecommend = i9;
    }

    public void setPartakeTimes(int i9) {
        this.partakeTimes = i9;
    }

    public void setShortUrl(String str) {
        this.shortUrl = str;
    }

    public void setState(int i9) {
        this.state = i9;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserImg(String str) {
        this.userImg = str;
    }

    public void setUserNickName(String str) {
        this.userNickName = str;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.friendTopicId);
        parcel.writeString(this.friendTopicName);
        parcel.writeInt(this.partakeTimes);
        parcel.writeInt(this.state);
        parcel.writeInt(this.hotNum);
        parcel.writeInt(this.isRecommend);
        parcel.writeInt(this.historyHot);
        parcel.writeString(this.userNickName);
        parcel.writeString(this.userImg);
        parcel.writeString(this.shortUrl);
        parcel.writeString(this.userId);
        parcel.writeString(this.avatar);
    }

    protected UgcTopicDetailBean(Parcel parcel) {
        this.friendTopicId = parcel.readString();
        this.friendTopicName = parcel.readString();
        this.partakeTimes = parcel.readInt();
        this.state = parcel.readInt();
        this.hotNum = parcel.readInt();
        this.isRecommend = parcel.readInt();
        this.historyHot = parcel.readInt();
        this.userNickName = parcel.readString();
        this.userImg = parcel.readString();
        this.shortUrl = parcel.readString();
        this.userId = parcel.readString();
        this.avatar = parcel.readString();
    }
}
