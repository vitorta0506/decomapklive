package com.guochao.faceshow.bean;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class CountryData implements Parcelable {
    public static final Parcelable.Creator<CountryData> CREATOR = new Parcelable.Creator<CountryData>() { // from class: com.guochao.faceshow.bean.CountryData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CountryData createFromParcel(Parcel parcel) {
            return new CountryData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CountryData[] newArray(int i9) {
            return new CountryData[i9];
        }
    };
    private String coding;
    private String content;
    private int countryId;
    private String countryNum;

    /* renamed from: id  reason: collision with root package name */
    private int f25091id;
    private String logo;

    public CountryData() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCoding() {
        return this.coding;
    }

    public String getContent() {
        return this.content;
    }

    public int getCountryId() {
        return this.countryId;
    }

    public String getCountryNum() {
        return this.countryNum;
    }

    public int getId() {
        return this.f25091id;
    }

    public String getLogo() {
        return this.logo;
    }

    public void setCoding(String str) {
        this.coding = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setCountryId(int i9) {
        this.countryId = i9;
    }

    public void setCountryNum(String str) {
        this.countryNum = str;
    }

    public void setId(int i9) {
        this.f25091id = i9;
    }

    public void setLogo(String str) {
        this.logo = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f25091id);
        parcel.writeInt(this.countryId);
        parcel.writeString(this.content);
        parcel.writeString(this.coding);
        parcel.writeString(this.logo);
        parcel.writeString(this.countryNum);
    }

    protected CountryData(Parcel parcel) {
        this.f25091id = parcel.readInt();
        this.countryId = parcel.readInt();
        this.content = parcel.readString();
        this.coding = parcel.readString();
        this.logo = parcel.readString();
        this.countryNum = parcel.readString();
    }
}
