package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class PushMessageBean {
    private int currPage;
    private List<ListBean> list;
    private int pageSize;
    private int totalCount;
    private int totalPage;

    /* loaded from: classes3.dex */
    public static class ListBean {
        private int accountId;
        private String content;
        private String createTime;
        public long createTimeLong;
        private String img;
        private int infoId;
        private boolean isExpand;
        private int isLiveDynamic;
        private int is_tutual;
        private String nickName;
        private int sex;
        private String title;
        private int typeId;
        private String url;
        private String userId;
        private String videoImg;

        public int getAccountId() {
            return this.accountId;
        }

        public String getContent() {
            return this.content;
        }

        public String getCreateTime() {
            return this.createTime;
        }

        public String getImg() {
            return this.img;
        }

        public int getInfoId() {
            return this.infoId;
        }

        public int getIsLiveDynamic() {
            return this.isLiveDynamic;
        }

        public int getIs_tutual() {
            return this.is_tutual;
        }

        public String getNickName() {
            return this.nickName;
        }

        public int getSex() {
            return this.sex;
        }

        public String getTitle() {
            return this.title;
        }

        public int getTypeId() {
            return this.typeId;
        }

        public String getUrl() {
            return this.url;
        }

        public String getUserId() {
            return this.userId;
        }

        public String getVideoImg() {
            return this.videoImg;
        }

        public boolean isExpand() {
            return this.isExpand;
        }

        public void setAccountId(int i9) {
            this.accountId = i9;
        }

        public void setContent(String str) {
            this.content = str;
        }

        public void setCreateTime(String str) {
            this.createTime = str;
        }

        public void setExpand(boolean z10) {
            this.isExpand = z10;
        }

        public void setImg(String str) {
            this.img = str;
        }

        public void setInfoId(int i9) {
            this.infoId = i9;
        }

        public void setIsLiveDynamic(int i9) {
            this.isLiveDynamic = i9;
        }

        public void setIs_tutual(int i9) {
            this.is_tutual = i9;
        }

        public void setNickName(String str) {
            this.nickName = str;
        }

        public void setSex(int i9) {
            this.sex = i9;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public void setTypeId(int i9) {
            this.typeId = i9;
        }

        public void setUrl(String str) {
            this.url = str;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public void setVideoImg(String str) {
            this.videoImg = str;
        }
    }

    public int getCurrPage() {
        return this.currPage;
    }

    public List<ListBean> getList() {
        return this.list;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public int getTotalCount() {
        return this.totalCount;
    }

    public int getTotalPage() {
        return this.totalPage;
    }

    public void setCurrPage(int i9) {
        this.currPage = i9;
    }

    public void setList(List<ListBean> list) {
        this.list = list;
    }

    public void setPageSize(int i9) {
        this.pageSize = i9;
    }

    public void setTotalCount(int i9) {
        this.totalCount = i9;
    }

    public void setTotalPage(int i9) {
        this.totalPage = i9;
    }
}
