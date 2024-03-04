package com.guochao.faceshow.aaspring.modulars.live.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import p7.g;
import p7.h;
import p7.i;
/* loaded from: classes3.dex */
public class LiveMicApplyList implements i, h, Parcelable {
    public static final Parcelable.Creator<LiveMicApplyList> CREATOR = new Parcelable.Creator<LiveMicApplyList>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.LiveMicApplyList.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveMicApplyList createFromParcel(Parcel parcel) {
            return new LiveMicApplyList(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveMicApplyList[] newArray(int i9) {
            return new LiveMicApplyList[i9];
        }
    };
    private String avatar;
    private String countryFlag;
    private String img;
    private String levelId;
    private String nickName;
    private String sex;
    private String streamId;
    @SerializedName("age")
    private String userAge;
    private String userAttentStatus;
    private String userId;
    private String userSignature;
    private UserVipData userVipMsg;

    public LiveMicApplyList() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // p7.b
    public int getAge() {
        try {
            return Integer.parseInt(this.userAge);
        } catch (Exception unused) {
            return 0;
        }
    }

    public String getAvatar() {
        return this.avatar;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return this.img;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return this.countryFlag;
    }

    @Override // p7.i, p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    @Override // p7.i, p7.h, p7.c
    public int getGender() {
        try {
            return Integer.parseInt(this.sex);
        } catch (Exception unused) {
            return 0;
        }
    }

    public String getImg() {
        return this.img;
    }

    @Override // p7.e
    public int getLevel() {
        try {
            return Integer.parseInt(this.levelId);
        } catch (Exception unused) {
            return 0;
        }
    }

    public String getLevelId() {
        return this.levelId;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    public String getNickName() {
        return this.nickName;
    }

    @Override // p7.h
    public String getPendantUrl() {
        return this.avatar;
    }

    public String getSex() {
        return this.sex;
    }

    public String getStreamId() {
        return this.streamId;
    }

    public String getUserAge() {
        return this.userAge;
    }

    public String getUserAttentStatus() {
        return this.userAttentStatus;
    }

    public String getUserId() {
        return this.userId;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getUserName() {
        return g.b(this);
    }

    public String getUserSignature() {
        return this.userSignature;
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

    public void setCountryFlag(String str) {
        this.countryFlag = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setLevelId(String str) {
        this.levelId = str;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setSex(String str) {
        this.sex = str;
    }

    public void setStreamId(String str) {
        this.streamId = str;
    }

    public void setUserAge(String str) {
        this.userAge = str;
    }

    public void setUserAttentStatus(String str) {
        this.userAttentStatus = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserSignature(String str) {
        this.userSignature = str;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.img);
        parcel.writeString(this.nickName);
        parcel.writeString(this.userId);
        parcel.writeString(this.userAge);
        parcel.writeString(this.sex);
        parcel.writeString(this.userSignature);
        parcel.writeString(this.countryFlag);
        parcel.writeString(this.userAttentStatus);
        parcel.writeString(this.levelId);
        parcel.writeString(this.streamId);
        parcel.writeString(this.avatar);
    }

    protected LiveMicApplyList(Parcel parcel) {
        this.img = parcel.readString();
        this.nickName = parcel.readString();
        this.userId = parcel.readString();
        this.userAge = parcel.readString();
        this.sex = parcel.readString();
        this.userSignature = parcel.readString();
        this.countryFlag = parcel.readString();
        this.userAttentStatus = parcel.readString();
        this.levelId = parcel.readString();
        this.streamId = parcel.readString();
        this.avatar = parcel.readString();
    }
}
