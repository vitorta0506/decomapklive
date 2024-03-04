package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class WithdrawSpecificationList implements Parcelable {
    public static final Parcelable.Creator<WithdrawSpecificationList> CREATOR = new Parcelable.Creator<WithdrawSpecificationList>() { // from class: com.guochao.faceshow.aaspring.beans.WithdrawSpecificationList.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WithdrawSpecificationList createFromParcel(Parcel parcel) {
            return new WithdrawSpecificationList(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WithdrawSpecificationList[] newArray(int i9) {
            return new WithdrawSpecificationList[i9];
        }
    };
    private int isOnlyFirst;
    private int priority;
    private String ruleId;
    private int withdrawMoeny;

    public WithdrawSpecificationList(int i9, int i10) {
        this.withdrawMoeny = i9;
        this.isOnlyFirst = i10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getIsOnlyFirst() {
        return this.isOnlyFirst;
    }

    public int getPriority() {
        return this.priority;
    }

    public String getRuleId() {
        return this.ruleId;
    }

    public int getWithdrawMoeny() {
        return this.withdrawMoeny;
    }

    public void readFromParcel(Parcel parcel) {
        this.ruleId = parcel.readString();
        this.withdrawMoeny = parcel.readInt();
        this.priority = parcel.readInt();
        this.isOnlyFirst = parcel.readInt();
    }

    public void setIsOnlyFirst(int i9) {
        this.isOnlyFirst = i9;
    }

    public void setPriority(int i9) {
        this.priority = i9;
    }

    public void setRuleId(String str) {
        this.ruleId = str;
    }

    public void setWithdrawMoeny(int i9) {
        this.withdrawMoeny = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.ruleId);
        parcel.writeInt(this.withdrawMoeny);
        parcel.writeInt(this.priority);
        parcel.writeInt(this.isOnlyFirst);
    }

    public WithdrawSpecificationList() {
    }

    protected WithdrawSpecificationList(Parcel parcel) {
        this.ruleId = parcel.readString();
        this.withdrawMoeny = parcel.readInt();
        this.priority = parcel.readInt();
        this.isOnlyFirst = parcel.readInt();
    }
}
