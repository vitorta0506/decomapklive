package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class VipComboDate implements Parcelable, Comparable<VipComboDate> {
    public static final Parcelable.Creator<VipComboDate> CREATOR = new Parcelable.Creator<VipComboDate>() { // from class: com.guochao.faceshow.aaspring.beans.VipComboDate.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VipComboDate createFromParcel(Parcel parcel) {
            return new VipComboDate(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VipComboDate[] newArray(int i9) {
            return new VipComboDate[i9];
        }
    };
    private String actrualPrice;
    private String actrualUnitPrice;
    private String comboName;
    private String duration;

    /* renamed from: id  reason: collision with root package name */
    private String f16322id;
    private int isDiscount;
    private int model;
    private int show;
    private int terminal;
    private String totalPrice;
    private int unit;
    private String unitPrice;

    public VipComboDate() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getActrualPrice() {
        return this.actrualPrice;
    }

    public String getActrualUnitPrice() {
        return this.actrualUnitPrice;
    }

    public String getComboName() {
        return this.comboName;
    }

    public String getDuration() {
        return this.duration;
    }

    public String getId() {
        return this.f16322id;
    }

    public int getIsDiscount() {
        return this.isDiscount;
    }

    public int getModel() {
        return this.model;
    }

    public int getShow() {
        return this.show;
    }

    public int getTerminal() {
        return this.terminal;
    }

    public String getTotalPrice() {
        return this.totalPrice;
    }

    public int getUnit() {
        return this.unit;
    }

    public String getUnitPrice() {
        return this.unitPrice;
    }

    public void readFromParcel(Parcel parcel) {
        this.f16322id = parcel.readString();
        this.unit = parcel.readInt();
        this.duration = parcel.readString();
        this.unitPrice = parcel.readString();
        this.totalPrice = parcel.readString();
        this.actrualPrice = parcel.readString();
        this.actrualUnitPrice = parcel.readString();
        this.isDiscount = parcel.readInt();
        this.model = parcel.readInt();
        this.terminal = parcel.readInt();
        this.comboName = parcel.readString();
        this.show = parcel.readInt();
    }

    public void setActrualPrice(String str) {
        this.actrualPrice = str;
    }

    public void setActrualUnitPrice(String str) {
        this.actrualUnitPrice = str;
    }

    public void setComboName(String str) {
        this.comboName = str;
    }

    public void setDuration(String str) {
        this.duration = str;
    }

    public void setId(String str) {
        this.f16322id = str;
    }

    public void setIsDiscount(int i9) {
        this.isDiscount = i9;
    }

    public void setModel(int i9) {
        this.model = i9;
    }

    public void setShow(int i9) {
        this.show = i9;
    }

    public void setTerminal(int i9) {
        this.terminal = i9;
    }

    public void setTotalPrice(String str) {
        this.totalPrice = str;
    }

    public void setUnit(int i9) {
        this.unit = i9;
    }

    public void setUnitPrice(String str) {
        this.unitPrice = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.f16322id);
        parcel.writeInt(this.unit);
        parcel.writeString(this.duration);
        parcel.writeString(this.unitPrice);
        parcel.writeString(this.totalPrice);
        parcel.writeString(this.actrualPrice);
        parcel.writeString(this.actrualUnitPrice);
        parcel.writeInt(this.isDiscount);
        parcel.writeInt(this.model);
        parcel.writeInt(this.terminal);
        parcel.writeString(this.comboName);
        parcel.writeInt(this.show);
    }

    protected VipComboDate(Parcel parcel) {
        this.f16322id = parcel.readString();
        this.unit = parcel.readInt();
        this.duration = parcel.readString();
        this.unitPrice = parcel.readString();
        this.totalPrice = parcel.readString();
        this.actrualPrice = parcel.readString();
        this.actrualUnitPrice = parcel.readString();
        this.isDiscount = parcel.readInt();
        this.model = parcel.readInt();
        this.terminal = parcel.readInt();
        this.comboName = parcel.readString();
        this.show = parcel.readInt();
    }

    @Override // java.lang.Comparable
    public int compareTo(VipComboDate vipComboDate) {
        return getShow() - vipComboDate.getShow();
    }
}
