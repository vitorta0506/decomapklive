package com.guochao.faceshow.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import b8.a;
import b8.f;
import b8.g;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.JoinGameUser;
import com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.live.game.q;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.TranslateUtils;
/* loaded from: classes3.dex */
public class UserBean implements a, InviteBean, Parcelable, TrtcFaceCastUser, JoinGameUser {
    public static final Parcelable.Creator<UserBean> CREATOR = new Parcelable.Creator<UserBean>() { // from class: com.guochao.faceshow.bean.UserBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserBean createFromParcel(Parcel parcel) {
            return new UserBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserBean[] newArray(int i9) {
            return new UserBean[i9];
        }
    };
    public static boolean isFirstRegist = false;
    public String address;
    public String anchorNo;
    private int appointState;
    public String avatar;
    public float balance;
    private int bindMobileLimit;
    @SerializedName(alternate = {"birthday"}, value = "birthdayStr")
    private String birthdayStr;
    private String channel;
    public String charmValues;
    public String cityId;
    public String country;
    public String countryFlag;
    public int countryId;
    public int del;
    private String downloadlink;
    public String email;
    private long exposureEndTime;
    private String freezeName;
    public String hobbys;
    private int idx;
    public String img;
    public String intro;
    public int isAnchor;
    private int isExposuring;
    private int isInvited;
    private int isNewUser;
    private int isOpenTurnTable;
    private boolean isSelect;
    private int isUpdate;
    public String job;
    private int keyPadToneSwitch;
    private String lastTime;
    public int levelId;
    public int logoutStatus;
    public String mobile;
    public String nickName;
    public String payPassword;
    public String pwd;
    public String qrCode;
    private int recharged;
    private int regType;
    private int restCount;
    private int riskLevel;
    public int sex;
    public String signature;
    private String smallImg;
    public int statues;
    public String stature;
    public String tencentSignature;
    public String token;
    public String type;
    private String unfreezeTime;
    private String updateCopywriting;
    private int userAge;
    @SerializedName(alternate = {"id"}, value = Contants.USER_ID)
    public String userId;
    public UserInfoDetail userInfoDetail;
    private UserMvpInfo userMvpInfo;
    public String userName;
    public UserSet userSet;
    private UserVipData userVipMsg;
    private int videoBarrageSwitch;
    public String weight;

    /* loaded from: classes3.dex */
    public static class UserInfoDetail implements Parcelable {
        public static final Parcelable.Creator<UserInfoDetail> CREATOR = new Parcelable.Creator<UserInfoDetail>() { // from class: com.guochao.faceshow.bean.UserBean.UserInfoDetail.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public UserInfoDetail createFromParcel(Parcel parcel) {
                return new UserInfoDetail(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public UserInfoDetail[] newArray(int i9) {
                return new UserInfoDetail[i9];
            }
        };
        public int detailId;
        public int diamond;
        public String editor;
        public String editorTime;

        /* renamed from: f  reason: collision with root package name */
        public int f25096f;
        public int giftIncome;
        public int liveIncome;
        public String memo;
        public String password;
        public int regType;
        public int tokenNum;
        public int userId;
        public String userName;

        public UserInfoDetail() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeInt(this.f25096f);
            parcel.writeString(this.editor);
            parcel.writeString(this.memo);
            parcel.writeInt(this.diamond);
            parcel.writeInt(this.tokenNum);
            parcel.writeInt(this.userId);
            parcel.writeString(this.userName);
            parcel.writeString(this.editorTime);
            parcel.writeString(this.password);
            parcel.writeInt(this.regType);
            parcel.writeInt(this.liveIncome);
            parcel.writeInt(this.giftIncome);
            parcel.writeInt(this.detailId);
        }

        protected UserInfoDetail(Parcel parcel) {
            this.f25096f = parcel.readInt();
            this.editor = parcel.readString();
            this.memo = parcel.readString();
            this.diamond = parcel.readInt();
            this.tokenNum = parcel.readInt();
            this.userId = parcel.readInt();
            this.userName = parcel.readString();
            this.editorTime = parcel.readString();
            this.password = parcel.readString();
            this.regType = parcel.readInt();
            this.liveIncome = parcel.readInt();
            this.giftIncome = parcel.readInt();
            this.detailId = parcel.readInt();
        }
    }

    protected UserBean(Parcel parcel) {
        this.appointState = -1;
        this.userId = parcel.readString();
        this.levelId = parcel.readInt();
        this.mobile = parcel.readString();
        this.userName = parcel.readString();
        this.pwd = parcel.readString();
        this.statues = parcel.readInt();
        this.balance = parcel.readFloat();
        this.sex = parcel.readInt();
        this.nickName = parcel.readString();
        this.signature = parcel.readString();
        this.img = parcel.readString();
        this.email = parcel.readString();
        this.qrCode = parcel.readString();
        this.intro = parcel.readString();
        this.cityId = parcel.readString();
        this.address = parcel.readString();
        this.type = parcel.readString();
        this.token = parcel.readString();
        this.del = parcel.readInt();
        this.country = parcel.readString();
        this.countryId = parcel.readInt();
        this.charmValues = parcel.readString();
        this.isAnchor = parcel.readInt();
        this.anchorNo = parcel.readString();
        this.job = parcel.readString();
        this.weight = parcel.readString();
        this.stature = parcel.readString();
        this.hobbys = parcel.readString();
        this.tencentSignature = parcel.readString();
        this.payPassword = parcel.readString();
        this.userSet = (UserSet) parcel.readParcelable(UserSet.class.getClassLoader());
        this.userInfoDetail = (UserInfoDetail) parcel.readParcelable(UserInfoDetail.class.getClassLoader());
        this.birthdayStr = parcel.readString();
        this.avatar = parcel.readString();
        this.unfreezeTime = parcel.readString();
        this.freezeName = parcel.readString();
        this.isUpdate = parcel.readInt();
        this.downloadlink = parcel.readString();
        this.updateCopywriting = parcel.readString();
        this.keyPadToneSwitch = parcel.readInt();
        this.userVipMsg = (UserVipData) parcel.readParcelable(UserVipData.class.getClassLoader());
        this.isNewUser = parcel.readInt();
        this.isOpenTurnTable = parcel.readInt();
        this.smallImg = parcel.readString();
        this.recharged = parcel.readInt();
        this.channel = parcel.readString();
        this.exposureEndTime = parcel.readLong();
        this.isExposuring = parcel.readInt();
        this.restCount = parcel.readInt();
        this.userAge = parcel.readInt();
        this.regType = parcel.readInt();
        this.logoutStatus = parcel.readInt();
        this.riskLevel = parcel.readInt();
        this.bindMobileLimit = parcel.readInt();
        this.lastTime = parcel.readString();
        this.appointState = parcel.readInt();
        this.isInvited = parcel.readInt();
        this.videoBarrageSwitch = parcel.readInt();
        this.isSelect = parcel.readByte() != 0;
        this.idx = parcel.readInt();
        this.countryFlag = parcel.readString();
        this.userMvpInfo = (UserMvpInfo) parcel.readParcelable(UserMvpInfo.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.b
    public int getAge() {
        return getUserAge();
    }

    public int getAppointState() {
        return this.appointState;
    }

    public String getAvatar() {
        return this.img;
    }

    public String getAvatarThumb() {
        return this.img;
    }

    @Override // p7.c
    public String getAvatarUrl() {
        return getAvatar();
    }

    public int getBindMobileLimit() {
        return this.bindMobileLimit;
    }

    public String getBirthdayStr() {
        return this.birthdayStr;
    }

    public String getChannel() {
        return this.channel;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return this.countryFlag;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    public String getDownloadlink() {
        return this.downloadlink;
    }

    public long getExposureEndTime() {
        return this.exposureEndTime;
    }

    public String getFreezeName() {
        return this.freezeName;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public /* bridge */ /* synthetic */ int getGameSeatCurrentPlayerPosition() {
        return q.a(this);
    }

    @Override // p7.c
    public int getGender() {
        return this.sex;
    }

    @Override // b8.g
    public /* bridge */ /* synthetic */ String getHostCertificationUrl() {
        return f.a(this);
    }

    public int getIsExposuring() {
        return this.isExposuring;
    }

    public int getIsInvited() {
        return this.isInvited;
    }

    public int getIsNewUser() {
        return this.isNewUser;
    }

    public int getIsOpenTurnTable() {
        return this.isOpenTurnTable;
    }

    public int getIsUpdate() {
        return this.isUpdate;
    }

    public int getKeyPadToneSwitch() {
        return this.keyPadToneSwitch;
    }

    public String getLastTime() {
        return this.lastTime;
    }

    @Override // p7.e
    public int getLevel() {
        return this.levelId;
    }

    public int getLogoutStatus() {
        return this.logoutStatus;
    }

    @Override // p7.h
    public String getMVPUrl() {
        UserMvpInfo userMvpInfo = this.userMvpInfo;
        return userMvpInfo != null ? userMvpInfo.mvpUrl : "";
    }

    @Override // p7.h
    public String getPendantUrl() {
        return this.avatar;
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser
    public String getPreferentialLang() {
        return TranslateUtils.getPhoneLanguage();
    }

    public int getRecharged() {
        return this.recharged;
    }

    public int getRegType() {
        return this.regType;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser
    public int getRemovePosition() {
        return this.idx;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public /* bridge */ /* synthetic */ long getRestActiveTime() {
        return q.b(this);
    }

    public int getRestCount() {
        return this.restCount;
    }

    public int getRiskLevel() {
        return this.riskLevel;
    }

    @Override // b8.g
    public /* bridge */ /* synthetic */ int getSended() {
        return f.b(this);
    }

    public String getSignature() {
        if (TextUtils.isEmpty(this.signature)) {
            return BaseApplication.getInstance().getString(R.string.user_info_default_signature);
        }
        return this.signature;
    }

    public String getSmallImg() {
        return this.smallImg;
    }

    public int getStatus() {
        return this.statues;
    }

    public String getToken() {
        return this.token;
    }

    public String getUnfreezeTime() {
        return this.unfreezeTime;
    }

    public String getUpdateCopywriting() {
        return this.updateCopywriting;
    }

    public int getUserAge() {
        return this.userAge;
    }

    public String getUserId() {
        if (this.userId == null) {
            this.userId = "";
        }
        return this.userId;
    }

    @Nullable
    public UserMvpInfo getUserMvpInfo() {
        return this.userMvpInfo;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
    public String getUserName() {
        return this.nickName;
    }

    public String getUserPhone() {
        return this.mobile;
    }

    public UserVipData getUserVipMsg() {
        if (this.userVipMsg == null) {
            this.userVipMsg = new UserVipData();
        }
        return this.userVipMsg;
    }

    public int getVideoBarrageSwitch() {
        return this.videoBarrageSwitch;
    }

    public /* bridge */ /* synthetic */ String getVipAvatarPendentId() {
        return f.c(this);
    }

    @Override // b8.g
    public /* bridge */ /* synthetic */ int getVipAvatarPendentType() {
        return f.d(this);
    }

    @Override // b8.g
    public /* bridge */ /* synthetic */ String getVipAvatarPendentUrl() {
        return f.e(this);
    }

    @Override // b8.g
    public /* bridge */ /* synthetic */ String getVipDressCarId() {
        return f.f(this);
    }

    @Override // b8.g
    public /* bridge */ /* synthetic */ String getVipDressCarUrl() {
        return f.g(this);
    }

    @Override // b8.g
    public /* bridge */ /* synthetic */ String getVipDressCarUrlV2() {
        return f.h(this);
    }

    public /* bridge */ /* synthetic */ String getVipDressChatUrl() {
        return f.i(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
    @Nullable
    public /* bridge */ /* synthetic */ g getVipInfo() {
        return p7.g.c(this);
    }

    @Override // b8.g
    public int getVipLevel() {
        UserVipData userVipData = this.userVipMsg;
        if (userVipData == null) {
            return 0;
        }
        return userVipData.getVipLevel();
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public /* bridge */ /* synthetic */ boolean isActive() {
        return q.d(this);
    }

    public boolean isMVPDanmuOn() {
        UserMvpInfo userMvpInfo = this.userMvpInfo;
        return userMvpInfo != null && userMvpInfo.dmSwitch == BaseLiveMessage.MVP_DANMU_ON;
    }

    public boolean isMvp() {
        UserMvpInfo userMvpInfo = this.userMvpInfo;
        return userMvpInfo != null && userMvpInfo.mvp == 1;
    }

    public boolean isMvpGift() {
        UserMvpInfo userMvpInfo = this.userMvpInfo;
        return userMvpInfo != null && userMvpInfo.giftSwitch == 1 && userMvpInfo.mvpLevel > 0;
    }

    public boolean isRealMvp() {
        UserMvpInfo userMvpInfo = this.userMvpInfo;
        return userMvpInfo != null && userMvpInfo.mvp == 1 && userMvpInfo.mvpLevel > 0;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean
    public boolean isSelect() {
        return this.isSelect;
    }

    @Override // b8.g
    public /* bridge */ /* synthetic */ boolean isVip() {
        return f.k(this);
    }

    public void setAppointState(int i9) {
        this.appointState = i9;
    }

    public void setBindMobileLimit(int i9) {
        this.bindMobileLimit = i9;
    }

    public void setBirthdayStr(String str) {
        this.birthdayStr = str;
    }

    public void setChannel(String str) {
        this.channel = str;
    }

    public void setDownloadlink(String str) {
        this.downloadlink = str;
    }

    public void setExposureEndTime(long j10) {
        this.exposureEndTime = j10;
    }

    public void setFreezeName(String str) {
        this.freezeName = str;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser
    public /* bridge */ /* synthetic */ void setGameSeatCurrentPlayerPosition(int i9) {
        q.e(this, i9);
    }

    public void setGender(int i9) {
        this.sex = i9;
    }

    public void setIsExposuring(int i9) {
        this.isExposuring = i9;
    }

    public void setIsInvited(int i9) {
        this.isInvited = i9;
    }

    public void setIsNewUser(int i9) {
        this.isNewUser = i9;
    }

    public void setIsOpenTurnTable(int i9) {
        this.isOpenTurnTable = i9;
    }

    public void setIsUpdate(int i9) {
        this.isUpdate = i9;
    }

    public void setKeyPadToneSwitch(int i9) {
        this.keyPadToneSwitch = i9;
    }

    public void setLastTime(String str) {
        this.lastTime = str;
    }

    public void setLogoutStatus(int i9) {
        this.logoutStatus = i9;
    }

    public void setPendantUrl(String str) {
        this.avatar = str;
    }

    public void setRecharged(int i9) {
        this.recharged = i9;
    }

    public void setRegType(int i9) {
        this.regType = i9;
    }

    @Override // com.guochao.faceshow.aaspring.beans.JoinGameUser
    public void setRemovePosition(int i9) {
        this.idx = i9;
    }

    public void setRestCount(int i9) {
        this.restCount = i9;
    }

    public void setRiskLevel(int i9) {
        this.riskLevel = i9;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean
    public void setSelect(boolean z10) {
        this.isSelect = z10;
    }

    public void setSmallImg(String str) {
        this.smallImg = str;
    }

    public void setUnfreezeTime(String str) {
        this.unfreezeTime = str;
    }

    public void setUpdateCopywriting(String str) {
        this.updateCopywriting = str;
    }

    public void setUserAge(int i9) {
        this.userAge = i9;
    }

    public void setUserMvpInfo(UserMvpInfo userMvpInfo) {
        this.userMvpInfo = userMvpInfo;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    public void setVideoBarrageSwitch(int i9) {
        this.videoBarrageSwitch = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.userId);
        parcel.writeInt(this.levelId);
        parcel.writeString(this.mobile);
        parcel.writeString(this.userName);
        parcel.writeString(this.pwd);
        parcel.writeInt(this.statues);
        parcel.writeFloat(this.balance);
        parcel.writeInt(this.sex);
        parcel.writeString(this.nickName);
        parcel.writeString(this.signature);
        parcel.writeString(this.img);
        parcel.writeString(this.email);
        parcel.writeString(this.qrCode);
        parcel.writeString(this.intro);
        parcel.writeString(this.cityId);
        parcel.writeString(this.address);
        parcel.writeString(this.type);
        parcel.writeString(this.token);
        parcel.writeInt(this.del);
        parcel.writeString(this.country);
        parcel.writeInt(this.countryId);
        parcel.writeString(this.charmValues);
        parcel.writeInt(this.isAnchor);
        parcel.writeString(this.anchorNo);
        parcel.writeString(this.job);
        parcel.writeString(this.weight);
        parcel.writeString(this.stature);
        parcel.writeString(this.hobbys);
        parcel.writeString(this.tencentSignature);
        parcel.writeString(this.payPassword);
        parcel.writeParcelable(this.userSet, i9);
        parcel.writeParcelable(this.userInfoDetail, i9);
        parcel.writeString(this.birthdayStr);
        parcel.writeString(this.avatar);
        parcel.writeString(this.unfreezeTime);
        parcel.writeString(this.freezeName);
        parcel.writeInt(this.isUpdate);
        parcel.writeString(this.downloadlink);
        parcel.writeString(this.updateCopywriting);
        parcel.writeInt(this.keyPadToneSwitch);
        parcel.writeParcelable(this.userVipMsg, i9);
        parcel.writeInt(this.isNewUser);
        parcel.writeInt(this.isOpenTurnTable);
        parcel.writeString(this.smallImg);
        parcel.writeInt(this.recharged);
        parcel.writeString(this.channel);
        parcel.writeLong(this.exposureEndTime);
        parcel.writeInt(this.isExposuring);
        parcel.writeInt(this.restCount);
        parcel.writeInt(this.userAge);
        parcel.writeInt(this.regType);
        parcel.writeInt(this.logoutStatus);
        parcel.writeInt(this.riskLevel);
        parcel.writeInt(this.bindMobileLimit);
        parcel.writeString(this.lastTime);
        parcel.writeInt(this.appointState);
        parcel.writeInt(this.isInvited);
        parcel.writeInt(this.videoBarrageSwitch);
        parcel.writeByte(this.isSelect ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.idx);
        parcel.writeString(this.countryFlag);
        parcel.writeParcelable(this.userMvpInfo, i9);
    }

    /* loaded from: classes3.dex */
    public static class UserMvpInfo implements Parcelable {
        public static final Parcelable.Creator<UserMvpInfo> CREATOR = new Parcelable.Creator<UserMvpInfo>() { // from class: com.guochao.faceshow.bean.UserBean.UserMvpInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public UserMvpInfo createFromParcel(Parcel parcel) {
                return new UserMvpInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public UserMvpInfo[] newArray(int i9) {
                return new UserMvpInfo[i9];
            }
        };
        public static final int TYPE_MVP = 1;
        public int dmSwitch;
        public int giftSwitch;
        public int mvp;
        @SerializedName("level")
        private int mvpLevel;
        public String mvpUrl;

        public UserMvpInfo() {
            this.mvpLevel = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getMvpLevel() {
            if (this.mvp == 0) {
                return -1;
            }
            return this.mvpLevel;
        }

        public void setMvpLevel(int i9) {
            this.mvpLevel = i9;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeInt(this.mvp);
            parcel.writeString(this.mvpUrl);
            parcel.writeInt(this.mvpLevel);
            parcel.writeInt(this.dmSwitch);
            parcel.writeInt(this.giftSwitch);
        }

        protected UserMvpInfo(Parcel parcel) {
            this.mvpLevel = -1;
            this.mvp = parcel.readInt();
            this.mvpUrl = parcel.readString();
            this.mvpLevel = parcel.readInt();
            this.dmSwitch = parcel.readInt();
            this.giftSwitch = parcel.readInt();
        }
    }

    /* loaded from: classes3.dex */
    public static class UserSet implements Parcelable {
        public static final Parcelable.Creator<UserSet> CREATOR = new Parcelable.Creator<UserSet>() { // from class: com.guochao.faceshow.bean.UserBean.UserSet.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public UserSet createFromParcel(Parcel parcel) {
                return new UserSet(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public UserSet[] newArray(int i9) {
                return new UserSet[i9];
            }
        };
        public int closeDistance;
        public int distance;
        public int friends;
        public int isAddressBook;
        public int nearby;
        public int online;
        public String setId;
        public String setTime;
        public String userId;

        public UserSet() {
            this.online = 1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeInt(this.closeDistance);
            parcel.writeInt(this.distance);
            parcel.writeInt(this.friends);
            parcel.writeInt(this.isAddressBook);
            parcel.writeInt(this.nearby);
            parcel.writeString(this.setId);
            parcel.writeString(this.setTime);
            parcel.writeString(this.userId);
            parcel.writeInt(this.online);
        }

        protected UserSet(Parcel parcel) {
            this.online = 1;
            this.closeDistance = parcel.readInt();
            this.distance = parcel.readInt();
            this.friends = parcel.readInt();
            this.isAddressBook = parcel.readInt();
            this.nearby = parcel.readInt();
            this.setId = parcel.readString();
            this.setTime = parcel.readString();
            this.userId = parcel.readString();
            this.online = parcel.readInt();
        }
    }

    public UserBean() {
        this.appointState = -1;
    }
}
