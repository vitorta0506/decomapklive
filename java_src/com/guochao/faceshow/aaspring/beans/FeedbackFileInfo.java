package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes3.dex */
public class FeedbackFileInfo implements Parcelable {
    public static final Parcelable.Creator<FeedbackFileInfo> CREATOR = new Parcelable.Creator<FeedbackFileInfo>() { // from class: com.guochao.faceshow.aaspring.beans.FeedbackFileInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FeedbackFileInfo createFromParcel(Parcel parcel) {
            return new FeedbackFileInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FeedbackFileInfo[] newArray(int i9) {
            return new FeedbackFileInfo[i9];
        }
    };
    private int fileType;
    private int height;
    private String smallUrl;
    private String url;
    @SerializedName(Contants.Weight)
    private int width;

    public FeedbackFileInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getFileType() {
        return this.fileType;
    }

    public int getHeight() {
        return this.height;
    }

    public String getSmallUrl() {
        if (TextUtils.isEmpty(this.smallUrl)) {
            return getUrl();
        }
        return this.smallUrl;
    }

    public String getUrl() {
        return this.url;
    }

    public int getWidth() {
        return this.width;
    }

    public void setFileType(int i9) {
        this.fileType = i9;
    }

    public void setHeight(int i9) {
        this.height = i9;
    }

    public void setSmallUrl(String str) {
        this.smallUrl = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setWidth(int i9) {
        this.width = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.url);
        parcel.writeString(this.smallUrl);
        parcel.writeInt(this.fileType);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
    }

    protected FeedbackFileInfo(Parcel parcel) {
        this.url = parcel.readString();
        this.smallUrl = parcel.readString();
        this.fileType = parcel.readInt();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
    }
}
