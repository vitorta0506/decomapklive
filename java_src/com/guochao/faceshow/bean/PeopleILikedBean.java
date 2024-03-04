package com.guochao.faceshow.bean;

import com.guochao.faceshow.bean.NewMatchedBean;
import java.util.List;
/* loaded from: classes3.dex */
public class PeopleILikedBean {
    private List<PeopleILikedListBean> list;
    private int page;
    private int pageSize;

    /* loaded from: classes3.dex */
    public static class PeopleILikedListBean {
        private String date;
        private List<PeopleILikedUserBean> userList;

        public String getDate() {
            return this.date;
        }

        public List<PeopleILikedUserBean> getUserList() {
            return this.userList;
        }

        public void setDate(String str) {
            this.date = str;
        }

        public void setUserList(List<PeopleILikedUserBean> list) {
            this.userList = list;
        }
    }

    /* loaded from: classes3.dex */
    public static class PeopleILikedUserBean {
        private int age;
        private String constellation;
        private int matched;
        private int sex;
        private String userId;
        private String userImg;
        private String userNick;
        private int vip;

        public int getAge() {
            return this.age;
        }

        public String getConstellation() {
            return this.constellation;
        }

        public int getMatched() {
            return this.matched;
        }

        public int getSex() {
            return this.sex;
        }

        public String getUserId() {
            return this.userId;
        }

        public String getUserImg() {
            return this.userImg;
        }

        public String getUserNick() {
            return this.userNick;
        }

        public int getVip() {
            return this.vip;
        }

        public NewMatchedBean.NewMatchedUserBean obtain() {
            NewMatchedBean.NewMatchedUserBean newMatchedUserBean = new NewMatchedBean.NewMatchedUserBean();
            newMatchedUserBean.setUserId(this.userId);
            newMatchedUserBean.setUserImg(this.userImg);
            newMatchedUserBean.setUserNick(this.userNick);
            return newMatchedUserBean;
        }

        public void setAge(int i9) {
            this.age = i9;
        }

        public void setConstellation(String str) {
            this.constellation = str;
        }

        public void setMatched(int i9) {
            this.matched = i9;
        }

        public void setSex(int i9) {
            this.sex = i9;
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

        public void setVip(int i9) {
            this.vip = i9;
        }
    }

    public List<PeopleILikedListBean> getList() {
        return this.list;
    }

    public int getPage() {
        return this.page;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public void setList(List<PeopleILikedListBean> list) {
        this.list = list;
    }

    public void setPage(int i9) {
        this.page = i9;
    }

    public void setPageSize(int i9) {
        this.pageSize = i9;
    }
}
