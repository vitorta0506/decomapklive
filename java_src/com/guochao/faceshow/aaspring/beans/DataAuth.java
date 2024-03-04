package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class DataAuth implements Parcelable {
    public static final Parcelable.Creator<DataAuth> CREATOR = new Parcelable.Creator<DataAuth>() { // from class: com.guochao.faceshow.aaspring.beans.DataAuth.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DataAuth createFromParcel(Parcel parcel) {
            return new DataAuth(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DataAuth[] newArray(int i9) {
            return new DataAuth[i9];
        }
    };
    private int applyState;
    private String applyTime;
    private int appointAuth;
    private int appointState;
    private String dateLang;
    private String gifUrl;
    private String userId;

    public DataAuth() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getApplyState() {
        return this.applyState;
    }

    public String getApplyTime() {
        return this.applyTime;
    }

    public int getAppointAuth() {
        return this.appointAuth;
    }

    public int getAppointState() {
        return this.appointState;
    }

    public String getDateLang() {
        return this.dateLang;
    }

    public String getGifUrl() {
        return this.gifUrl;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setApplyState(int i9) {
        this.applyState = i9;
    }

    public void setApplyTime(String str) {
        this.applyTime = str;
    }

    public void setAppointAuth(int i9) {
        this.appointAuth = i9;
    }

    public void setAppointState(int i9) {
        this.appointState = i9;
    }

    public void setDateLang(String str) {
        this.dateLang = str;
    }

    public void setGifUrl(String str) {
        this.gifUrl = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.userId);
        parcel.writeString(this.applyTime);
        parcel.writeInt(this.applyState);
        parcel.writeInt(this.appointState);
        parcel.writeString(this.dateLang);
        parcel.writeInt(this.appointAuth);
        parcel.writeString(this.gifUrl);
    }

    protected DataAuth(Parcel parcel) {
        this.userId = parcel.readString();
        this.applyTime = parcel.readString();
        this.applyState = parcel.readInt();
        this.appointState = parcel.readInt();
        this.dateLang = parcel.readString();
        this.appointAuth = parcel.readInt();
        this.gifUrl = parcel.readString();
    }
}
