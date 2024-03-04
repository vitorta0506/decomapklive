package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class ResidenceBean implements Parcelable {
    public static final Parcelable.Creator<ResidenceBean> CREATOR = new Parcelable.Creator<ResidenceBean>() { // from class: com.guochao.faceshow.aaspring.beans.ResidenceBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResidenceBean createFromParcel(Parcel parcel) {
            return new ResidenceBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResidenceBean[] newArray(int i9) {
            return new ResidenceBean[i9];
        }
    };
    private String cname;
    private int country_id;
    private String country_num;
    private boolean isCheck;
    private String logo;

    public ResidenceBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCname() {
        return this.cname;
    }

    public int getCountry_id() {
        return this.country_id;
    }

    public String getCountry_num() {
        return this.country_num;
    }

    public String getLogo() {
        return this.logo;
    }

    public boolean isCheck() {
        return this.isCheck;
    }

    public void setCheck(boolean z10) {
        this.isCheck = z10;
    }

    public void setCname(String str) {
        this.cname = str;
    }

    public void setCountry_id(int i9) {
        this.country_id = i9;
    }

    public void setCountry_num(String str) {
        this.country_num = str;
    }

    public void setLogo(String str) {
        this.logo = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.cname);
        parcel.writeString(this.logo);
        parcel.writeInt(this.country_id);
        parcel.writeString(this.country_num);
        parcel.writeByte(this.isCheck ? (byte) 1 : (byte) 0);
    }

    protected ResidenceBean(Parcel parcel) {
        this.cname = parcel.readString();
        this.logo = parcel.readString();
        this.country_id = parcel.readInt();
        this.country_num = parcel.readString();
        this.isCheck = parcel.readByte() != 0;
    }
}
