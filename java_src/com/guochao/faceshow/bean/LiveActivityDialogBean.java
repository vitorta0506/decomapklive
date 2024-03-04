package com.guochao.faceshow.bean;

import java.util.List;
/* loaded from: classes3.dex */
public class LiveActivityDialogBean {
    private List<LiveItemBean> homePageFrame;
    private List<LiveItemBean> liveFrame;

    /* loaded from: classes3.dex */
    public static class LiveItemBean {
        private String clickUrl;

        /* renamed from: id  reason: collision with root package name */
        private int f25093id;
        private String img;
        private int isClick;
        private String name;
        private String shareImg;
        private String shareText;
        private int type;

        public String getClickUrl() {
            return this.clickUrl;
        }

        public int getId() {
            return this.f25093id;
        }

        public String getImg() {
            return this.img;
        }

        public int getIsClick() {
            return this.isClick;
        }

        public String getName() {
            return this.name;
        }

        public String getShareImg() {
            return this.shareImg;
        }

        public String getShareText() {
            return this.shareText;
        }

        public int getType() {
            return this.type;
        }

        public void setClickUrl(String str) {
            this.clickUrl = str;
        }

        public void setId(int i9) {
            this.f25093id = i9;
        }

        public void setImg(String str) {
            this.img = str;
        }

        public void setIsClick(int i9) {
            this.isClick = i9;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setShareImg(String str) {
            this.shareImg = str;
        }

        public void setShareText(String str) {
            this.shareText = str;
        }

        public void setType(int i9) {
            this.type = i9;
        }
    }

    public List<LiveItemBean> getHomePageFrame() {
        return this.homePageFrame;
    }

    public List<LiveItemBean> getLiveFrame() {
        return this.liveFrame;
    }

    public void setHomePageFrame(List<LiveItemBean> list) {
        this.homePageFrame = list;
    }

    public void setLiveFrame(List<LiveItemBean> list) {
        this.liveFrame = list;
    }
}
