package com.guochao.faceshow.aaspring.beans;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteBean;
import p7.g;
/* loaded from: classes3.dex */
public class SearchUserNameOrIdBean implements InviteBean {
    private String avatar;
    private String charmValues;
    private String disableTime;
    private String enableTime;
    private String img;
    private int isAttention;
    private transient boolean isOtherFollowedYou = false;
    private boolean isSelect;
    private int isTutual;
    private String levelId;
    private String liveState;
    private String logo;
    private String nickName;
    private String signature;
    private String userAge;
    private String userAttentStatus;
    private String userCountryFlag;
    private String userId;
    private String userImg;
    private String userNickName;
    private String userSex;
    private String userSignature;
    private UserVipData userVipMsg;

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.b
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
        return this.userImg;
    }

    public String getCharmValues() {
        return this.charmValues;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return this.userCountryFlag;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    public String getDisableTime() {
        return this.disableTime;
    }

    public String getEnableTime() {
        return this.enableTime;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        try {
            return Integer.parseInt(this.userSex);
        } catch (Exception unused) {
            return 0;
        }
    }

    public String getImg() {
        return this.img;
    }

    public int getIsAttention() {
        return this.isAttention;
    }

    public int getIsTutual() {
        return this.isTutual;
    }

    @Override // p7.e
    public int getLevel() {
        return 0;
    }

    public String getLevelId() {
        return this.levelId;
    }

    public String getLiveState() {
        return this.liveState;
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

    public String getSignature() {
        if (TextUtils.isEmpty(this.signature)) {
            return BaseApplication.getInstance().getString(R.string.user_info_default_signature);
        }
        return this.signature;
    }

    public String getUserAge() {
        return this.userAge;
    }

    public String getUserAttentStatus() {
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

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
    public String getUserName() {
        return TextUtils.isEmpty(this.userNickName) ? this.nickName : this.userNickName;
    }

    public String getUserNickName() {
        return this.userNickName;
    }

    public String getUserSex() {
        return this.userSex;
    }

    public String getUserSignature() {
        if (TextUtils.isEmpty(this.userSignature)) {
            return BaseApplication.getInstance().getString(R.string.user_info_default_signature);
        }
        return this.userSignature;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    public boolean isOtherFollowedYou() {
        return this.isOtherFollowedYou;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean
    public boolean isSelect() {
        return this.isSelect;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setCharmValues(String str) {
        this.charmValues = str;
    }

    public void setDisableTime(String str) {
        this.disableTime = str;
    }

    public void setEnableTime(String str) {
        this.enableTime = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setIsAttention(int i9) {
        this.isAttention = i9;
    }

    public void setIsTutual(int i9) {
        this.isTutual = i9;
    }

    public void setLevelId(String str) {
        this.levelId = str;
    }

    public void setLiveState(String str) {
        this.liveState = str;
    }

    public void setLogo(String str) {
        this.logo = str;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setOtherFollowedYou(boolean z10) {
        this.isOtherFollowedYou = z10;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean
    public void setSelect(boolean z10) {
        this.isSelect = z10;
    }

    public void setSignature(String str) {
        this.signature = str;
    }

    public void setUserAge(String str) {
        this.userAge = str;
    }

    public void setUserAttentStatus(String str) {
        this.userAttentStatus = str;
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

    public void setUserSex(String str) {
        this.userSex = str;
    }

    public void setUserSignature(String str) {
        this.userSignature = str;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }
}
