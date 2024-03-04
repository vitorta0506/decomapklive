package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class ShareContentBean implements Parcelable {
    public static final Parcelable.Creator<ShareContentBean> CREATOR = new Parcelable.Creator<ShareContentBean>() { // from class: com.guochao.faceshow.aaspring.beans.ShareContentBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareContentBean createFromParcel(Parcel parcel) {
            return new ShareContentBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ShareContentBean[] newArray(int i9) {
            return new ShareContentBean[i9];
        }
    };
    private String content;
    private String friendId;
    private String imgUrl;
    private int shareType;
    private String shortUrl;
    private String title;

    protected ShareContentBean(Parcel parcel) {
        this.shortUrl = parcel.readString();
        this.imgUrl = parcel.readString();
        this.title = parcel.readString();
        this.content = parcel.readString();
        this.shareType = parcel.readInt();
        this.friendId = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getContent() {
        return this.content;
    }

    public String getFriendId() {
        return this.friendId;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public int getShareType() {
        return this.shareType;
    }

    public String getShortUrl() {
        return this.shortUrl;
    }

    public String getTitle() {
        return this.title;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setFriendId(String str) {
        this.friendId = str;
    }

    public void setImgUrl(String str) {
        this.imgUrl = str;
    }

    public void setShareType(int i9) {
        this.shareType = i9;
    }

    public void setShortUrl(String str) {
        this.shortUrl = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.shortUrl);
        parcel.writeString(this.imgUrl);
        parcel.writeString(this.title);
        parcel.writeString(this.content);
        parcel.writeInt(this.shareType);
        parcel.writeString(this.friendId);
    }

    public ShareContentBean() {
    }
}
