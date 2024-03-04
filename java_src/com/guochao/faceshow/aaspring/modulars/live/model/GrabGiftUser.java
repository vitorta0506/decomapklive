package com.guochao.faceshow.aaspring.modulars.live.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import p7.a;
import p7.d;
import p7.g;
import p7.h;
/* loaded from: classes3.dex */
public class GrabGiftUser implements Parcelable, h {
    public static final Parcelable.Creator<GrabGiftUser> CREATOR = new Parcelable.Creator<GrabGiftUser>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.GrabGiftUser.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GrabGiftUser createFromParcel(Parcel parcel) {
            return new GrabGiftUser(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GrabGiftUser[] newArray(int i9) {
            return new GrabGiftUser[i9];
        }
    };
    private String avatar;
    private int bestLuck;
    private Float happyMoney;
    private String money;
    private String userCountryFlag;
    private String userId;
    private String userImg;
    private String userNickName;
    private int userSex;
    private UserVipData userVipMsg;

    public GrabGiftUser() {
        this.bestLuck = 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // p7.b
    public /* bridge */ /* synthetic */ int getAge() {
        return a.a(this);
    }

    public String getAvatar() {
        return this.avatar;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return getUserImg();
    }

    public int getBestLuck() {
        return this.bestLuck;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return getUserCountryFlag();
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return getUserId();
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return this.userSex;
    }

    public Float getHappyMoney() {
        return this.happyMoney;
    }

    @Override // p7.e
    public /* bridge */ /* synthetic */ int getLevel() {
        return d.a(this);
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    public String getMoney() {
        return this.money;
    }

    @Override // p7.h
    public String getPendantUrl() {
        return getAvatar();
    }

    public String getUserCountryFlag() {
        return this.userCountryFlag;
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

    public int getUserSex() {
        return this.userSex;
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

    public void setBestLuck(int i9) {
        this.bestLuck = i9;
    }

    public void setHappyMoney(Float f10) {
        this.happyMoney = f10;
    }

    public void setMoney(String str) {
        this.money = str;
    }

    public void setUserCountryFlag(String str) {
        this.userCountryFlag = str;
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

    public void setUserSex(int i9) {
        this.userSex = i9;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.userCountryFlag);
        parcel.writeInt(this.userSex);
        parcel.writeString(this.userImg);
        parcel.writeString(this.money);
        parcel.writeString(this.userNickName);
        parcel.writeString(this.avatar);
        parcel.writeString(this.userId);
        parcel.writeFloat(this.happyMoney.floatValue());
        parcel.writeInt(this.bestLuck);
    }

    protected GrabGiftUser(Parcel parcel) {
        this.bestLuck = 0;
        this.userCountryFlag = parcel.readString();
        this.userSex = parcel.readInt();
        this.userImg = parcel.readString();
        this.money = parcel.readString();
        this.userNickName = parcel.readString();
        this.avatar = parcel.readString();
        this.userId = parcel.readString();
        this.happyMoney = Float.valueOf(parcel.readFloat());
        this.bestLuck = parcel.readInt();
    }
}
