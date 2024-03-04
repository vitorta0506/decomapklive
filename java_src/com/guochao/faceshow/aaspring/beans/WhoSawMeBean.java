package com.guochao.faceshow.aaspring.beans;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PeopleNearByBean;
import java.util.List;
import p7.g;
import p7.h;
import p7.i;
/* loaded from: classes3.dex */
public class WhoSawMeBean {
    private ListBean page;

    /* loaded from: classes3.dex */
    public static class ListBean {
        private int currPage;
        private List<Bean> list;
        private int pageSize;
        private int totalPage;

        /* loaded from: classes3.dex */
        public static class Bean implements h, i {
            private int age;
            private String avatar;
            private long createTime;
            private String gaussImg;
            private List<ImagePhotoWall> images;
            private String img;
            private int isAttention;
            private int level;
            private String logo;
            private String nickName;
            private int sex;
            private String signature;
            private String userId;
            private UserVipData userVipMsg;

            /* loaded from: classes3.dex */
            public static class ImagePhotoWall {
                private String imgId;
                private String imgUrl;
                private String smallImg;

                public String getImgId() {
                    return this.imgId;
                }

                public String getImgUrl() {
                    return this.imgUrl;
                }

                public String getSmallImg() {
                    return this.smallImg;
                }

                public void setImgId(String str) {
                    this.imgId = str;
                }

                public void setImgUrl(String str) {
                    this.imgUrl = str;
                }

                public void setSmallImg(String str) {
                    this.smallImg = str;
                }
            }

            public static Bean obtainFromFriendRequest(FriendRequestBean friendRequestBean) {
                Bean bean = new Bean();
                bean.isAttention = friendRequestBean.getIsTutual();
                bean.img = friendRequestBean.getImg();
                bean.images = friendRequestBean.getImages();
                bean.level = friendRequestBean.getLevel();
                bean.nickName = friendRequestBean.getNickName();
                bean.sex = friendRequestBean.getSex();
                bean.logo = friendRequestBean.getCountryLogo();
                bean.avatar = friendRequestBean.getAvatar();
                bean.userId = String.valueOf(friendRequestBean.getAccount());
                bean.age = friendRequestBean.getAge();
                bean.userVipMsg = friendRequestBean.getUserVipMsg();
                return bean;
            }

            public static Bean obtainFromImUser(PeopleNearByBean.PeopleNearByUser peopleNearByUser) {
                Bean bean = new Bean();
                bean.isAttention = peopleNearByUser.getIsTutual();
                bean.img = peopleNearByUser.getImg();
                bean.images = peopleNearByUser.getImages();
                bean.level = peopleNearByUser.getLevel();
                bean.nickName = peopleNearByUser.getNickName();
                bean.sex = peopleNearByUser.getSex();
                bean.logo = peopleNearByUser.getLogo();
                bean.avatar = peopleNearByUser.getAvatar();
                bean.userId = peopleNearByUser.getUserId();
                bean.age = peopleNearByUser.getAge();
                bean.userVipMsg = peopleNearByUser.getUserVipMsg();
                bean.signature = peopleNearByUser.getSignature();
                return bean;
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

            @Override // p7.h
            public String getCountryFlag() {
                return this.logo;
            }

            public long getCreateTime() {
                return this.createTime;
            }

            @Override // p7.h
            public String getCurrentUserId() {
                return this.userId;
            }

            public String getGaussImg() {
                return this.gaussImg;
            }

            @Override // p7.h, p7.c
            public int getGender() {
                return this.sex;
            }

            public List<ImagePhotoWall> getImages() {
                return this.images;
            }

            public String getImg() {
                return this.img;
            }

            public int getIsAttention() {
                return this.isAttention;
            }

            @Override // p7.e
            public int getLevel() {
                return this.level;
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

            @Override // p7.h
            @Nullable
            public /* bridge */ /* synthetic */ b8.g getVipInfo() {
                return g.c(this);
            }

            public void setAge(int i9) {
                this.age = i9;
            }

            public void setAvatar(String str) {
                this.avatar = str;
            }

            public void setCreateTime(long j10) {
                this.createTime = j10;
            }

            public void setGaussImg(String str) {
                this.gaussImg = str;
            }

            public void setImages(List<ImagePhotoWall> list) {
                this.images = list;
            }

            public void setImg(String str) {
                this.img = str;
            }

            public void setIsAttention(int i9) {
                this.isAttention = i9;
            }

            public void setLevel(int i9) {
                this.level = i9;
            }

            public void setLogo(String str) {
                this.logo = str;
            }

            public void setNickName(String str) {
                this.nickName = str;
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
        }

        public int getCurrPage() {
            return this.currPage;
        }

        public List<Bean> getList() {
            return this.list;
        }

        public int getPageSize() {
            return this.pageSize;
        }

        public int getTotalPage() {
            return this.totalPage;
        }

        public void setCurrPage(int i9) {
            this.currPage = i9;
        }

        public void setList(List<Bean> list) {
            this.list = list;
        }

        public void setPageSize(int i9) {
            this.pageSize = i9;
        }

        public void setTotalPage(int i9) {
            this.totalPage = i9;
        }
    }

    public ListBean getPage() {
        return this.page;
    }

    public void setPage(ListBean listBean) {
        this.page = listBean;
    }
}
