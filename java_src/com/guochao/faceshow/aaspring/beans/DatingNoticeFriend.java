package com.guochao.faceshow.aaspring.beans;

import com.google.gson.annotations.SerializedName;
import p7.d;
import p7.g;
import p7.h;
/* loaded from: classes3.dex */
public class DatingNoticeFriend implements h {
    private String account;
    private String accountId;
    private int age;
    private String appLanguage;
    private String birthday;
    private String country;
    private String countryFlag;
    private String img;
    private int isVip;
    private String last_time;
    @SerializedName("nick_name")
    private String nickName;
    private boolean selected = true;
    private int sex;
    private String userId;
    private UserVipData userVipMsg;

    public String getAccount() {
        return this.account;
    }

    public String getAccountId() {
        return this.accountId;
    }

    @Override // p7.b
    public int getAge() {
        return this.age;
    }

    public String getAppLanguage() {
        return this.appLanguage;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return this.img;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public String getCountry() {
        return this.country;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return this.countryFlag;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return 0;
    }

    public String getImg() {
        return this.img;
    }

    public int getIsVip() {
        return this.isVip;
    }

    public String getLast_time() {
        return this.last_time;
    }

    @Override // p7.e
    public /* bridge */ /* synthetic */ int getLevel() {
        return d.a(this);
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
        return null;
    }

    public int getSex() {
        return this.sex;
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
    public b8.g getVipInfo() {
        return getUserVipMsg();
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public void setAccountId(String str) {
        this.accountId = str;
    }

    public void setAge(int i9) {
        this.age = i9;
    }

    public void setAppLanguage(String str) {
        this.appLanguage = str;
    }

    public void setBirthday(String str) {
        this.birthday = str;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setCountryFlag(String str) {
        this.countryFlag = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setIsVip(int i9) {
        this.isVip = i9;
    }

    public void setLast_time(String str) {
        this.last_time = str;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setSelected(boolean z10) {
        this.selected = z10;
    }

    public void setSex(int i9) {
        this.sex = i9;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }
}
