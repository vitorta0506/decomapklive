package com.guochao.faceshow.aaspring.beans;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteBean;
import p7.g;
/* loaded from: classes3.dex */
public class LiveInviteBean implements InviteBean {
    private String age;
    private String attentStatus;
    private String avatar;
    private String countryFlag;
    private String img;
    private boolean isSelect;
    private String levelId;
    private String liveState;
    private String nickName;
    private String sex;
    private String signature;
    private String userId;
    private String userType;
    private UserVipData userVipMsg;

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.b
    public int getAge() {
        try {
            return Integer.parseInt(this.age);
        } catch (Exception unused) {
            return 0;
        }
    }

    public String getAttentStatus() {
        return this.attentStatus;
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
        return this.countryFlag;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        try {
            return Integer.parseInt(this.sex);
        } catch (Exception unused) {
            return 0;
        }
    }

    public String getImg() {
        return this.img;
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

    public String getSex() {
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

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
    public String getUserName() {
        return this.nickName;
    }

    public String getUserType() {
        return this.userType;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean
    public boolean isSelect() {
        return this.isSelect;
    }

    public void setAge(String str) {
        this.age = str;
    }

    public void setAttentStatus(String str) {
        this.attentStatus = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setCountryFlag(String str) {
        this.countryFlag = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setLevelId(String str) {
        this.levelId = str;
    }

    public void setLiveState(String str) {
        this.liveState = str;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean
    public void setSelect(boolean z10) {
        this.isSelect = z10;
    }

    public void setSex(String str) {
        this.sex = str;
    }

    public void setSignature(String str) {
        this.signature = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserType(String str) {
        this.userType = str;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }
}
