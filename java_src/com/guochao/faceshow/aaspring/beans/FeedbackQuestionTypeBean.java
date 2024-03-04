package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class FeedbackQuestionTypeBean implements Parcelable {
    public static final Parcelable.Creator<FeedbackQuestionTypeBean> CREATOR = new Parcelable.Creator<FeedbackQuestionTypeBean>() { // from class: com.guochao.faceshow.aaspring.beans.FeedbackQuestionTypeBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FeedbackQuestionTypeBean createFromParcel(Parcel parcel) {
            return new FeedbackQuestionTypeBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FeedbackQuestionTypeBean[] newArray(int i9) {
            return new FeedbackQuestionTypeBean[i9];
        }
    };
    private String name;
    private int type;
    private int typeId;

    protected FeedbackQuestionTypeBean(Parcel parcel) {
        this.typeId = parcel.readInt();
        this.name = parcel.readString();
        this.type = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getName() {
        return this.name;
    }

    public int getType() {
        return this.type;
    }

    public int getTypeId() {
        return this.typeId;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setType(int i9) {
        this.type = i9;
    }

    public void setTypeId(int i9) {
        this.typeId = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.typeId);
        parcel.writeString(this.name);
        parcel.writeInt(this.type);
    }

    public FeedbackQuestionTypeBean() {
    }
}
