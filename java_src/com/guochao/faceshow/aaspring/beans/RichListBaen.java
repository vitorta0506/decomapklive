package com.guochao.faceshow.aaspring.beans;

import androidx.annotation.Nullable;
import p7.d;
import p7.g;
import p7.h;
/* loaded from: classes3.dex */
public class RichListBaen implements h {
    private String avatar;
    private int diamonds;
    private String img;
    private String logo;
    private String nickName;
    private String userId;
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
        return this.img;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return this.logo;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    public int getDiamonds() {
        return this.diamonds;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return 0;
    }

    public String getImg() {
        return this.img;
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

    public String getNickName() {
        return this.nickName;
    }

    @Override // p7.h
    public String getPendantUrl() {
        return this.avatar;
    }

    public String getUserId() {
        return this.userId;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getUserName() {
        return g.b(this);
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

    public void setDiamonds(int i9) {
        this.diamonds = i9;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setLogo(String str) {
        this.logo = str;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }
}
