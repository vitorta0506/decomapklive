package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes3.dex */
public class LiveGameRecord {
    private List<LiveGameRecordBean> list;
    private int totalPage;

    /* loaded from: classes3.dex */
    public static class LiveGameRecordBean implements Parcelable {
        public static final Parcelable.Creator<LiveGameRecordBean> CREATOR = new Parcelable.Creator<LiveGameRecordBean>() { // from class: com.guochao.faceshow.aaspring.beans.LiveGameRecord.LiveGameRecordBean.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LiveGameRecordBean createFromParcel(Parcel parcel) {
                return new LiveGameRecordBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LiveGameRecordBean[] newArray(int i9) {
                return new LiveGameRecordBean[i9];
            }
        };
        private long createTime;
        private int diamondIn;
        private int diamondOut;

        public LiveGameRecordBean() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public long getCreateTime() {
            return this.createTime;
        }

        public int getDiamondIn() {
            return this.diamondIn;
        }

        public int getDiamondOut() {
            return this.diamondOut;
        }

        public void setCreateTime(long j10) {
            this.createTime = j10;
        }

        public void setDiamondIn(int i9) {
            this.diamondIn = i9;
        }

        public void setDiamondOut(int i9) {
            this.diamondOut = i9;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeInt(this.diamondOut);
            parcel.writeInt(this.diamondIn);
            parcel.writeLong(this.createTime);
        }

        protected LiveGameRecordBean(Parcel parcel) {
            this.diamondOut = parcel.readInt();
            this.diamondIn = parcel.readInt();
            this.createTime = parcel.readLong();
        }
    }

    public List<LiveGameRecordBean> getList() {
        return this.list;
    }

    public int getTotalPage() {
        return this.totalPage;
    }

    public void setList(List<LiveGameRecordBean> list) {
        this.list = list;
    }

    public void setTotalPage(int i9) {
        this.totalPage = i9;
    }
}
