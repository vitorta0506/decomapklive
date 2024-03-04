package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import java.util.List;
import p7.d;
import p7.g;
/* loaded from: classes3.dex */
public class LiveGamePollDetail implements Parcelable {
    public static final Parcelable.Creator<LiveGamePollDetail> CREATOR = new Parcelable.Creator<LiveGamePollDetail>() { // from class: com.guochao.faceshow.aaspring.beans.LiveGamePollDetail.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveGamePollDetail createFromParcel(Parcel parcel) {
            return new LiveGamePollDetail(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveGamePollDetail[] newArray(int i9) {
            return new LiveGamePollDetail[i9];
        }
    };
    private int androidVersion;
    private int confDiamondNum;
    private int confUserNum;
    private int endNum;
    private int flag;
    private int gameCode;
    private long gameInfoId;
    private List<LiveGameRoundDetail> gameRoundDetailVo;
    private String h5Url;
    private String icon;
    private int iosVersion;
    private String roundId;
    private String shareUrl;
    private int startNum;
    private long status;

    protected LiveGamePollDetail(Parcel parcel) {
        this.gameInfoId = parcel.readLong();
        this.status = parcel.readLong();
        this.roundId = parcel.readString();
        this.confUserNum = parcel.readInt();
        this.confDiamondNum = parcel.readInt();
        this.gameCode = parcel.readInt();
        this.androidVersion = parcel.readInt();
        this.iosVersion = parcel.readInt();
        this.icon = parcel.readString();
        this.shareUrl = parcel.readString();
        this.startNum = parcel.readInt();
        this.endNum = parcel.readInt();
        this.h5Url = parcel.readString();
        this.gameRoundDetailVo = parcel.createTypedArrayList(LiveGameRoundDetail.CREATOR);
        this.flag = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAndroidVersion() {
        return this.androidVersion;
    }

    public int getConfDiamondNum() {
        return this.confDiamondNum;
    }

    public int getConfUserNum() {
        return this.confUserNum;
    }

    public int getEndNum() {
        return this.endNum;
    }

    public int getFlag() {
        return this.flag;
    }

    public int getGameCode() {
        return this.gameCode;
    }

    public long getGameInfoId() {
        return this.gameInfoId;
    }

    public List<LiveGameRoundDetail> getGameRoundVo() {
        return this.gameRoundDetailVo;
    }

    public String getH5Url() {
        return this.h5Url;
    }

    public String getIcon() {
        return this.icon;
    }

    public int getIosVersion() {
        return this.iosVersion;
    }

    public String getRoundId() {
        return this.roundId;
    }

    public String getShareUrl() {
        return this.shareUrl;
    }

    public int getStartNum() {
        return this.startNum;
    }

    public long getStatus() {
        return this.status;
    }

    public void setAndroidVersion(int i9) {
        this.androidVersion = i9;
    }

    public void setConfDiamondNum(int i9) {
        this.confDiamondNum = i9;
    }

    public void setConfUserNum(int i9) {
        this.confUserNum = i9;
    }

    public void setEndNum(int i9) {
        this.endNum = i9;
    }

    public void setFlag(int i9) {
        this.flag = i9;
    }

    public void setGameCode(int i9) {
        this.gameCode = i9;
    }

    public void setGameInfoId(long j10) {
        this.gameInfoId = j10;
    }

    public void setGameRoundVo(List<LiveGameRoundDetail> list) {
        this.gameRoundDetailVo = list;
    }

    public void setH5Url(String str) {
        this.h5Url = str;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setIosVersion(int i9) {
        this.iosVersion = i9;
    }

    public void setRoundId(String str) {
        this.roundId = str;
    }

    public void setShareUrl(String str) {
        this.shareUrl = str;
    }

    public void setStartNum(int i9) {
        this.startNum = i9;
    }

    public void setStatus(long j10) {
        this.status = j10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeLong(this.gameInfoId);
        parcel.writeLong(this.status);
        parcel.writeString(this.roundId);
        parcel.writeInt(this.confUserNum);
        parcel.writeInt(this.confDiamondNum);
        parcel.writeInt(this.gameCode);
        parcel.writeInt(this.androidVersion);
        parcel.writeInt(this.iosVersion);
        parcel.writeString(this.icon);
        parcel.writeString(this.shareUrl);
        parcel.writeInt(this.startNum);
        parcel.writeInt(this.endNum);
        parcel.writeString(this.h5Url);
        parcel.writeTypedList(this.gameRoundDetailVo);
        parcel.writeInt(i9);
    }

    /* loaded from: classes3.dex */
    public static class LiveGameRoundDetail implements JoinGameUser, Parcelable {
        public static final Parcelable.Creator<LiveGameRoundDetail> CREATOR = new Parcelable.Creator<LiveGameRoundDetail>() { // from class: com.guochao.faceshow.aaspring.beans.LiveGamePollDetail.LiveGameRoundDetail.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LiveGameRoundDetail createFromParcel(Parcel parcel) {
                return new LiveGameRoundDetail(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LiveGameRoundDetail[] newArray(int i9) {
                return new LiveGameRoundDetail[i9];
            }
        };
        private int backDiamond;
        private int confDiamondNum;
        private String countryLogo;
        private int diamond;
        private int idx;
        private long inputTime;
        private int isInput;
        private String logo;
        private String nickName;
        private long nowTime;
        private int position;
        private int sex;
        private long userId;

        protected LiveGameRoundDetail(Parcel parcel) {
            this.logo = parcel.readString();
            this.userId = parcel.readLong();
            this.nickName = parcel.readString();
            this.idx = parcel.readInt();
            this.diamond = parcel.readInt();
            this.confDiamondNum = parcel.readInt();
            this.backDiamond = parcel.readInt();
            this.countryLogo = parcel.readString();
            this.sex = parcel.readInt();
            this.position = parcel.readInt();
            this.nowTime = parcel.readLong();
            this.inputTime = parcel.readLong();
            this.isInput = parcel.readInt();
        }

        public static LiveGameRoundDetail fromLiveMessage(BaseLiveMessage baseLiveMessage) {
            LiveGameRoundDetail liveGameRoundDetail = new LiveGameRoundDetail();
            try {
                liveGameRoundDetail.userId = Long.parseLong(baseLiveMessage.getFromUserId());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            liveGameRoundDetail.logo = baseLiveMessage.getFromUserAvatar();
            liveGameRoundDetail.nickName = baseLiveMessage.getFromUserNickName();
            liveGameRoundDetail.idx = 0;
            return liveGameRoundDetail;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.b
        public /* bridge */ /* synthetic */ int getAge() {
            return p7.a.a(this);
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.h, p7.c
        public String getAvatarUrl() {
            return this.logo;
        }

        public int getBackDiamond() {
            return this.backDiamond;
        }

        public int getConfDiamondNum() {
            return this.confDiamondNum;
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.h
        public String getCountryFlag() {
            return this.countryLogo;
        }

        public String getCountryLogo() {
            return this.countryLogo;
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.h
        public String getCurrentUserId() {
            return String.valueOf(this.userId);
        }

        public int getDiamond() {
            return this.diamond;
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
        public int getGameSeatCurrentPlayerPosition() {
            return getPosition();
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.h, p7.c
        public int getGender() {
            return this.sex;
        }

        public int getIdx() {
            return this.idx;
        }

        public long getInputTime() {
            return this.inputTime;
        }

        public int getIsInput() {
            return this.isInput;
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.e
        public /* bridge */ /* synthetic */ int getLevel() {
            return d.a(this);
        }

        public String getLogo() {
            return this.logo;
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.h
        public /* bridge */ /* synthetic */ String getMVPUrl() {
            return g.a(this);
        }

        public String getNickName() {
            return this.nickName;
        }

        public long getNowTime() {
            return this.nowTime;
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.h
        public String getPendantUrl() {
            return null;
        }

        public int getPosition() {
            return this.position;
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser
        public int getRemovePosition() {
            return this.idx;
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
        public long getRestActiveTime() {
            return getNowTime() - getInputTime();
        }

        public int getSex() {
            return this.sex;
        }

        public long getUserId() {
            return this.userId;
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, p7.h
        public String getUserName() {
            return this.nickName;
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer, p7.h
        @Nullable
        public /* bridge */ /* synthetic */ b8.g getVipInfo() {
            return g.c(this);
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
        public boolean isActive() {
            return getIsInput() == 1;
        }

        public void setBackDiamond(int i9) {
            this.backDiamond = i9;
        }

        public void setConfDiamondNum(int i9) {
            this.confDiamondNum = i9;
        }

        public void setCountryLogo(String str) {
            this.countryLogo = str;
        }

        public void setDiamond(int i9) {
            this.diamond = i9;
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser
        public void setGameSeatCurrentPlayerPosition(int i9) {
            setPosition(i9);
        }

        public void setIdx(int i9) {
            this.idx = i9;
        }

        public void setInputTime(long j10) {
            this.inputTime = j10;
        }

        public void setIsInput(int i9) {
            this.isInput = i9;
        }

        public void setLogo(String str) {
            this.logo = str;
        }

        public void setNickName(String str) {
            this.nickName = str;
        }

        public void setNowTime(long j10) {
            this.nowTime = j10;
        }

        public void setPosition(int i9) {
            this.position = i9;
        }

        @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser
        public void setRemovePosition(int i9) {
            this.idx = i9;
        }

        public void setSex(int i9) {
            this.sex = i9;
        }

        public void setUserId(long j10) {
            this.userId = j10;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.logo);
            parcel.writeLong(this.userId);
            parcel.writeString(this.nickName);
            parcel.writeInt(this.idx);
            parcel.writeInt(this.diamond);
            parcel.writeInt(this.confDiamondNum);
            parcel.writeInt(this.backDiamond);
            parcel.writeString(this.countryLogo);
            parcel.writeInt(this.sex);
            parcel.writeInt(this.position);
            parcel.writeLong(this.nowTime);
            parcel.writeLong(this.inputTime);
            parcel.writeInt(this.isInput);
        }

        public LiveGameRoundDetail() {
        }
    }
}
