package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class FeedbackHistoryBean implements Parcelable {
    public static final Parcelable.Creator<FeedbackHistoryBean> CREATOR = new Parcelable.Creator<FeedbackHistoryBean>() { // from class: com.guochao.faceshow.aaspring.beans.FeedbackHistoryBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FeedbackHistoryBean createFromParcel(Parcel parcel) {
            return new FeedbackHistoryBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FeedbackHistoryBean[] newArray(int i9) {
            return new FeedbackHistoryBean[i9];
        }
    };
    private long createTime;
    private String detail;
    private int feedQuestionId;
    private int isNewAnswer;
    private int status;

    public FeedbackHistoryBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    public String getDetail() {
        return this.detail;
    }

    public int getFeedQuestionId() {
        return this.feedQuestionId;
    }

    public int getIsNewAnswer() {
        return this.isNewAnswer;
    }

    public int getStatus() {
        return this.status;
    }

    public void setCreateTime(long j10) {
        this.createTime = j10;
    }

    public void setDetail(String str) {
        this.detail = str;
    }

    public void setFeedQuestionId(int i9) {
        this.feedQuestionId = i9;
    }

    public void setIsNewAnswer(int i9) {
        this.isNewAnswer = i9;
    }

    public void setStatus(int i9) {
        this.status = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.status);
        parcel.writeInt(this.feedQuestionId);
        parcel.writeString(this.detail);
        parcel.writeInt(this.isNewAnswer);
        parcel.writeLong(this.createTime);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FeedbackHistoryBean(Parcel parcel) {
        this.status = parcel.readInt();
        this.feedQuestionId = parcel.readInt();
        this.detail = parcel.readString();
        this.isNewAnswer = parcel.readInt();
        this.createTime = parcel.readLong();
    }
}
