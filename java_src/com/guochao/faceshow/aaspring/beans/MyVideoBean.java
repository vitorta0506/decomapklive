package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes3.dex */
public class MyVideoBean implements Parcelable {
    public static final Parcelable.Creator<MyVideoBean> CREATOR = new Parcelable.Creator<MyVideoBean>() { // from class: com.guochao.faceshow.aaspring.beans.MyVideoBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MyVideoBean createFromParcel(Parcel parcel) {
            return new MyVideoBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MyVideoBean[] newArray(int i9) {
            return new MyVideoBean[i9];
        }
    };
    private List<VideoItem> list;
    private int page;
    private int pageSize;

    /* loaded from: classes3.dex */
    public static class MyVideoItemBean implements Parcelable {
        public static final Parcelable.Creator<MyVideoItemBean> CREATOR = new Parcelable.Creator<MyVideoItemBean>() { // from class: com.guochao.faceshow.aaspring.beans.MyVideoBean.MyVideoItemBean.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MyVideoItemBean createFromParcel(Parcel parcel) {
                return new MyVideoItemBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MyVideoItemBean[] newArray(int i9) {
                return new MyVideoItemBean[i9];
            }
        };
        private int browseCount;
        private int height;
        private String likeCount;
        private String musicName;
        private String musicUrl;
        private int privat;
        private String shortUrl;
        private String userId;
        private String userNick;
        private String videoId;
        private String videoImg;
        private String videoUrl;
        private int width;

        public MyVideoItemBean() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getBrowseCount() {
            return this.browseCount;
        }

        public int getHeight() {
            return this.height;
        }

        public String getLikeCount() {
            return this.likeCount;
        }

        public String getMusicName() {
            return this.musicName;
        }

        public String getMusicUrl() {
            return this.musicUrl;
        }

        public int getPrivat() {
            return this.privat;
        }

        public String getShortUrl() {
            return this.shortUrl;
        }

        public String getUserId() {
            return this.userId;
        }

        public String getUserNick() {
            return this.userNick;
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

        public VideoItem obtain() {
            VideoItem videoItem = new VideoItem();
            videoItem.setVideoId(this.videoId);
            videoItem.setVideoUrl(this.videoUrl);
            videoItem.setShortUrl(this.shortUrl);
            videoItem.setMusicName(this.musicName);
            videoItem.setMusicUrl(this.musicUrl);
            videoItem.setUserId(this.userId);
            videoItem.setUserNickName(this.userNick);
            try {
                videoItem.setVideoCollectionNum(Integer.parseInt(this.likeCount));
            } catch (Exception unused) {
            }
            videoItem.setWidth(String.valueOf(this.width));
            videoItem.setHeight(String.valueOf(this.height));
            videoItem.setShareNum(String.valueOf(this.browseCount));
            return videoItem;
        }

        public void setBrowseCount(int i9) {
            this.browseCount = i9;
        }

        public void setHeight(int i9) {
            this.height = i9;
        }

        public void setLikeCount(String str) {
            this.likeCount = str;
        }

        public void setMusicName(String str) {
            this.musicName = str;
        }

        public void setMusicUrl(String str) {
            this.musicUrl = str;
        }

        public void setPrivat(int i9) {
            this.privat = i9;
        }

        public void setShortUrl(String str) {
            this.shortUrl = str;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public void setUserNick(String str) {
            this.userNick = str;
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

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.videoId);
            parcel.writeString(this.videoUrl);
            parcel.writeString(this.videoImg);
            parcel.writeString(this.shortUrl);
            parcel.writeString(this.musicName);
            parcel.writeString(this.musicUrl);
            parcel.writeString(this.userId);
            parcel.writeString(this.userNick);
            parcel.writeInt(this.width);
            parcel.writeInt(this.height);
            parcel.writeInt(this.browseCount);
            parcel.writeString(this.likeCount);
            parcel.writeInt(this.privat);
        }

        protected MyVideoItemBean(Parcel parcel) {
            this.videoId = parcel.readString();
            this.videoUrl = parcel.readString();
            this.videoImg = parcel.readString();
            this.shortUrl = parcel.readString();
            this.musicName = parcel.readString();
            this.musicUrl = parcel.readString();
            this.userId = parcel.readString();
            this.userNick = parcel.readString();
            this.width = parcel.readInt();
            this.height = parcel.readInt();
            this.browseCount = parcel.readInt();
            this.likeCount = parcel.readString();
            this.privat = parcel.readInt();
        }
    }

    public MyVideoBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<VideoItem> getList() {
        return this.list;
    }

    public int getPage() {
        return this.page;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public void setList(List<VideoItem> list) {
        this.list = list;
    }

    public void setPage(int i9) {
        this.page = i9;
    }

    public void setPageSize(int i9) {
        this.pageSize = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.page);
        parcel.writeInt(this.pageSize);
        parcel.writeTypedList(this.list);
    }

    protected MyVideoBean(Parcel parcel) {
        this.page = parcel.readInt();
        this.pageSize = parcel.readInt();
        this.list = parcel.createTypedArrayList(VideoItem.CREATOR);
    }
}
