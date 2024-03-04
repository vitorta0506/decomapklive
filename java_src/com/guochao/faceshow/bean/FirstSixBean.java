package com.guochao.faceshow.bean;

import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import java.util.ArrayList;
import p7.a;
import p7.d;
import p7.g;
import p7.h;
/* loaded from: classes3.dex */
public class FirstSixBean implements h {
    public String avatar;
    public int collect;
    public ArrayList<VideoInfo> firstSix;
    public String img;
    public String introduction;
    public Boolean is_linked_to_url;
    public String nickName;
    public int sex;
    public String share_url;
    public String tname;
    public String topicId;
    public String url;
    public String urlType;
    public String url_title;
    public int useNum;
    public String userId;
    private UserVipData userVipMsg;

    @Override // p7.b
    public /* bridge */ /* synthetic */ int getAge() {
        return a.a(this);
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return this.img;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return null;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return this.sex;
    }

    @Override // p7.e
    public /* bridge */ /* synthetic */ int getLevel() {
        return d.a(this);
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    @Override // p7.h
    public String getPendantUrl() {
        return this.avatar;
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

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }
}
