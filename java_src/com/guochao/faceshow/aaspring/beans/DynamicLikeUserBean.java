package com.guochao.faceshow.aaspring.beans;

import androidx.annotation.Nullable;
import p7.d;
import p7.g;
import p7.h;
/* loaded from: classes3.dex */
public class DynamicLikeUserBean implements h {
    private String avatar;
    private int liveState;
    private int userAttentStatus;
    private String userCountryFlag;
    private String userId;
    private String userImg;
    private String userNickName;
    private int userSex;
    private String userSignature;
    private UserVipData userVipMsg;

    @Override // p7.b
    public /* bridge */ /* synthetic */ int getAge() {
        return p7.a.a(this);
    }

    public String getAvatar() {
        return this.avatar;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return getUserImg();
    }

    @Override // p7.h
    public String getCountryFlag() {
        return getUserCountryFlag();
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return getUserSex();
    }

    @Override // p7.e
    public /* bridge */ /* synthetic */ int getLevel() {
        return d.a(this);
    }

    public int getLiveState() {
        return this.liveState;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    @Override // p7.h
    public String getPendantUrl() {
        return getAvatar();
    }

    public int getUserAttentStatus() {
        return this.userAttentStatus;
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

    public void setLiveState(int i9) {
        this.liveState = i9;
    }

    public void setUserAttentStatus(int i9) {
        this.userAttentStatus = i9;
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

    public void setUserSignature(String str) {
        this.userSignature = str;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }
}
