package com.guochao.faceshow.aaspring.modulars.live.model;

import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public class RunwayMessage extends BaseLiveMessage implements Parcelable {
    public static final Parcelable.Creator<RunwayMessage> CREATOR = new Parcelable.Creator<RunwayMessage>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.RunwayMessage.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RunwayMessage createFromParcel(Parcel parcel) {
            return new RunwayMessage(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RunwayMessage[] newArray(int i9) {
            return new RunwayMessage[i9];
        }
    };
    @SerializedName("manyStrips")
    private List<BigGiftBean> mRunways;

    /* loaded from: classes3.dex */
    public static class LuckyGiftRunwayMessage extends BigGiftBean implements ILuckyRunwayMessage {
        public static final Parcelable.Creator<LuckyGiftRunwayMessage> CREATOR = new Parcelable.Creator<LuckyGiftRunwayMessage>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.RunwayMessage.LuckyGiftRunwayMessage.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LuckyGiftRunwayMessage createFromParcel(Parcel parcel) {
                return new LuckyGiftRunwayMessage(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LuckyGiftRunwayMessage[] newArray(int i9) {
                return new LuckyGiftRunwayMessage[i9];
            }
        };
        private boolean diamonds;

        public LuckyGiftRunwayMessage() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.model.RunwayMessage.BigGiftBean, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.model.ILuckyRunwayMessage
        public boolean getDiamonds() {
            return this.diamonds;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.model.ILuckyRunwayMessage
        @NonNull
        public List<LuckyGiftRunwayMessage> getRunwayMessages() {
            return new ArrayList(Collections.singleton(this));
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.model.ILuckyRunwayMessage
        public void setDiamonds(boolean z10) {
            this.diamonds = z10;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.model.RunwayMessage.BigGiftBean, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            super.writeToParcel(parcel, i9);
        }

        protected LuckyGiftRunwayMessage(Parcel parcel) {
            super(parcel);
        }
    }

    public RunwayMessage() {
    }

    public static RunwayMessage obtain(BigGiftBean bigGiftBean) {
        RunwayMessage runwayMessage = new RunwayMessage();
        ArrayList arrayList = new ArrayList();
        runwayMessage.mRunways = arrayList;
        arrayList.add(bigGiftBean);
        return runwayMessage;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<BigGiftBean> getRunways() {
        return this.mRunways;
    }

    public void setRunways(List<BigGiftBean> list) {
        this.mRunways = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeTypedList(this.mRunways);
    }

    /* loaded from: classes3.dex */
    public static class LuckyGiftDiamondsMessage extends BaseLiveMessage implements Parcelable, ILuckyRunwayMessage {
        public static final Parcelable.Creator<LuckyGiftDiamondsMessage> CREATOR = new Parcelable.Creator<LuckyGiftDiamondsMessage>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.RunwayMessage.LuckyGiftDiamondsMessage.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LuckyGiftDiamondsMessage createFromParcel(Parcel parcel) {
                return new LuckyGiftDiamondsMessage(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LuckyGiftDiamondsMessage[] newArray(int i9) {
                return new LuckyGiftDiamondsMessage[i9];
            }
        };
        private boolean diamonds = true;
        @SerializedName("manyStrips")
        private List<LuckyGiftRunwayMessage> mRunways;

        public LuckyGiftDiamondsMessage() {
        }

        public static LuckyGiftDiamondsMessage obtain(BigGiftBean bigGiftBean) {
            LuckyGiftDiamondsMessage luckyGiftDiamondsMessage = new LuckyGiftDiamondsMessage();
            ArrayList arrayList = new ArrayList();
            LuckyGiftRunwayMessage luckyGiftRunwayMessage = new LuckyGiftRunwayMessage();
            luckyGiftRunwayMessage.setGiftNumbers(bigGiftBean.giftNumbers);
            luckyGiftRunwayMessage.setGiftPicture(bigGiftBean.giftPicture);
            luckyGiftRunwayMessage.setGroupId(bigGiftBean.groupId);
            luckyGiftRunwayMessage.setLiveFlow(bigGiftBean.liveFlow);
            luckyGiftRunwayMessage.setLiveType(bigGiftBean.liveType);
            luckyGiftRunwayMessage.setLiveUserImg(bigGiftBean.liveUserImg);
            luckyGiftRunwayMessage.setFromUserNickName(bigGiftBean.getFromUserNickName());
            luckyGiftRunwayMessage.setRoomId(bigGiftBean.getRoomId());
            luckyGiftRunwayMessage.setSendTime(bigGiftBean.getSendTime());
            luckyGiftRunwayMessage.setToUserId(bigGiftBean.toUserId);
            luckyGiftRunwayMessage.setToUserNickName(bigGiftBean.getToUserNickName());
            UserVipData userVipData = new UserVipData();
            userVipData.setIsVip(bigGiftBean.isVip);
            luckyGiftRunwayMessage.setToUserVipMsg(userVipData);
            luckyGiftRunwayMessage.setTrackId(bigGiftBean.trackId);
            luckyGiftRunwayMessage.setTrackType(bigGiftBean.trackType);
            luckyGiftRunwayMessage.setTreasureId(bigGiftBean.treasureId);
            luckyGiftRunwayMessage.setFromUserAvatar(bigGiftBean.getFromUserAvatar());
            luckyGiftRunwayMessage.setFromUserId(bigGiftBean.getFromUserId());
            UserVipData userVipData2 = new UserVipData();
            userVipData2.setIsVip(bigGiftBean.toIsVip);
            luckyGiftRunwayMessage.setToUserVipMsg(userVipData2);
            luckyGiftRunwayMessage.setVersion(bigGiftBean.toIsVip);
            arrayList.add(luckyGiftRunwayMessage);
            luckyGiftDiamondsMessage.setRunways(arrayList);
            return luckyGiftDiamondsMessage;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.model.ILuckyRunwayMessage
        public boolean getDiamonds() {
            return this.diamonds;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.model.ILuckyRunwayMessage
        @NonNull
        public List<LuckyGiftRunwayMessage> getRunwayMessages() {
            return this.mRunways;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.model.ILuckyRunwayMessage
        public void setDiamonds(boolean z10) {
            this.diamonds = z10;
        }

        public void setRunways(List<LuckyGiftRunwayMessage> list) {
            this.mRunways = list;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
        }

        protected LuckyGiftDiamondsMessage(Parcel parcel) {
        }
    }

    protected RunwayMessage(Parcel parcel) {
        this.mRunways = parcel.createTypedArrayList(BigGiftBean.CREATOR);
    }

    /* loaded from: classes3.dex */
    public static class BigGiftBean extends BaseLiveMessage implements Parcelable {
        public static final Parcelable.Creator<BigGiftBean> CREATOR = new Parcelable.Creator<BigGiftBean>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.RunwayMessage.BigGiftBean.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BigGiftBean createFromParcel(Parcel parcel) {
                return new BigGiftBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public BigGiftBean[] newArray(int i9) {
                return new BigGiftBean[i9];
            }
        };
        private Integer giftNumbers;
        private String giftPicture;
        private String groupId;
        private int isVip;
        private String liveCoverImg;
        private String liveFlow;
        private int liveId;
        @SerializedName(alternate = {"roomName"}, value = "liveName")
        private String liveName;
        private String liveType;
        private String liveUserImg;
        private Drawable resource;
        private int toIsVip;
        private UserVipData toUserVipMsg;
        private String trackId;
        private int trackType;
        private String treasureId;

        protected BigGiftBean(Parcel parcel) {
            if (parcel.readByte() == 0) {
                this.giftNumbers = null;
            } else {
                this.giftNumbers = Integer.valueOf(parcel.readInt());
            }
            this.giftPicture = parcel.readString();
            this.liveFlow = parcel.readString();
            this.treasureId = parcel.readString();
            this.trackId = parcel.readString();
            this.liveCoverImg = parcel.readString();
            this.liveUserImg = parcel.readString();
            this.groupId = parcel.readString();
            this.toUserVipMsg = (UserVipData) parcel.readParcelable(UserVipData.class.getClassLoader());
            this.liveId = parcel.readInt();
            this.liveName = parcel.readString();
            this.liveType = parcel.readString();
            this.trackType = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Integer getGiftNumbers() {
            return this.giftNumbers;
        }

        public String getGiftPicture() {
            return this.giftPicture;
        }

        public String getGroupId() {
            return this.groupId;
        }

        public String getLiveCoverImg() {
            return this.liveCoverImg;
        }

        public String getLiveFlow() {
            return this.liveFlow;
        }

        public int getLiveId() {
            return this.liveId;
        }

        public String getLiveName() {
            return this.liveName;
        }

        public String getLiveType() {
            return this.liveType;
        }

        public String getLiveUserImg() {
            return this.liveUserImg;
        }

        public Drawable getResource() {
            return this.resource;
        }

        public UserVipData getToUserVipMsg() {
            return this.toUserVipMsg;
        }

        public String getTrackId() {
            return this.trackId;
        }

        public int getTrackType() {
            return this.trackType;
        }

        public String getTreasureId() {
            return this.treasureId;
        }

        public void readFromParcel(Parcel parcel) {
            this.giftNumbers = (Integer) parcel.readValue(Integer.class.getClassLoader());
            this.giftPicture = parcel.readString();
            this.liveFlow = parcel.readString();
            this.treasureId = parcel.readString();
            this.trackId = parcel.readString();
            this.liveCoverImg = parcel.readString();
            this.liveUserImg = parcel.readString();
            this.groupId = parcel.readString();
            this.toUserVipMsg = (UserVipData) parcel.readParcelable(UserVipData.class.getClassLoader());
            this.liveId = parcel.readInt();
            this.liveName = parcel.readString();
            this.resource = (Drawable) parcel.readParcelable(Drawable.class.getClassLoader());
            this.trackType = parcel.readInt();
        }

        public void setGiftNumbers(Integer num) {
            this.giftNumbers = num;
        }

        public void setGiftPicture(String str) {
            this.giftPicture = str;
        }

        public void setGroupId(String str) {
            this.groupId = str;
        }

        public void setLiveCoverImg(String str) {
            this.liveCoverImg = str;
        }

        public void setLiveFlow(String str) {
            this.liveFlow = str;
        }

        public void setLiveId(int i9) {
            this.liveId = i9;
        }

        public void setLiveName(String str) {
            this.liveName = str;
        }

        public void setLiveType(String str) {
            this.liveType = str;
        }

        public void setLiveUserImg(String str) {
            this.liveUserImg = str;
        }

        public void setResource(Drawable drawable) {
            this.resource = drawable;
        }

        public void setToUserVipMsg(UserVipData userVipData) {
            this.toUserVipMsg = userVipData;
        }

        public void setTrackId(String str) {
            this.trackId = str;
        }

        public void setTrackType(int i9) {
            this.trackType = i9;
        }

        public void setTreasureId(String str) {
            this.treasureId = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            if (this.giftNumbers == null) {
                parcel.writeByte((byte) 0);
            } else {
                parcel.writeByte((byte) 1);
                parcel.writeInt(this.giftNumbers.intValue());
            }
            parcel.writeString(this.giftPicture);
            parcel.writeString(this.liveFlow);
            parcel.writeString(this.treasureId);
            parcel.writeString(this.trackId);
            parcel.writeString(this.liveCoverImg);
            parcel.writeString(this.liveUserImg);
            parcel.writeString(this.groupId);
            parcel.writeParcelable(this.toUserVipMsg, i9);
            parcel.writeInt(this.liveId);
            parcel.writeString(this.liveName);
            parcel.writeString(this.liveType);
            parcel.writeInt(this.trackType);
        }

        public BigGiftBean() {
        }
    }
}
