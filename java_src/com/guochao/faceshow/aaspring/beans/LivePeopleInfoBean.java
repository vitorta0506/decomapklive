package com.guochao.faceshow.aaspring.beans;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.bean.UserBean;
import p7.g;
import p7.h;
import p7.i;
/* loaded from: classes3.dex */
public class LivePeopleInfoBean implements h, i {
    private int admin;
    private int age;
    private int attention_num;
    private String avatar;
    private int banTalk;
    private String country;
    private String countryLog;
    private String fensiNum;
    private int fensi_num;
    private String giftDiamondNum;
    private String img;
    private int isLive;
    private int is_tutual;
    private int kink;
    private int levelId;
    private String liveId;
    private int liveManager;
    private String live_img;
    private UserBean.UserMvpInfo mvpUserInfoResult;
    private String nick_name;
    private String sendGiftNum;
    private int sex;
    private String signature;
    private String userId;
    private UserVipData userVipMsg;
    private String videoNum;

    public int getAdmin() {
        return this.admin;
    }

    @Override // p7.b
    public int getAge() {
        return this.age;
    }

    public int getAttention_num() {
        return this.attention_num;
    }

    public String getAvatar() {
        return this.avatar;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return getImg();
    }

    public int getBanTalk() {
        return this.banTalk;
    }

    public String getCountry() {
        return this.country;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return getCountryLog();
    }

    public String getCountryLog() {
        return this.countryLog;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return getUserId();
    }

    public String getFensiNum() {
        return this.fensiNum;
    }

    public int getFensi_num() {
        return this.fensi_num;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return getSex();
    }

    public String getGiftDiamondNum() {
        return this.giftDiamondNum;
    }

    public String getImg() {
        return this.img;
    }

    public int getIsLive() {
        return this.isLive;
    }

    public int getIs_tutual() {
        return this.is_tutual;
    }

    public int getKink() {
        return this.kink;
    }

    @Override // p7.e
    public int getLevel() {
        return getLevelId();
    }

    public int getLevelId() {
        return this.levelId;
    }

    public String getLiveCoverImg() {
        return this.live_img;
    }

    public String getLiveId() {
        return this.liveId;
    }

    public int getLiveManager() {
        return this.liveManager;
    }

    @Override // p7.h
    public String getMVPUrl() {
        UserBean.UserMvpInfo userMvpInfo = this.mvpUserInfoResult;
        return userMvpInfo == null ? "" : userMvpInfo.mvpUrl;
    }

    public UserBean.UserMvpInfo getMvpUserInfoResult() {
        return this.mvpUserInfoResult;
    }

    public String getNick_name() {
        return this.nick_name;
    }

    @Override // p7.h
    public String getPendantUrl() {
        return getAvatar();
    }

    public String getSendGiftNum() {
        return this.sendGiftNum;
    }

    public int getSex() {
        return this.sex;
    }

    public String getSignature() {
        if (TextUtils.isEmpty(this.signature)) {
            return BaseApplication.getInstance().getString(R.string.user_info_default_signature);
        }
        return this.signature;
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

    public String getVideoNum() {
        return this.videoNum;
    }

    @Override // p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    public void setAdmin(int i9) {
        this.admin = i9;
    }

    public void setAge(int i9) {
        this.age = i9;
    }

    public void setAttention_num(int i9) {
        this.attention_num = i9;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBanTalk(int i9) {
        this.banTalk = i9;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setCountryLog(String str) {
        this.countryLog = str;
    }

    public void setFensiNum(String str) {
        this.fensiNum = str;
    }

    public void setFensi_num(int i9) {
        this.fensi_num = i9;
    }

    public void setGiftDiamondNum(String str) {
        this.giftDiamondNum = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setIsLive(int i9) {
        this.isLive = i9;
    }

    public void setIs_tutual(int i9) {
        this.is_tutual = i9;
    }

    public void setKink(int i9) {
        this.kink = i9;
    }

    public void setLevelId(int i9) {
        this.levelId = i9;
    }

    public void setLiveCoverImg(String str) {
        this.live_img = str;
    }

    public void setLiveId(String str) {
        this.liveId = str;
    }

    public void setLiveManager(int i9) {
        this.liveManager = i9;
    }

    public void setMvpUserInfoResult(UserBean.UserMvpInfo userMvpInfo) {
        this.mvpUserInfoResult = userMvpInfo;
    }

    public void setNick_name(String str) {
        this.nick_name = str;
    }

    public void setSendGiftNum(String str) {
        this.sendGiftNum = str;
    }

    public void setSex(int i9) {
        this.sex = i9;
    }

    public void setSignature(String str) {
        this.signature = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    public void setVideoNum(String str) {
        this.videoNum = str;
    }
}
