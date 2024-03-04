package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import b8.e;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer;
import com.guochao.faceshow.aaspring.modulars.live.game.q;
import com.guochao.faceshow.bean.UserBean;
import p7.d;
import p7.g;
/* loaded from: classes3.dex */
public class LiveGameUserInfo implements LiveGamePlayer, Parcelable {
    public static final Parcelable.Creator<LiveGameUserInfo> CREATOR = new Parcelable.Creator<LiveGameUserInfo>() { // from class: com.guochao.faceshow.aaspring.beans.LiveGameUserInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveGameUserInfo createFromParcel(Parcel parcel) {
            return new LiveGameUserInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveGameUserInfo[] newArray(int i9) {
            return new LiveGameUserInfo[i9];
        }
    };
    private String countryLogo;
    @SerializedName("sex")
    private int gender;
    private String logo;
    private String userId;
    @SerializedName(alternate = {"userName"}, value = "nickName")
    private String userName;

    public LiveGameUserInfo() {
    }

    public static LiveGameUserInfo self() {
        UserBean c10 = e.g().c();
        LiveGameUserInfo liveGameUserInfo = new LiveGameUserInfo();
        liveGameUserInfo.setGender(c10.getGender());
        liveGameUserInfo.setLogo(c10.getAvatarUrl());
        liveGameUserInfo.setUserId(c10.getUserId());
        liveGameUserInfo.setUserName(c10.getUserName());
        liveGameUserInfo.setCountryLogo(c10.getCountryFlag());
        return liveGameUserInfo;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // p7.b
    public /* bridge */ /* synthetic */ int getAge() {
        return p7.a.a(this);
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return this.logo;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return getCountryLogo();
    }

    public String getCountryLogo() {
        return this.countryLogo;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public int getGameSeatCurrentPlayerPosition() {
        return 0;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return this.gender;
    }

    @Override // p7.e
    public /* bridge */ /* synthetic */ int getLevel() {
        return d.a(this);
    }

    public String getLogo() {
        return this.logo;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    @Override // p7.h
    public String getPendantUrl() {
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public /* bridge */ /* synthetic */ long getRestActiveTime() {
        return q.b(this);
    }

    public String getUserId() {
        return this.userId;
    }

    @Override // p7.h
    public String getUserName() {
        return this.userName;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer, p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public /* bridge */ /* synthetic */ boolean isActive() {
        return q.d(this);
    }

    public void setCountryLogo(String str) {
        this.countryLogo = str;
    }

    public /* bridge */ /* synthetic */ void setGameSeatCurrentPlayerPosition(int i9) {
        q.e(this, i9);
    }

    public void setGender(int i9) {
        this.gender = i9;
    }

    public void setLogo(String str) {
        this.logo = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.userId);
        parcel.writeString(this.userName);
        parcel.writeInt(this.gender);
        parcel.writeString(this.logo);
        parcel.writeString(this.countryLogo);
    }

    protected LiveGameUserInfo(Parcel parcel) {
        this.userId = parcel.readString();
        this.userName = parcel.readString();
        this.gender = parcel.readInt();
        this.logo = parcel.readString();
        this.countryLogo = parcel.readString();
    }
}
