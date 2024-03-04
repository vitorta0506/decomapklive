package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class UgcDistanceTypeBean implements Parcelable {
    public static final Parcelable.Creator<UgcDistanceTypeBean> CREATOR = new Parcelable.Creator<UgcDistanceTypeBean>() { // from class: com.guochao.faceshow.aaspring.beans.UgcDistanceTypeBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UgcDistanceTypeBean createFromParcel(Parcel parcel) {
            return new UgcDistanceTypeBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UgcDistanceTypeBean[] newArray(int i9) {
            return new UgcDistanceTypeBean[i9];
        }
    };

    /* renamed from: id  reason: collision with root package name */
    private String f16320id;
    private String leftIconUrl;
    private int max;
    private int min;
    private String rightIconUrl;
    private String type;

    public UgcDistanceTypeBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getId() {
        return this.f16320id;
    }

    public String getLeftIconUrl() {
        return this.leftIconUrl;
    }

    public int getMax() {
        return this.max;
    }

    public int getMin() {
        return this.min;
    }

    public String getRightIconUrl() {
        return this.rightIconUrl;
    }

    public String getType() {
        return this.type;
    }

    public void setId(String str) {
        this.f16320id = str;
    }

    public void setLeftIconUrl(String str) {
        this.leftIconUrl = str;
    }

    public void setMax(int i9) {
        this.max = i9;
    }

    public void setMin(int i9) {
        this.min = i9;
    }

    public void setRightIconUrl(String str) {
        this.rightIconUrl = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.f16320id);
        parcel.writeString(this.type);
        parcel.writeInt(this.min);
        parcel.writeInt(this.max);
        parcel.writeString(this.leftIconUrl);
        parcel.writeString(this.rightIconUrl);
    }

    protected UgcDistanceTypeBean(Parcel parcel) {
        this.f16320id = parcel.readString();
        this.type = parcel.readString();
        this.min = parcel.readInt();
        this.max = parcel.readInt();
        this.leftIconUrl = parcel.readString();
        this.rightIconUrl = parcel.readString();
    }
}
