package com.guochao.faceshow.aaspring.beans;

import android.text.TextUtils;
import com.guochao.faceshow.aaspring.beans.MyFriendsBean;
import java.util.Objects;
import p7.g;
/* loaded from: classes3.dex */
public class DatingSquare implements TrtcFaceCastUser {
    private int age;
    private int appoint_auth;
    private String country;
    private String countryFlag;
    private String countryName;
    private long diamondNum;
    private String gifUrl;
    private String img;
    private MyFriendsBean.LiveData liveData;
    private String liveId;
    private String liveType;
    private boolean loadGif;
    private String nickName;
    private int onLineStatue;
    private String preferentialLang;
    private int sex;
    private String smallImg;
    private String userId;
    private UserVipData userVipMsg;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.userId, ((DatingSquare) obj).userId);
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.b
    public int getAge() {
        return this.age;
    }

    public int getAppointAuth() {
        return this.appoint_auth;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h, p7.c
    public String getAvatarUrl() {
        return getSmallImg();
    }

    public String getCountry() {
        return this.country;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public String getCountryFlag() {
        return this.countryFlag;
    }

    public String getCountryName() {
        return this.countryName;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    public long getDiamondNum() {
        return this.diamondNum;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h, p7.c
    public int getGender() {
        return this.sex;
    }

    public String getGifUrl() {
        return this.gifUrl;
    }

    public String getImg() {
        return this.img;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.e
    public int getLevel() {
        return 0;
    }

    public MyFriendsBean.LiveData getLiveData() {
        return this.liveData;
    }

    public String getLiveId() {
        return this.liveId;
    }

    public String getLiveType() {
        return this.liveType;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    public String getNickName() {
        return this.nickName;
    }

    public int getOnLineStatue() {
        return this.onLineStatue;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public String getPendantUrl() {
        return "";
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser
    public String getPreferentialLang() {
        return TextUtils.isEmpty(this.preferentialLang) ? "en" : this.preferentialLang;
    }

    public int getSex() {
        return this.sex;
    }

    public String getSmallImg() {
        return this.smallImg;
    }

    public String getUserId() {
        return this.userId;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public String getUserName() {
        return this.nickName;
    }

    public boolean isLoadGif() {
        return this.loadGif;
    }

    public void setAge(int i9) {
        this.age = i9;
    }

    public void setAppointAuth(int i9) {
        this.appoint_auth = i9;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setCountryFlag(String str) {
        this.countryFlag = str;
    }

    public void setCountryName(String str) {
        this.countryName = str;
    }

    public void setDiamondNum(long j10) {
        this.diamondNum = j10;
    }

    public void setGifUrl(String str) {
        this.gifUrl = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setLiveData(MyFriendsBean.LiveData liveData) {
        this.liveData = liveData;
    }

    public void setLiveId(String str) {
        this.liveId = str;
    }

    public void setLiveType(String str) {
        this.liveType = str;
    }

    public void setLoadGif(boolean z10) {
        this.loadGif = z10;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setOnLineStatue(int i9) {
        this.onLineStatue = i9;
    }

    public void setPreferentialLang(String str) {
        this.preferentialLang = str;
    }

    public void setSex(int i9) {
        this.sex = i9;
    }

    public void setSmallImg(String str) {
        this.smallImg = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser, p7.h
    public UserVipData getVipInfo() {
        return this.userVipMsg;
    }
}
