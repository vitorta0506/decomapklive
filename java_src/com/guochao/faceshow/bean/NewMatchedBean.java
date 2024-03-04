package com.guochao.faceshow.bean;

import androidx.annotation.Nullable;
import java.util.List;
import p7.a;
import p7.d;
import p7.g;
import p7.h;
/* loaded from: classes3.dex */
public class NewMatchedBean {
    private List<NewMatchedUserBean> list;
    private int total;

    /* loaded from: classes3.dex */
    public static class NewMatchedUserBean implements h {
        private String userId;
        private String userImg;
        private String userNick;

        @Override // p7.b
        public /* bridge */ /* synthetic */ int getAge() {
            return a.a(this);
        }

        @Override // p7.h, p7.c
        public String getAvatarUrl() {
            return this.userImg;
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
            return 0;
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
            return null;
        }

        public String getUserId() {
            return this.userId;
        }

        public String getUserImg() {
            return this.userImg;
        }

        @Override // p7.h
        public /* bridge */ /* synthetic */ String getUserName() {
            return g.b(this);
        }

        public String getUserNick() {
            return this.userNick;
        }

        @Override // p7.h
        @Nullable
        public /* bridge */ /* synthetic */ b8.g getVipInfo() {
            return g.c(this);
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public void setUserImg(String str) {
            this.userImg = str;
        }

        public void setUserNick(String str) {
            this.userNick = str;
        }
    }

    public List<NewMatchedUserBean> getList() {
        return this.list;
    }

    public int getTotal() {
        return this.total;
    }

    public void setList(List<NewMatchedUserBean> list) {
        this.list = list;
    }

    public void setTotal(int i9) {
        this.total = i9;
    }
}
