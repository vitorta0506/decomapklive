package com.guochao.faceshow.mine.model;
/* loaded from: classes4.dex */
public class SettingStatusBean {
    private int accountId;
    private int isBlack;
    private int isFriend;
    private int isNotice;
    private int isShow;
    private int lvl;
    private int setId;
    private int stealth;
    private int userId;

    public SettingStatusBean() {
    }

    public int getAccountId() {
        return this.accountId;
    }

    public int getIsBlack() {
        return this.isBlack;
    }

    public int getIsFriend() {
        return this.isFriend;
    }

    public int getIsNotice() {
        return this.isNotice;
    }

    public int getIsShow() {
        return this.isShow;
    }

    public int getLvl() {
        return this.lvl;
    }

    public int getSetId() {
        return this.setId;
    }

    public int getStealth() {
        return this.stealth;
    }

    public int getUserId() {
        return this.userId;
    }

    public void setAccountId(int i9) {
        this.accountId = i9;
    }

    public void setIsBlack(int i9) {
        this.isBlack = i9;
    }

    public void setIsFriend(int i9) {
        this.isFriend = i9;
    }

    public void setIsNotice(int i9) {
        this.isNotice = i9;
    }

    public void setIsShow(int i9) {
        this.isShow = i9;
    }

    public void setLvl(int i9) {
        this.lvl = i9;
    }

    public void setSetId(int i9) {
        this.setId = i9;
    }

    public void setStealth(int i9) {
        this.stealth = i9;
    }

    public void setUserId(int i9) {
        this.userId = i9;
    }

    public String toString() {
        return "SettingStatusBean{accountId=" + this.accountId + ", lvl=" + this.lvl + ", isBlack=" + this.isBlack + ", isNotice=" + this.isNotice + ", stealth=" + this.stealth + ", setId=" + this.setId + ", userId=" + this.userId + ", isShow=" + this.isShow + ", isFriend=" + this.isFriend + '}';
    }

    public SettingStatusBean(int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        this.accountId = i9;
        this.lvl = i10;
        this.isBlack = i11;
        this.isNotice = i12;
        this.stealth = i13;
        this.setId = i14;
        this.userId = i15;
        this.isShow = i16;
        this.isFriend = i17;
    }
}
