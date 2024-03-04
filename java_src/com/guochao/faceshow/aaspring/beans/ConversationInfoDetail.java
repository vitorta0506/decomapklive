package com.guochao.faceshow.aaspring.beans;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteBean;
import p7.g;
/* loaded from: classes3.dex */
public class ConversationInfoDetail implements InviteBean, TrtcFaceCastUser {
    private int age;
    private String avatar;
    private int chatType;
    private int count;
    private String countryFlag;
    private boolean frozen;
    private int gender;
    private boolean isSelect;
    private int level;
    public String mvpUrl;
    private String nickName;
    private String preferentialLang;
    private String userId;
    private UserVipData userVipMsg;

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.b
    public int getAge() {
        return this.age;
    }

    public String getAvatar() {
        return this.avatar;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return this.avatar;
    }

    public int getChatType() {
        return this.chatType;
    }

    public int getCount() {
        return this.count;
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
        return this.gender;
    }

    public boolean getIsSelect() {
        return this.isSelect;
    }

    @Override // p7.e
    public int getLevel() {
        return this.level;
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

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser
    public String getPreferentialLang() {
        return TextUtils.isEmpty(this.preferentialLang) ? "en" : this.preferentialLang;
    }

    public String getUserId() {
        return this.userId;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
    public String getUserName() {
        return this.nickName;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    public boolean isFrozen() {
        return this.frozen;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean
    public boolean isSelect() {
        return this.isSelect;
    }

    public void setAge(int i9) {
        this.age = i9;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setChatType(int i9) {
        this.chatType = i9;
    }

    public void setCount(int i9) {
        this.count = i9;
    }

    public void setCountryFlag(String str) {
        this.countryFlag = str;
    }

    public void setFrozen(boolean z10) {
        this.frozen = z10;
    }

    public void setGender(int i9) {
        this.gender = i9;
    }

    public void setIsSelect(boolean z10) {
        this.isSelect = z10;
    }

    public void setLevel(int i9) {
        this.level = i9;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setPreferentialLang(String str) {
        this.preferentialLang = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean
    public void setSelect(boolean z10) {
        this.isSelect = z10;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }
}
