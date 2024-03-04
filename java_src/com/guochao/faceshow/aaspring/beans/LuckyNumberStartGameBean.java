package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class LuckyNumberStartGameBean implements Parcelable {
    public static final Parcelable.Creator<LuckyNumberStartGameBean> CREATOR = new Parcelable.Creator<LuckyNumberStartGameBean>() { // from class: com.guochao.faceshow.aaspring.beans.LuckyNumberStartGameBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LuckyNumberStartGameBean createFromParcel(Parcel parcel) {
            return new LuckyNumberStartGameBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LuckyNumberStartGameBean[] newArray(int i9) {
            return new LuckyNumberStartGameBean[i9];
        }
    };
    private String anchorId;
    private LuckyNumberUser appNumGameJoin;
    private int endNum;
    private int guessResult;
    private int inputNum;
    private int luckyNum;
    private int prizeNum;
    private String rateNum;
    private int startNum;
    private String userId;

    /* loaded from: classes3.dex */
    public static class LuckyNumberUser implements Parcelable {
        public static final Parcelable.Creator<LuckyNumberUser> CREATOR = new Parcelable.Creator<LuckyNumberUser>() { // from class: com.guochao.faceshow.aaspring.beans.LuckyNumberStartGameBean.LuckyNumberUser.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LuckyNumberUser createFromParcel(Parcel parcel) {
                return new LuckyNumberUser(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LuckyNumberUser[] newArray(int i9) {
                return new LuckyNumberUser[i9];
            }
        };
        private String guessNum;
        private String logo;
        private String nickName;
        private String userId;

        protected LuckyNumberUser(Parcel parcel) {
            this.userId = parcel.readString();
            this.nickName = parcel.readString();
            this.logo = parcel.readString();
            this.guessNum = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getGuessNum() {
            return this.guessNum;
        }

        public String getLogo() {
            return this.logo;
        }

        public String getNickName() {
            return this.nickName;
        }

        public String getUserId() {
            return this.userId;
        }

        public void setGuessNum(String str) {
            this.guessNum = str;
        }

        public void setLogo(String str) {
            this.logo = str;
        }

        public void setNickName(String str) {
            this.nickName = str;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.userId);
            parcel.writeString(this.nickName);
            parcel.writeString(this.logo);
            parcel.writeString(this.guessNum);
        }
    }

    public LuckyNumberStartGameBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAnchorId() {
        return this.anchorId;
    }

    public LuckyNumberUser getAppNumGameJoin() {
        return this.appNumGameJoin;
    }

    public int getEndNum() {
        return this.endNum;
    }

    public int getGuessResult() {
        return this.guessResult;
    }

    public int getInputNum() {
        return this.inputNum;
    }

    public int getLuckyNum() {
        return this.luckyNum;
    }

    public int getPrizeNum() {
        return this.prizeNum;
    }

    public String getRateNum() {
        return this.rateNum;
    }

    public int getStartNum() {
        return this.startNum;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setAnchorId(String str) {
        this.anchorId = str;
    }

    public void setAppNumGameJoin(LuckyNumberUser luckyNumberUser) {
        this.appNumGameJoin = luckyNumberUser;
    }

    public void setEndNum(int i9) {
        this.endNum = i9;
    }

    public void setGuessResult(int i9) {
        this.guessResult = i9;
    }

    public void setInputNum(int i9) {
        this.inputNum = i9;
    }

    public void setLuckyNum(int i9) {
        this.luckyNum = i9;
    }

    public void setPrizeNum(int i9) {
        this.prizeNum = i9;
    }

    public void setRateNum(String str) {
        this.rateNum = str;
    }

    public void setStartNum(int i9) {
        this.startNum = i9;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.startNum);
        parcel.writeInt(this.endNum);
        parcel.writeInt(this.guessResult);
        parcel.writeInt(this.inputNum);
        parcel.writeInt(this.prizeNum);
        parcel.writeString(this.userId);
        parcel.writeString(this.anchorId);
        parcel.writeString(this.rateNum);
        parcel.writeParcelable(this.appNumGameJoin, i9);
        parcel.writeInt(this.luckyNum);
    }

    protected LuckyNumberStartGameBean(Parcel parcel) {
        this.startNum = parcel.readInt();
        this.endNum = parcel.readInt();
        this.guessResult = parcel.readInt();
        this.inputNum = parcel.readInt();
        this.prizeNum = parcel.readInt();
        this.userId = parcel.readString();
        this.anchorId = parcel.readString();
        this.rateNum = parcel.readString();
        this.appNumGameJoin = (LuckyNumberUser) parcel.readParcelable(LuckyNumberUser.class.getClassLoader());
        this.luckyNum = parcel.readInt();
    }
}
