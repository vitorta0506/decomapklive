package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class UserGiftNotifyBean {
    private int currPage;
    private List<ListBean> list;
    private int pageSize;
    private int totalCount;
    private int totalPage;

    /* loaded from: classes3.dex */
    public static class ListBean {
        private int account;
        private String content;
        private String contentDate;
        private String countryFlag;
        private String fromImg;
        private String fromNickName;
        private int fromSex;
        private int giftId;
        private String giftImg;
        private String giftName;
        private int giftNum;
        private String giftTypeName;
        private int height;
        private int itemId;
        private String messageType;
        private int sendType;
        private String unreadCount;
        private String userId;
        private UserVipData userVipMsg;
        private String videoId;
        private String videoImg;
        private String videoUrl;
        private int width;

        public int getAccount() {
            return this.account;
        }

        public String getContent() {
            return this.content;
        }

        public String getContentDate() {
            return this.contentDate;
        }

        public String getCountryFlag() {
            return this.countryFlag;
        }

        public String getFromImg() {
            return this.fromImg;
        }

        public String getFromNickName() {
            return this.fromNickName;
        }

        public int getFromSex() {
            return this.fromSex;
        }

        public int getGiftId() {
            return this.giftId;
        }

        public String getGiftImg() {
            return this.giftImg;
        }

        public String getGiftName() {
            return this.giftName;
        }

        public int getGiftNum() {
            return this.giftNum;
        }

        public String getGiftTypeName() {
            return this.giftTypeName;
        }

        public int getHeight() {
            return this.height;
        }

        public int getItemId() {
            return this.itemId;
        }

        public String getMessageType() {
            return this.messageType;
        }

        public int getSendType() {
            return this.sendType;
        }

        public String getUnreadCount() {
            return this.unreadCount;
        }

        public String getUserId() {
            return this.userId;
        }

        public UserVipData getUserVipMsg() {
            return this.userVipMsg;
        }

        public String getVideoId() {
            return this.videoId;
        }

        public String getVideoImg() {
            return this.videoImg;
        }

        public String getVideoUrl() {
            return this.videoUrl;
        }

        public int getWidth() {
            return this.width;
        }

        public void setAccount(int i9) {
            this.account = i9;
        }

        public void setContent(String str) {
            this.content = str;
        }

        public void setContentDate(String str) {
            this.contentDate = str;
        }

        public void setCountryFlag(String str) {
            this.countryFlag = str;
        }

        public void setFromImg(String str) {
            this.fromImg = str;
        }

        public void setFromNickName(String str) {
            this.fromNickName = str;
        }

        public void setFromSex(int i9) {
            this.fromSex = i9;
        }

        public void setGiftId(int i9) {
            this.giftId = i9;
        }

        public void setGiftImg(String str) {
            this.giftImg = str;
        }

        public void setGiftName(String str) {
            this.giftName = str;
        }

        public void setGiftNum(int i9) {
            this.giftNum = i9;
        }

        public void setGiftTypeName(String str) {
            this.giftTypeName = str;
        }

        public void setHeight(int i9) {
            this.height = i9;
        }

        public void setItemId(int i9) {
            this.itemId = i9;
        }

        public void setMessageType(String str) {
            this.messageType = str;
        }

        public void setSendType(int i9) {
            this.sendType = i9;
        }

        public void setUnreadCount(String str) {
            this.unreadCount = str;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public void setUserVipMsg(UserVipData userVipData) {
            this.userVipMsg = userVipData;
        }

        public void setVideoId(String str) {
            this.videoId = str;
        }

        public void setVideoImg(String str) {
            this.videoImg = str;
        }

        public void setVideoUrl(String str) {
            this.videoUrl = str;
        }

        public void setWidth(int i9) {
            this.width = i9;
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
