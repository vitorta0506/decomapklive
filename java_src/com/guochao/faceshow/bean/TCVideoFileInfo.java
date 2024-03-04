package com.guochao.faceshow.bean;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class TCVideoFileInfo implements Parcelable {
    public static final Parcelable.Creator<TCVideoFileInfo> CREATOR = new Parcelable.Creator<TCVideoFileInfo>() { // from class: com.guochao.faceshow.bean.TCVideoFileInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TCVideoFileInfo createFromParcel(Parcel parcel) {
            return new TCVideoFileInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TCVideoFileInfo[] newArray(int i9) {
            return new TCVideoFileInfo[i9];
        }
    };
    private long duration;
    private String fileName;
    private boolean isSelected;
    private com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean mBean;
    private Uri mUri;
    private String thumbPath;

    public TCVideoFileInfo() {
        this.isSelected = false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Uri getDisplayUri() {
        return this.mBean.getDisplayUri();
    }

    public long getDuration() {
        return this.mBean.getDuration();
    }

    public String getFileName() {
        return this.mBean.getFileName();
    }

    public String getFilePath() {
        return this.mBean.getPath();
    }

    public String getThumbPath() {
        return this.mBean.getThumbnailPath();
    }

    public Uri getUri() {
        return getDisplayUri();
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setDuration(long j10) {
        this.mBean.setDuration(j10);
    }

    public void setFileName(String str) {
        this.mBean.setFileName(str);
    }

    public void setFilePath(String str) {
        this.mBean.setPath(str);
    }

    public void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    public void setThumbPath(String str) {
        this.mBean.setThumbnailPath(str);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.fileName);
        parcel.writeString(this.thumbPath);
        parcel.writeByte(this.isSelected ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.duration);
        parcel.writeParcelable(this.mUri, i9);
        parcel.writeParcelable(this.mBean, i9);
    }

    public TCVideoFileInfo(com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean localImageOrVideoBean) {
        this.isSelected = false;
        this.mBean = localImageOrVideoBean;
    }

    protected TCVideoFileInfo(Parcel parcel) {
        this.isSelected = false;
        this.fileName = parcel.readString();
        this.thumbPath = parcel.readString();
        this.isSelected = parcel.readByte() != 0;
        this.duration = parcel.readLong();
        this.mUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.mBean = (com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean) parcel.readParcelable(com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean.class.getClassLoader());
    }
}
