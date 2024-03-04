package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class UserNotifyBean {
    private int currPage;
    private List<ListBean> list;
    private int pageSize;
    private int totalCount;
    private int totalPage;

    /* loaded from: classes3.dex */
    public static class ListBean {
        private int accountId;
        private String content;
        private String countryFlag;
        private String createTime;
        private Comment friendRingCommentNewVo;
        private String height;
        private String img;
        private String infoDetail;
        private String infoId;
        private int isLiveDynamic;
        private int is_tutual;
        private String liveDynamicUrl;
        private String nickName;
        private String refContent;
        private String refId;
        private String refImg;
        private int sex;
        private String title;
        private int typeId;
        private String url;
        private String userId;
        private UserVipData userVipMsg;
        private Comment videoCommentParent;
        private String videoImg;
        private String width;

        public int getAccountId() {
            return this.accountId;
        }

        public String getContent() {
            return this.content;
        }

        public String getCountryFlag() {
            return this.countryFlag;
        }

        public String getCreateTime() {
            return this.createTime;
        }

        public Comment getFriendRingCommentNewVo() {
            return this.friendRingCommentNewVo;
        }

        public String getHeight() {
            return this.height;
        }

        public String getImg() {
            return this.img;
        }

        public String getInfoDetail() {
            return this.infoDetail;
        }

        public String getInfoId() {
            return this.infoId;
        }

        public int getIsLiveDynamic() {
            return this.isLiveDynamic;
        }

        public int getIs_tutual() {
            return this.is_tutual;
        }

        public String getLiveDynamicUrl() {
            return this.liveDynamicUrl;
        }

        public String getNickName() {
            return this.nickName;
        }

        public String getRefContent() {
            return this.refContent;
        }

        public String getRefId() {
            return this.refId;
        }

        public String getRefImg() {
            return this.refImg;
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

        public UserVipData getUserVipMsg() {
            return this.userVipMsg;
        }

        public Comment getVideoCommentParent() {
            return this.videoCommentParent;
        }

        public String getVideoImg() {
            return this.videoImg;
        }

        public String getWidth() {
            return this.width;
        }

        public void setAccountId(int i9) {
            this.accountId = i9;
        }

        public void setContent(String str) {
            this.content = str;
        }

        public void setCountryFlag(String str) {
            this.countryFlag = str;
        }

        public void setCreateTime(String str) {
            this.createTime = str;
        }

        public void setFriendRingCommentNewVo(Comment comment) {
            this.friendRingCommentNewVo = comment;
        }

        public void setHeight(String str) {
            this.height = str;
        }

        public void setImg(String str) {
            this.img = str;
        }

        public void setInfoDetail(String str) {
            this.infoDetail = str;
        }

        public void setInfoId(String str) {
            this.infoId = str;
        }

        public void setIsLiveDynamic(int i9) {
            this.isLiveDynamic = i9;
        }

        public void setIs_tutual(int i9) {
            this.is_tutual = i9;
        }

        public void setLiveDynamicUrl(String str) {
            this.liveDynamicUrl = str;
        }

        public void setNickName(String str) {
            this.nickName = str;
        }

        public void setRefContent(String str) {
            this.refContent = str;
        }

        public void setRefId(String str) {
            this.refId = str;
        }

        public void setRefImg(String str) {
            this.refImg = str;
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

        public void setUserVipMsg(UserVipData userVipData) {
            this.userVipMsg = userVipData;
        }

        public void setVideoCommentParent(Comment comment) {
            this.videoCommentParent = comment;
        }

        public void setVideoImg(String str) {
            this.videoImg = str;
        }

        public void setWidth(String str) {
            this.width = str;
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
