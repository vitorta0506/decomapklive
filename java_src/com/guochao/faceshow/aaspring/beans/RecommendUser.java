package com.guochao.faceshow.aaspring.beans;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import java.util.List;
import p7.d;
import p7.g;
import p7.h;
/* loaded from: classes3.dex */
public class RecommendUser {
    private List<RecommendListBean> RecommendList;
    private String hiId;
    private String hiImg;

    /* loaded from: classes3.dex */
    public static class RecommendListBean implements h {
        private String avatar;
        private int charmValues;
        private int chat_switch;
        private long disableTime;
        private long enableTime;
        private String img;
        private boolean isCheck = true;
        private int isTutual;
        private String logo;
        private String nickName;
        private String preferentialLang;
        private int sex;
        private String signature;
        private int sysRecommend;
        private String userId;
        private UserVipData userVipMsg;

        @Override // p7.b
        public int getAge() {
            return 0;
        }

        public String getAvatar() {
            return this.avatar;
        }

        @Override // p7.h, p7.c
        public String getAvatarUrl() {
            return this.img;
        }

        public int getCharmValues() {
            return this.charmValues;
        }

        public int getChat_switch() {
            return this.chat_switch;
        }

        @Override // p7.h
        public String getCountryFlag() {
            return this.logo;
        }

        @Override // p7.h
        public String getCurrentUserId() {
            return this.userId;
        }

        public long getDisableTime() {
            return this.disableTime;
        }

        public long getEnableTime() {
            return this.enableTime;
        }

        @Override // p7.h, p7.c
        public int getGender() {
            return this.sex;
        }

        public String getImg() {
            return this.img;
        }

        public int getIsTutual() {
            return this.isTutual;
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

        public String getPreferentialLang() {
            return this.preferentialLang;
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

        public int getSysRecommend() {
            return this.sysRecommend;
        }

        public String getUserId() {
            return this.userId;
        }

        @Override // p7.h
        public String getUserName() {
            return this.nickName;
        }

        public UserVipData getUserVipMsg() {
            return this.userVipMsg;
        }

        @Override // p7.h
        @Nullable
        public /* bridge */ /* synthetic */ b8.g getVipInfo() {
            return g.c(this);
        }

        public boolean isCheck() {
            return this.isCheck;
        }

        public void setAvatar(String str) {
            this.avatar = str;
        }

        public void setCharmValues(int i9) {
            this.charmValues = i9;
        }

        public void setChat_switch(int i9) {
            this.chat_switch = i9;
        }

        public void setCheck(boolean z10) {
            this.isCheck = z10;
        }

        public void setDisableTime(long j10) {
            this.disableTime = j10;
        }

        public void setEnableTime(long j10) {
            this.enableTime = j10;
        }

        public void setImg(String str) {
            this.img = str;
        }

        public void setIsTutual(int i9) {
            this.isTutual = i9;
        }

        public void setLogo(String str) {
            this.logo = str;
        }

        public void setNickName(String str) {
            this.nickName = str;
        }

        public void setPreferentialLang(String str) {
            this.preferentialLang = str;
        }

        public void setSex(int i9) {
            this.sex = i9;
        }

        public void setSignature(String str) {
            this.signature = str;
        }

        public void setSysRecommend(int i9) {
            this.sysRecommend = i9;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public void setUserVipMsg(UserVipData userVipData) {
            this.userVipMsg = userVipData;
        }
    }

    public String getHiId() {
        return this.hiId;
    }

    public String getHiImg() {
        return this.hiImg;
    }

    public List<RecommendListBean> getRecommendList() {
        return this.RecommendList;
    }

    public void setHiId(String str) {
        this.hiId = str;
    }

    public void setHiImg(String str) {
        this.hiImg = str;
    }

    public void setRecommendList(List<RecommendListBean> list) {
        this.RecommendList = list;
    }
}
