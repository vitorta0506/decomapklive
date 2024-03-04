package com.guochao.faceshow.aaspring.beans;

import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public class RankListResult {
    private String img;
    private String levelId;
    private String nickName;
    private String sex;
    private String totalPrice;
    private String userId;
    private UserVipData userVipMsg;

    public boolean equals(@Nullable Object obj) {
        if (obj != null && (obj instanceof RankListResult)) {
            return getUserId().equals(((RankListResult) obj).getUserId());
        }
        return false;
    }

    public String getImg() {
        return this.img;
    }

    public String getLevelId() {
        return this.levelId;
    }

    public String getNickName() {
        return this.nickName;
    }

    public String getSex() {
        return this.sex;
    }

    public String getTotalPrice() {
        return this.totalPrice;
    }

    public String getUserId() {
        return this.userId;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setLevelId(String str) {
        this.levelId = str;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setSex(String str) {
        this.sex = str;
    }

    public void setTotalPrice(String str) {
        this.totalPrice = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }
}
