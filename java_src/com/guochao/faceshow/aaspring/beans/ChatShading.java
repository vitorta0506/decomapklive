package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class ChatShading {
    private PageBean page;
    private long selcetTime;

    /* loaded from: classes3.dex */
    public static class ChatShadingData {
        private String dressUpId;
        private long expireTime;
        private String fileUrl;
        private String fontColor;
        private String introduction;
        private boolean isCheck;
        private boolean isClick;
        private int isUse;
        private String isVip;
        private int itemType;
        private String name;
        private String shadingImage;
        private String thumbnailImage;
        private String titleName;
        private int types;
        private String userId;

        public String getDressUpId() {
            return this.dressUpId;
        }

        public long getExpireTime() {
            return this.expireTime;
        }

        public String getFileUrl() {
            return this.fileUrl;
        }

        public String getFontColor() {
            return this.fontColor;
        }

        public String getIntroduction() {
            return this.introduction;
        }

        public int getIsUse() {
            return this.isUse;
        }

        public String getIsVip() {
            return this.isVip;
        }

        public int getItemType() {
            return this.itemType;
        }

        public String getName() {
            return this.name;
        }

        public String getShadingImage() {
            return this.shadingImage;
        }

        public String getThumbnailImage() {
            return this.thumbnailImage;
        }

        public String getTitleName() {
            return this.titleName;
        }

        public int getTypes() {
            return this.types;
        }

        public String getUserId() {
            return this.userId;
        }

        public boolean isCheck() {
            return this.isCheck;
        }

        public boolean isClick() {
            return this.isClick;
        }

        public void setCheck(boolean z10) {
            this.isCheck = z10;
        }

        public void setClick(boolean z10) {
            this.isClick = z10;
        }

        public void setDressUpId(String str) {
            this.dressUpId = str;
        }

        public void setExpireTime(long j10) {
            this.expireTime = j10;
        }

        public void setFileUrl(String str) {
            this.fileUrl = str;
        }

        public void setFontColor(String str) {
            this.fontColor = str;
        }

        public void setIntroduction(String str) {
            this.introduction = str;
        }

        public void setIsUse(int i9) {
            this.isUse = i9;
        }

        public void setIsVip(String str) {
            this.isVip = str;
        }

        public void setItemType(int i9) {
            this.itemType = i9;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setShadingImage(String str) {
            this.shadingImage = str;
        }

        public void setThumbnailImage(String str) {
            this.thumbnailImage = str;
        }

        public void setTitleName(String str) {
            this.titleName = str;
        }

        public void setTypes(int i9) {
            this.types = i9;
        }

        public void setUserId(String str) {
            this.userId = str;
        }
    }

    /* loaded from: classes3.dex */
    public static class PageBean {
        private int currPage;
        private List<ChatShadingData> list;
        private int pageSize;
        private int totalCount;
        private int totalPage;

        public int getCurrPage() {
            return this.currPage;
        }

        public List<ChatShadingData> getList() {
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

        public void setList(List<ChatShadingData> list) {
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

    public PageBean getPage() {
        return this.page;
    }

    public long getSelcetTime() {
        return this.selcetTime;
    }

    public void setPage(PageBean pageBean) {
        this.page = pageBean;
    }

    public void setSelcetTime(long j10) {
        this.selcetTime = j10;
    }
}
