package com.guochao.faceshow.mine.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes4.dex */
public class HobbyBean implements Parcelable {
    public static final Parcelable.Creator<HobbyBean> CREATOR = new Parcelable.Creator<HobbyBean>() { // from class: com.guochao.faceshow.mine.model.HobbyBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HobbyBean createFromParcel(Parcel parcel) {
            return new HobbyBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HobbyBean[] newArray(int i9) {
            return new HobbyBean[i9];
        }
    };
    private String createTime;
    private int hobbyId;
    private boolean select;
    private String tags;
    private int type;

    public HobbyBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public int getHobbyId() {
        return this.hobbyId;
    }

    public String getTags() {
        return this.tags;
    }

    public int getType() {
        return this.type;
    }

    public boolean isSelect() {
        return this.select;
    }

    public void readFromParcel(Parcel parcel) {
        this.createTime = parcel.readString();
        this.hobbyId = parcel.readInt();
        this.type = parcel.readInt();
        this.tags = parcel.readString();
        this.select = parcel.readByte() != 0;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setHobbyId(int i9) {
        this.hobbyId = i9;
    }

    public void setSelect(boolean z10) {
        this.select = z10;
    }

    public void setTags(String str) {
        this.tags = str;
    }

    public void setType(int i9) {
        this.type = i9;
    }

    public String toString() {
        return "HobbyBean{createTime='" + this.createTime + "', hobbyId=" + this.hobbyId + ", type=" + this.type + ", tags='" + this.tags + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.createTime);
        parcel.writeInt(this.hobbyId);
        parcel.writeInt(this.type);
        parcel.writeString(this.tags);
        parcel.writeByte(this.select ? (byte) 1 : (byte) 0);
    }

    public HobbyBean(String str, int i9, int i10, String str2) {
        this.createTime = str;
        this.hobbyId = i9;
        this.type = i10;
        this.tags = str2;
    }

    protected HobbyBean(Parcel parcel) {
        this.createTime = parcel.readString();
        this.hobbyId = parcel.readInt();
        this.type = parcel.readInt();
        this.tags = parcel.readString();
        this.select = parcel.readByte() != 0;
    }
}
