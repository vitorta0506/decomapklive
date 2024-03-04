package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackHistoryDetailActivity;
import java.util.List;
/* loaded from: classes3.dex */
public class FeedbackHistoryDetailBean extends FeedbackHistoryBean implements FeedbackHistoryDetailActivity.f {
    public static final Parcelable.Creator<FeedbackHistoryDetailBean> CREATOR = new Parcelable.Creator<FeedbackHistoryDetailBean>() { // from class: com.guochao.faceshow.aaspring.beans.FeedbackHistoryDetailBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FeedbackHistoryDetailBean createFromParcel(Parcel parcel) {
            return new FeedbackHistoryDetailBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FeedbackHistoryDetailBean[] newArray(int i9) {
            return new FeedbackHistoryDetailBean[i9];
        }
    };
    private String detailId;
    private String evaluate;
    private int evaluateStore;
    private List<FeedbackQuestionDetailBean> feedBackQuestionDetails;
    private List<FeedbackFileInfo> fileList;
    private String typeName;

    /* loaded from: classes3.dex */
    public static class FeedbackQuestionDetailBean implements Parcelable, FeedbackHistoryDetailActivity.f {
        public static final Parcelable.Creator<FeedbackQuestionDetailBean> CREATOR = new Parcelable.Creator<FeedbackQuestionDetailBean>() { // from class: com.guochao.faceshow.aaspring.beans.FeedbackHistoryDetailBean.FeedbackQuestionDetailBean.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public FeedbackQuestionDetailBean createFromParcel(Parcel parcel) {
                return new FeedbackQuestionDetailBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public FeedbackQuestionDetailBean[] newArray(int i9) {
                return new FeedbackQuestionDetailBean[i9];
            }
        };
        private long createTime;
        private String createUserName;
        private int createUserType;
        private String detail;
        private List<FeedbackFileInfo> fileList;
        private boolean mShowScore;
        private int questionId;

        public FeedbackQuestionDetailBean() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public long getCreateTime() {
            return this.createTime;
        }

        public String getCreateUserName() {
            return this.createUserName;
        }

        public int getCreateUserType() {
            return this.createUserType;
        }

        public String getDetail() {
            return this.detail;
        }

        public List<FeedbackFileInfo> getFileList() {
            return this.fileList;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackHistoryDetailActivity.f
        public int getItemViewType(int i9) {
            return i9 == 1 ? 2 : 3;
        }

        public int getQuestionId() {
            return this.questionId;
        }

        public boolean getShowScore() {
            return this.mShowScore;
        }

        public void setCreateTime(long j10) {
            this.createTime = j10;
        }

        public void setCreateUserName(String str) {
            this.createUserName = str;
        }

        public void setCreateUserType(int i9) {
            this.createUserType = i9;
        }

        public void setDetail(String str) {
            this.detail = str;
        }

        public void setFileList(List<FeedbackFileInfo> list) {
            this.fileList = list;
        }

        public void setQuestionId(int i9) {
            this.questionId = i9;
        }

        public void setShowScore(boolean z10) {
            this.mShowScore = z10;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeInt(this.questionId);
            parcel.writeString(this.createUserName);
            parcel.writeInt(this.createUserType);
            parcel.writeString(this.detail);
            parcel.writeTypedList(this.fileList);
            parcel.writeLong(this.createTime);
        }

        protected FeedbackQuestionDetailBean(Parcel parcel) {
            this.questionId = parcel.readInt();
            this.createUserName = parcel.readString();
            this.createUserType = parcel.readInt();
            this.detail = parcel.readString();
            this.fileList = parcel.createTypedArrayList(FeedbackFileInfo.CREATOR);
            this.createTime = parcel.readLong();
        }
    }

    protected FeedbackHistoryDetailBean(Parcel parcel) {
        super(parcel);
        this.evaluate = parcel.readString();
        this.evaluateStore = parcel.readInt();
        this.detailId = parcel.readString();
        this.fileList = parcel.createTypedArrayList(FeedbackFileInfo.CREATOR);
        this.feedBackQuestionDetails = parcel.createTypedArrayList(FeedbackQuestionDetailBean.CREATOR);
        this.typeName = parcel.readString();
    }

    @Override // com.guochao.faceshow.aaspring.beans.FeedbackHistoryBean, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getDetailId() {
        return this.detailId;
    }

    public String getEvaluate() {
        return this.evaluate;
    }

    public int getEvaluateStore() {
        return this.evaluateStore;
    }

    public List<FeedbackQuestionDetailBean> getFeedBackQuestionDetails() {
        return this.feedBackQuestionDetails;
    }

    public List<FeedbackFileInfo> getFileList() {
        return this.fileList;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.customerservice.activity.FeedbackHistoryDetailActivity.f
    public int getItemViewType(int i9) {
        return 0;
    }

    public String getTypeName() {
        return this.typeName;
    }

    public void setDetailId(String str) {
        this.detailId = str;
    }

    public void setEvaluate(String str) {
        this.evaluate = str;
    }

    public void setEvaluateStore(int i9) {
        this.evaluateStore = i9;
    }

    public void setFeedBackQuestionDetails(List<FeedbackQuestionDetailBean> list) {
        this.feedBackQuestionDetails = list;
    }

    public void setFileList(List<FeedbackFileInfo> list) {
        this.fileList = list;
    }

    public void setTypeName(String str) {
        this.typeName = str;
    }

    @Override // com.guochao.faceshow.aaspring.beans.FeedbackHistoryBean, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeString(this.evaluate);
        parcel.writeInt(this.evaluateStore);
        parcel.writeString(this.detailId);
        parcel.writeTypedList(this.fileList);
        parcel.writeTypedList(this.feedBackQuestionDetails);
        parcel.writeString(this.typeName);
    }
}
