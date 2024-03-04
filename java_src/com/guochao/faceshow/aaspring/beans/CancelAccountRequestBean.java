package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class CancelAccountRequestBean implements Parcelable {
    public static final Parcelable.Creator<CancelAccountRequestBean> CREATOR = new Parcelable.Creator<CancelAccountRequestBean>() { // from class: com.guochao.faceshow.aaspring.beans.CancelAccountRequestBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CancelAccountRequestBean createFromParcel(Parcel parcel) {
            return new CancelAccountRequestBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CancelAccountRequestBean[] newArray(int i9) {
            return new CancelAccountRequestBean[i9];
        }
    };
    private String checkList;
    private int createId;
    private String createTime;

    /* renamed from: id  reason: collision with root package name */
    private int f16305id;
    private String outTime;
    private int outUserId;
    private String reasonRemark;
    private int reasonType;
    private String securityKey;
    private int securityResult;
    private int securityType;
    private int status;
    private int userId;

    public CancelAccountRequestBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCheckList() {
        return this.checkList;
    }

    public int getCreateId() {
        return this.createId;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public int getId() {
        return this.f16305id;
    }

    public String getOutTime() {
        return this.outTime;
    }

    public int getOutUserId() {
        return this.outUserId;
    }

    public String getReasonRemark() {
        return this.reasonRemark;
    }

    public int getReasonType() {
        return this.reasonType;
    }

    public String getSecurityKey() {
        return this.securityKey;
    }

    public int getSecurityResult() {
        return this.securityResult;
    }

    public int getSecurityType() {
        return this.securityType;
    }

    public int getStatus() {
        return this.status;
    }

    public int getUserId() {
        return this.userId;
    }

    public void setCheckList(String str) {
        this.checkList = str;
    }

    public void setCreateId(int i9) {
        this.createId = i9;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setId(int i9) {
        this.f16305id = i9;
    }

    public void setOutTime(String str) {
        this.outTime = str;
    }

    public void setOutUserId(int i9) {
        this.outUserId = i9;
    }

    public void setReasonRemark(String str) {
        this.reasonRemark = str;
    }

    public void setReasonType(int i9) {
        this.reasonType = i9;
    }

    public void setSecurityKey(String str) {
        this.securityKey = str;
    }

    public void setSecurityResult(int i9) {
        this.securityResult = i9;
    }

    public void setSecurityType(int i9) {
        this.securityType = i9;
    }

    public void setStatus(int i9) {
        this.status = i9;
    }

    public void setUserId(int i9) {
        this.userId = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f16305id);
        parcel.writeInt(this.userId);
        parcel.writeInt(this.securityType);
        parcel.writeString(this.securityKey);
        parcel.writeInt(this.securityResult);
        parcel.writeInt(this.reasonType);
        parcel.writeString(this.reasonRemark);
        parcel.writeString(this.checkList);
        parcel.writeInt(this.status);
        parcel.writeString(this.createTime);
        parcel.writeInt(this.createId);
        parcel.writeString(this.outTime);
        parcel.writeInt(this.outUserId);
    }

    protected CancelAccountRequestBean(Parcel parcel) {
        this.f16305id = parcel.readInt();
        this.userId = parcel.readInt();
        this.securityType = parcel.readInt();
        this.securityKey = parcel.readString();
        this.securityResult = parcel.readInt();
        this.reasonType = parcel.readInt();
        this.reasonRemark = parcel.readString();
        this.checkList = parcel.readString();
        this.status = parcel.readInt();
        this.createTime = parcel.readString();
        this.createId = parcel.readInt();
        this.outTime = parcel.readString();
        this.outUserId = parcel.readInt();
    }
}
