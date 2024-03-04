package com.guochao.faceshow.aaspring.beans;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
/* loaded from: classes3.dex */
public class DynamicFile implements Serializable, Parcelable {
    public static final Parcelable.Creator<DynamicFile> CREATOR = new Parcelable.Creator<DynamicFile>() { // from class: com.guochao.faceshow.aaspring.beans.DynamicFile.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DynamicFile createFromParcel(Parcel parcel) {
            return new DynamicFile(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DynamicFile[] newArray(int i9) {
            return new DynamicFile[i9];
        }
    };
    private String createTime;
    private String fileId;
    private String fileSmallUrl;
    private String fileUrl;
    private String friendId;
    private int height;
    private int isViolator;
    private Uri mUri;
    private String mUriString;
    private int type;
    private int width;

    public DynamicFile() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public String getFileId() {
        return this.fileId;
    }

    public String getFileSmallUrl() {
        return this.fileSmallUrl;
    }

    public String getFileUrl() {
        return this.fileUrl;
    }

    public String getFriendId() {
        return this.friendId;
    }

    public int getHeight() {
        return this.height;
    }

    public int getIsViolator() {
        return this.isViolator;
    }

    public int getType() {
        return this.type;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public String getUriString() {
        return this.mUriString;
    }

    public int getWidth() {
        return this.width;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setFileId(String str) {
        this.fileId = str;
    }

    public void setFileSmallUrl(String str) {
        this.fileSmallUrl = str;
    }

    public void setFileUrl(String str) {
        this.fileUrl = str;
    }

    public void setFriendId(String str) {
        this.friendId = str;
    }

    public void setHeight(int i9) {
        this.height = i9;
    }

    public void setIsViolator(int i9) {
        this.isViolator = i9;
    }

    public void setType(int i9) {
        this.type = i9;
    }

    public void setUri(Uri uri) {
        this.mUri = uri;
    }

    public void setUriString(String str) {
        this.mUriString = str;
    }

    public void setWidth(int i9) {
        this.width = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.fileId);
        parcel.writeString(this.friendId);
        parcel.writeString(this.fileUrl);
        parcel.writeInt(this.type);
        parcel.writeString(this.createTime);
        parcel.writeString(this.fileSmallUrl);
        parcel.writeInt(this.isViolator);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeString(this.mUriString);
    }

    protected DynamicFile(Parcel parcel) {
        this.fileId = parcel.readString();
        this.friendId = parcel.readString();
        this.fileUrl = parcel.readString();
        this.type = parcel.readInt();
        this.createTime = parcel.readString();
        this.fileSmallUrl = parcel.readString();
        this.isViolator = parcel.readInt();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.mUriString = parcel.readString();
    }
}
