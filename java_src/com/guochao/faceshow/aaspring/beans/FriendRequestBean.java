package com.guochao.faceshow.aaspring.beans;

import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.beans.WhoSawMeBean;
import java.util.List;
import p7.g;
import p7.h;
import p7.i;
/* loaded from: classes3.dex */
public class FriendRequestBean implements h, i {
    private int account;
    private int age;
    private String avatar;
    private int blackList;
    private String countryLogo;
    @Deprecated
    private String createTime;
    private List<WhoSawMeBean.ListBean.Bean.ImagePhotoWall> images;
    private String img;
    private int isOnline = -1;
    private int isTutual;
    private int levelId;
    private String nickName;
    private int sex;
    private int shieldCircle;
    private String time;
    private int type;
    private int userId;
    private UserVipData userVipMsg;

    public int getAccount() {
        return this.account;
    }

    @Override // p7.b
    public int getAge() {
        return this.age;
    }

    public String getAvatar() {
        return this.avatar;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return this.img;
    }

    public int getBlackList() {
        return this.blackList;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return this.countryLogo;
    }

    public String getCountryLogo() {
        return this.countryLogo;
    }

    public String getCreateTime() {
        return this.time;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return String.valueOf(this.userId);
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return this.sex;
    }

    public List<WhoSawMeBean.ListBean.Bean.ImagePhotoWall> getImages() {
        return this.images;
    }

    public String getImg() {
        return this.img;
    }

    public int getIsOnline() {
        return this.isOnline;
    }

    public int getIsTutual() {
        return this.isTutual;
    }

    @Override // p7.e
    public int getLevel() {
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

    public int getSex() {
        return this.sex;
    }

    public int getShieldCircle() {
        return this.shieldCircle;
    }

    public int getType() {
        return this.type;
    }

    public int getUserId() {
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

    public void setAccount(int i9) {
        this.account = i9;
    }

    public void setAge(int i9) {
        this.age = i9;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBlackList(int i9) {
        this.blackList = i9;
    }

    public void setCountryLogo(String str) {
        this.countryLogo = str;
    }

    public void setCreateTime(String str) {
        this.time = str;
    }

    public void setImages(List<WhoSawMeBean.ListBean.Bean.ImagePhotoWall> list) {
        this.images = list;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setIsOnline(int i9) {
        this.isOnline = i9;
    }

    public void setIsTutual(int i9) {
        this.isTutual = i9;
    }

    public void setLevel(int i9) {
        this.levelId = i9;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setSex(int i9) {
        this.sex = i9;
    }

    public void setShieldCircle(int i9) {
        this.shieldCircle = i9;
    }

    public void setType(int i9) {
        this.type = i9;
    }

    public void setUserId(int i9) {
        this.userId = i9;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }
}
