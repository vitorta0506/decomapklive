package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class UgcTopicBean implements Parcelable {
    public static final Parcelable.Creator<UgcTopicBean> CREATOR = new Parcelable.Creator<UgcTopicBean>() { // from class: com.guochao.faceshow.aaspring.beans.UgcTopicBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UgcTopicBean createFromParcel(Parcel parcel) {
            return new UgcTopicBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UgcTopicBean[] newArray(int i9) {
            return new UgcTopicBean[i9];
        }
    };
    private int partakeTimes;
    private String topicId;
    private String topicName;

    public UgcTopicBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getPartakeTimes() {
        return this.partakeTimes;
    }

    public String getTopicId() {
        return this.topicId;
    }

    public String getTopicName() {
        return this.topicName;
    }

    public void setPartakeTimes(int i9) {
        this.partakeTimes = i9;
    }

    public void setTopicId(String str) {
        this.topicId = str;
    }

    public void setTopicName(String str) {
        this.topicName = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.topicId);
        parcel.writeString(this.topicName);
        parcel.writeInt(this.partakeTimes);
    }

    protected UgcTopicBean(Parcel parcel) {
        this.topicId = parcel.readString();
        this.topicName = parcel.readString();
        this.partakeTimes = parcel.readInt();
    }
}
