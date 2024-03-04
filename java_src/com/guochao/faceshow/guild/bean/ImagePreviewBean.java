package com.guochao.faceshow.guild.bean;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import com.previewlibrary.enitity.IThumbViewInfo;
/* loaded from: classes4.dex */
public class ImagePreviewBean implements IThumbViewInfo {
    public static final Parcelable.Creator<ImagePreviewBean> CREATOR = new Parcelable.Creator<ImagePreviewBean>() { // from class: com.guochao.faceshow.guild.bean.ImagePreviewBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImagePreviewBean createFromParcel(Parcel parcel) {
            return new ImagePreviewBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ImagePreviewBean[] newArray(int i9) {
            return new ImagePreviewBean[i9];
        }
    };
    private Rect mBounds;
    private String url;
    private String user;
    private String videoUrl;

    public ImagePreviewBean(String str) {
        this.user = "用户字段";
        this.url = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.previewlibrary.enitity.IThumbViewInfo
    public Rect getBounds() {
        return this.mBounds;
    }

    @Override // com.previewlibrary.enitity.IThumbViewInfo
    public String getUrl() {
        return this.url;
    }

    public String getUser() {
        return this.user;
    }

    @Override // com.previewlibrary.enitity.IThumbViewInfo
    public String getVideoUrl() {
        return this.videoUrl;
    }

    public void setBounds(Rect rect) {
        this.mBounds = rect;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setUser(String str) {
        this.user = str;
    }

    public void setVideoUrl(String str) {
        this.videoUrl = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.url);
        parcel.writeParcelable(this.mBounds, i9);
        parcel.writeString(this.user);
        parcel.writeString(this.videoUrl);
    }

    public ImagePreviewBean(String str, String str2) {
        this.user = "用户字段";
        this.url = str2;
        this.videoUrl = str;
    }

    protected ImagePreviewBean(Parcel parcel) {
        this.user = "用户字段";
        this.url = parcel.readString();
        this.mBounds = (Rect) parcel.readParcelable(Rect.class.getClassLoader());
        this.user = parcel.readString();
        this.videoUrl = parcel.readString();
    }
}
