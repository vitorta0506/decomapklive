package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class WithdrawalRecord implements Parcelable {
    public static final Parcelable.Creator<WithdrawalRecord> CREATOR = new Parcelable.Creator<WithdrawalRecord>() { // from class: com.guochao.faceshow.aaspring.beans.WithdrawalRecord.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WithdrawalRecord createFromParcel(Parcel parcel) {
            return new WithdrawalRecord(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WithdrawalRecord[] newArray(int i9) {
            return new WithdrawalRecord[i9];
        }
    };
    private int aid;
    private String amount;
    private int amount_type;
    private long applayTime;
    private int pay_type;

    public WithdrawalRecord() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAid() {
        return this.aid;
    }

    public String getAmount() {
        return this.amount;
    }

    public int getAmount_type() {
        return this.amount_type;
    }

    public long getApplayTime() {
        return this.applayTime;
    }

    public int getPay_type() {
        return this.pay_type;
    }

    public void setAid(int i9) {
        this.aid = i9;
    }

    public void setAmount(String str) {
        this.amount = str;
    }

    public void setAmount_type(int i9) {
        this.amount_type = i9;
    }

    public void setApplayTime(long j10) {
        this.applayTime = j10;
    }

    public void setPay_type(int i9) {
        this.pay_type = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.aid);
        parcel.writeString(this.amount);
        parcel.writeInt(this.amount_type);
        parcel.writeLong(this.applayTime);
        parcel.writeInt(this.pay_type);
    }

    protected WithdrawalRecord(Parcel parcel) {
        this.aid = parcel.readInt();
        this.amount = parcel.readString();
        this.amount_type = parcel.readInt();
        this.applayTime = parcel.readLong();
        this.pay_type = parcel.readInt();
    }
}
