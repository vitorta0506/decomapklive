package com.guochao.faceshow.aaspring.beans;

import android.net.Uri;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.File;
import java.util.Objects;
/* loaded from: classes3.dex */
public class LocalImageOrVideoBean implements Comparable<LocalImageOrVideoBean>, Parcelable {
    public static final Parcelable.Creator<LocalImageOrVideoBean> CREATOR = new Parcelable.Creator<LocalImageOrVideoBean>() { // from class: com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocalImageOrVideoBean createFromParcel(Parcel parcel) {
            return new LocalImageOrVideoBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocalImageOrVideoBean[] newArray(int i9) {
            return new LocalImageOrVideoBean[i9];
        }
    };
    private long createTime;
    private long duration;
    private String fileName;
    @FileType
    private int fileType;
    private int height;
    private Uri mUri;
    private String path;
    private int selectPosition;
    private boolean selectable;
    private boolean selected;
    private String thumbnailPath;
    private int width;

    /* loaded from: classes3.dex */
    public @interface FileType {
        public static final int TYPE_IMAGE = 1;
        public static final int TYPE_VIDEO = 2;
    }

    public LocalImageOrVideoBean(@FileType int i9) {
        this.fileType = i9;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.path, ((LocalImageOrVideoBean) obj).path);
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public Uri getDisplayUri() {
        Uri uri;
        return (Build.VERSION.SDK_INT < 29 || (uri = this.mUri) == null) ? Uri.fromFile(new File(this.path)) : uri;
    }

    public long getDuration() {
        return this.duration;
    }

    public String getFileName() {
        return this.fileName;
    }

    @FileType
    public int getFileType() {
        return this.fileType;
    }

    public int getHeight() {
        return this.height;
    }

    public String getPath() {
        return this.path;
    }

    public int getSelectPosition() {
        return this.selectPosition;
    }

    public String getThumbnailPath() {
        return this.thumbnailPath;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return Objects.hash(this.path);
    }

    public boolean isSelectable() {
        return this.selectable;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setCreateTime(long j10) {
        this.createTime = j10;
    }

    public void setDuration(long j10) {
        this.duration = j10;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public void setFileType(@FileType int i9) {
        this.fileType = i9;
    }

    public void setHeight(int i9) {
        this.height = i9;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setSelectPosition(int i9) {
        this.selectPosition = i9;
    }

    public void setSelectable(boolean z10) {
        this.selectable = z10;
    }

    public void setSelected(boolean z10) {
        this.selected = z10;
    }

    public void setThumbnailPath(String str) {
        this.thumbnailPath = str;
    }

    public void setUri(Uri uri) {
        this.mUri = uri;
    }

    public void setWidth(int i9) {
        this.width = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.path);
        parcel.writeLong(this.createTime);
        parcel.writeByte(this.selected ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeLong(this.duration);
        parcel.writeInt(this.fileType);
        parcel.writeString(this.thumbnailPath);
        parcel.writeByte(this.selectable ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.selectPosition);
        parcel.writeParcelable(this.mUri, i9);
        parcel.writeString(this.fileName);
    }

    @Override // java.lang.Comparable
    public int compareTo(LocalImageOrVideoBean localImageOrVideoBean) {
        if (localImageOrVideoBean == null) {
            return 1;
        }
        long j10 = this.createTime;
        long j11 = localImageOrVideoBean.createTime;
        if (j10 == j11) {
            return 0;
        }
        return j10 - j11 > 0 ? -1 : 1;
    }

    protected LocalImageOrVideoBean(Parcel parcel) {
        this.path = parcel.readString();
        this.createTime = parcel.readLong();
        this.selected = parcel.readByte() != 0;
        this.width = parcel.readInt();
        this.height = parcel.readInt();
        this.duration = parcel.readLong();
        this.fileType = parcel.readInt();
        this.thumbnailPath = parcel.readString();
        this.selectable = parcel.readByte() != 0;
        this.selectPosition = parcel.readInt();
        this.mUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.fileName = parcel.readString();
    }
}
