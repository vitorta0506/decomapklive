package com.guochao.faceshow.aaspring.modulars.live.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.signin.bean.NewUser;
/* loaded from: classes3.dex */
public class LotteryResult implements Parcelable {
    public static final Parcelable.Creator<LotteryResult> CREATOR = new Parcelable.Creator<LotteryResult>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.LotteryResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LotteryResult createFromParcel(Parcel parcel) {
            return new LotteryResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LotteryResult[] newArray(int i9) {
            return new LotteryResult[i9];
        }
    };
    @SerializedName("userGiftBag")
    private LotteryResultItem newUserGiftBag;
    private long selectTime;

    /* loaded from: classes3.dex */
    public static class LotteryResultItem implements Parcelable {
        public static final Parcelable.Creator<LotteryResultItem> CREATOR = new Parcelable.Creator<LotteryResultItem>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.LotteryResult.LotteryResultItem.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LotteryResultItem createFromParcel(Parcel parcel) {
                return new LotteryResultItem(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LotteryResultItem[] newArray(int i9) {
                return new LotteryResultItem[i9];
            }
        };
        private String charmValues;
        private String createTime;
        private String isNewUser;
        private String isOpenTurnTable;
        @SerializedName("fCerHeadImg")
        private String newFCerHeadImg;
        @SerializedName("fCerIndex")
        private String newFCerIndex;
        private String regTime;
        private String rewardDiamond;
        private String usedDay;
        private String userId;

        public LotteryResultItem() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getCharmValues() {
            return this.charmValues;
        }

        public String getCreateTime() {
            return this.createTime;
        }

        public String getIsNewUser() {
            return this.isNewUser;
        }

        public String getIsOpenTurnTable() {
            return this.isOpenTurnTable;
        }

        public String getNewFCerHeadImg() {
            return this.newFCerHeadImg;
        }

        public String getNewFCerIndex() {
            return this.newFCerIndex;
        }

        public String getRegTime() {
            return this.regTime;
        }

        public String getRewardDiamond() {
            return this.rewardDiamond;
        }

        public String getUsedDay() {
            return this.usedDay;
        }

        public String getUserId() {
            return this.userId;
        }

        public void setCharmValues(String str) {
            this.charmValues = str;
        }

        public void setCreateTime(String str) {
            this.createTime = str;
        }

        public void setIsNewUser(String str) {
            this.isNewUser = str;
        }

        public void setIsOpenTurnTable(String str) {
            this.isOpenTurnTable = str;
        }

        public void setNewFCerHeadImg(String str) {
            this.newFCerHeadImg = str;
        }

        public void setNewFCerIndex(String str) {
            this.newFCerIndex = str;
        }

        public void setRegTime(String str) {
            this.regTime = str;
        }

        public void setRewardDiamond(String str) {
            this.rewardDiamond = str;
        }

        public void setUsedDay(String str) {
            this.usedDay = str;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.newFCerHeadImg);
            parcel.writeString(this.regTime);
            parcel.writeString(this.createTime);
            parcel.writeString(this.newFCerIndex);
            parcel.writeString(this.isOpenTurnTable);
            parcel.writeString(this.isNewUser);
            parcel.writeString(this.userId);
            parcel.writeString(this.rewardDiamond);
        }

        protected LotteryResultItem(Parcel parcel) {
            this.newFCerHeadImg = parcel.readString();
            this.regTime = parcel.readString();
            this.createTime = parcel.readString();
            this.newFCerIndex = parcel.readString();
            this.isOpenTurnTable = parcel.readString();
            this.isNewUser = parcel.readString();
            this.userId = parcel.readString();
            this.rewardDiamond = parcel.readString();
        }
    }

    private LotteryResult() {
    }

    public static LotteryResult build(NewUser newUser) {
        LotteryResult lotteryResult = new LotteryResult();
        LotteryResultItem lotteryResultItem = new LotteryResultItem();
        lotteryResultItem.isNewUser = String.valueOf(newUser.isNewUser());
        lotteryResultItem.rewardDiamond = String.valueOf(newUser.getRewardDiamond());
        lotteryResultItem.regTime = String.valueOf(newUser.getRegDay());
        lotteryResultItem.isOpenTurnTable = "1";
        lotteryResultItem.newFCerIndex = String.valueOf(newUser.getFCerIndex());
        lotteryResultItem.newFCerHeadImg = String.valueOf(newUser.getFCerHeadImg());
        lotteryResultItem.charmValues = String.valueOf(newUser.getCharmValues());
        lotteryResultItem.usedDay = String.valueOf(newUser.getUsedDay());
        lotteryResult.newUserGiftBag = lotteryResultItem;
        lotteryResult.selectTime = System.currentTimeMillis();
        return lotteryResult;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public LotteryResultItem getNewUserGiftBag() {
        return this.newUserGiftBag;
    }

    public long getSelectTime() {
        return this.selectTime;
    }

    public void setNewUserGiftBag(LotteryResultItem lotteryResultItem) {
        this.newUserGiftBag = lotteryResultItem;
    }

    public void setSelectTime(long j10) {
        this.selectTime = j10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeLong(this.selectTime);
    }

    protected LotteryResult(Parcel parcel) {
        this.selectTime = parcel.readLong();
    }
}
