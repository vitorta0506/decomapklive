package com.guochao.faceshow.aaspring.modulars.live.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public class TreasureMessage extends BaseLiveMessage {
    @SerializedName("manyStrips")
    private List<BigGiftBox> mBigGiftBoxes;

    /* loaded from: classes3.dex */
    public static class BigGiftBox implements Parcelable, Comparable<BigGiftBox> {
        public static final Parcelable.Creator<BigGiftBox> CREATOR = new Parcelable.Creator<BigGiftBox>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.TreasureMessage.BigGiftBox.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BigGiftBox createFromParcel(Parcel parcel) {
                return new BigGiftBox(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BigGiftBox[] newArray(int i9) {
                return new BigGiftBox[i9];
            }
        };
        private boolean animating;
        private int boxType;
        private long createTime;
        private long phoneEndTime;
        private long phoneTime;
        @SerializedName(alternate = {"thisTime"}, value = RemoteMessageConst.SEND_TIME)
        private long sendTime;
        private String treasureId;
        private long treasureOpenTime;

        protected BigGiftBox(Parcel parcel) {
            this.treasureId = parcel.readString();
            this.createTime = parcel.readLong();
            this.treasureOpenTime = parcel.readLong();
            this.animating = parcel.readByte() != 0;
            this.phoneTime = parcel.readLong();
            this.phoneEndTime = parcel.readLong();
            this.sendTime = parcel.readLong();
            this.boxType = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return Objects.equals(this.treasureId, ((BigGiftBox) obj).treasureId);
        }

        public int getBoxType() {
            return this.boxType;
        }

        public long getCreateTime() {
            return this.createTime;
        }

        public long getCreateTimestamp() {
            return this.createTime;
        }

        public String getGiftBoxId() {
            return this.treasureId;
        }

        public long getPhoneEndTime() {
            long j10 = this.phoneEndTime;
            if (j10 != 0) {
                return j10;
            }
            long serverTimeDiff = i.u().s().getServerTimeDiff();
            long currentTimeMillis = this.sendTime - System.currentTimeMillis();
            long j11 = serverTimeDiff - currentTimeMillis;
            LogUtils.i("getPhoneEndTime", "getPhoneEndTime: 配置时间差值：" + serverTimeDiff + " 本次时间差值：" + currentTimeMillis + " 两次差值：" + j11);
            this.phoneEndTime = getTreasureOpenTime() - this.sendTime;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("不算差值的时间: ");
            sb2.append(this.phoneEndTime);
            LogUtils.i("getPhoneEndTime", sb2.toString());
            this.phoneEndTime = (getTreasureOpenTime() - this.sendTime) - j11;
            LogUtils.i("getPhoneEndTime", " 算差值的时间" + this.phoneEndTime);
            long j12 = this.phoneEndTime + this.phoneTime;
            this.phoneEndTime = j12;
            return j12;
        }

        public long getPhoneTime() {
            return this.phoneTime;
        }

        public long getSendTime() {
            return this.sendTime;
        }

        public String getTreasureId() {
            return this.treasureId;
        }

        public long getTreasureOpenTime() {
            return this.treasureOpenTime;
        }

        public String giftBoxSenderUserId() {
            return null;
        }

        public int giftValue() {
            return 0;
        }

        public int hashCode() {
            return Objects.hash(this.treasureId);
        }

        public boolean isAnimating() {
            return this.animating;
        }

        public void setAnimating(boolean z10) {
            this.animating = z10;
        }

        public void setBoxType(int i9) {
            this.boxType = i9;
        }

        public void setCreateTime(long j10) {
            this.createTime = j10;
            this.phoneTime = System.currentTimeMillis();
        }

        public void setPhoneEndTime(long j10) {
            this.phoneEndTime = j10;
        }

        public void setPhoneTime(long j10) {
            this.phoneTime = j10;
        }

        public void setRequestTime(long j10) {
            long currentTimeMillis = System.currentTimeMillis();
            long j11 = ((this.treasureOpenTime - this.sendTime) - ((currentTimeMillis - j10) / 2)) + currentTimeMillis;
            this.treasureOpenTime = j11;
            this.phoneTime = currentTimeMillis;
            this.phoneEndTime = j11;
        }

        public void setSendTime(long j10) {
            this.sendTime = j10;
        }

        public void setTreasureId(String str) {
            this.treasureId = str;
        }

        public void setTreasureOpenTime(long j10) {
            this.treasureOpenTime = j10;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.treasureId);
            parcel.writeLong(this.createTime);
            parcel.writeLong(this.treasureOpenTime);
            parcel.writeByte(this.animating ? (byte) 1 : (byte) 0);
            parcel.writeLong(this.phoneTime);
            parcel.writeLong(this.phoneEndTime);
            parcel.writeLong(this.sendTime);
            parcel.writeInt(this.boxType);
        }

        @Override // java.lang.Comparable
        public int compareTo(BigGiftBox bigGiftBox) {
            return (int) (getPhoneEndTime() - bigGiftBox.getPhoneEndTime());
        }

        public BigGiftBox() {
            this.phoneTime = System.currentTimeMillis();
        }
    }

    public List<BigGiftBox> getBigGiftBoxes() {
        return this.mBigGiftBoxes;
    }

    public void setBigGiftBoxes(List<BigGiftBox> list) {
        this.mBigGiftBoxes = list;
    }
}
