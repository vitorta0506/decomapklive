package com.guochao.faceshow.aaspring.modulars.live.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.guochao.component.liveroom.model.GCLiveRoomModel;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.live.game.q;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.user.RoomInfo;
import d9.n;
import java.util.ArrayList;
import java.util.List;
import p7.g;
/* loaded from: classes3.dex */
public class BroadCasterLiveModel extends GCLiveRoomModel implements LiveRoomModel {
    public static final Parcelable.Creator<BroadCasterLiveModel> CREATOR = new Parcelable.Creator<BroadCasterLiveModel>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BroadCasterLiveModel createFromParcel(Parcel parcel) {
            return new BroadCasterLiveModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BroadCasterLiveModel[] newArray(int i9) {
            return new BroadCasterLiveModel[i9];
        }
    };
    private String address;
    private int admitDefeatNum;
    private boolean anchorForceMatchType;
    private boolean anchorForceVoiceStatus;
    private boolean applyPkState;
    private long arenaDurationTime;
    private long arenaPunishmentDurationTime;
    private String city;
    private List<String> introductionToPlay;
    private int isMusicActivity;
    private boolean isPrivateRoom;
    private String linkMicStreamId;
    private String liveCountry;
    private String liveId;
    private String liveImg;
    private String liveTitle;
    private boolean mFreeLinkMic;
    private String mGroupId;
    private boolean mLinkMicEnabled;
    private String mLivePushIp;
    private boolean mMultiLiveRoom;
    private String mPassword;
    private boolean mPkMode;
    UserBean mUserBean;
    private String matchType;
    private boolean micEnabled;
    private int onlineNum;
    private IM_User pkUser;
    private boolean pkWaiting;
    private boolean punishment;
    private String pushUrl;
    private int screenShotSwitch;
    private String shareUrl;
    private String startTime;
    private UserVipData userVipMsg;
    private int videoOpen;
    private int videoSwitch;
    private String voiceStatus;

    public BroadCasterLiveModel(UserBean userBean) {
        this.mLinkMicEnabled = true;
        this.mFreeLinkMic = false;
        this.videoSwitch = 0;
        this.videoOpen = 0;
        this.screenShotSwitch = 1;
        this.mUserBean = userBean;
    }

    public /* bridge */ /* synthetic */ RoomInfo buildRoomInfo() {
        return n.a(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean canMakeAudioCall() {
        return canMakeVideoCall();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean canMakeVideoCall() {
        return this.videoOpen == 1;
    }

    public /* bridge */ /* synthetic */ boolean canMakeVideoOrAudioCall() {
        return n.d(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean canRequestLinkMic() {
        return this.mLinkMicEnabled;
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public int getAdmitDefeatNum() {
        return this.admitDefeatNum;
    }

    @Override // p7.b
    public int getAge() {
        UserBean userBean = this.mUserBean;
        if (userBean == null) {
            return 0;
        }
        return userBean.getAge();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean getApplyPkState() {
        return this.applyPkState;
    }

    public long getArenaDurationTime() {
        return this.arenaDurationTime;
    }

    public long getArenaPunishmentDurationTime() {
        return this.arenaPunishmentDurationTime;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        UserBean userBean = this.mUserBean;
        return userBean == null ? "" : userBean.img;
    }

    public /* bridge */ /* synthetic */ List getBigGiftBeans() {
        return n.i(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getBroadCasterUserId() {
        return this.mUserBean.getUserId();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getBroadCasterUserName() {
        return this.mUserBean.getUserName();
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getChatGroupId() {
        return this.liveId;
    }

    public String getCity() {
        return this.city;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getCountry() {
        return this.liveCountry;
    }

    @Override // p7.h
    public String getCountryFlag() {
        UserBean userBean = this.mUserBean;
        return userBean == null ? "" : userBean.countryFlag;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        UserBean userBean = this.mUserBean;
        return userBean == null ? "" : userBean.getUserId();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public int getFCoinCount() {
        return 0;
    }

    public /* bridge */ /* synthetic */ int getGameSeatCurrentPlayerPosition() {
        return q.a(this);
    }

    @Override // p7.h, p7.c
    public int getGender() {
        UserBean userBean = this.mUserBean;
        if (userBean == null) {
            return -1;
        }
        return userBean.getGender();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public List<String> getIntroductionToPlay() {
        if (this.introductionToPlay == null) {
            this.introductionToPlay = new ArrayList();
        }
        return this.introductionToPlay;
    }

    public int getIsMusicActivity() {
        if (i.u().s().getBlackShow() == 1) {
            return this.isMusicActivity;
        }
        return 0;
    }

    @Override // p7.e
    public int getLevel() {
        UserBean userBean = this.mUserBean;
        if (userBean == null) {
            return 0;
        }
        return userBean.levelId;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLinkMicStreamId() {
        return this.linkMicStreamId;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLiveAddress() {
        if (BaseConfig.isChinese()) {
            return this.city;
        }
        return this.liveCountry;
    }

    public String getLiveCountry() {
        return this.liveCountry;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLiveCoverImg() {
        return this.liveImg;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLiveInfoContent() {
        return this.liveTitle;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLivePushIP() {
        return this.mLivePushIp;
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    @NonNull
    public String getLiveRoomId() {
        return this.liveId;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLiveStartTimestamp() {
        return this.startTime;
    }

    public String getLiveTitle() {
        return this.liveTitle;
    }

    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getMatchType() {
        return this.matchType;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public List<? extends LiveRoomModel> getMultiLiveRoom() {
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public int getOnlineNum() {
        return this.onlineNum;
    }

    @Override // p7.h
    public String getPendantUrl() {
        UserBean userBean = this.mUserBean;
        return userBean == null ? "" : userBean.getPendantUrl();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public IM_User getPkUserInfo() {
        return this.pkUser;
    }

    public /* bridge */ /* synthetic */ long getRestActiveTime() {
        return q.b(this);
    }

    public int getScreenShotSwitch() {
        return this.screenShotSwitch;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getShareUrl() {
        return this.shareUrl;
    }

    public /* bridge */ /* synthetic */ String getStatus() {
        return n.p(this);
    }

    public /* bridge */ /* synthetic */ String getStreamId() {
        return n.q(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getStreamUrl() {
        return this.pushUrl;
    }

    public /* bridge */ /* synthetic */ String getStream_id() {
        return n.r(this);
    }

    public /* bridge */ /* synthetic */ String getUserName() {
        return g.b(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getUserNickName() {
        return this.mUserBean.nickName;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public int getUserType() {
        return 0;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    public int getVideoOpen() {
        return this.videoOpen;
    }

    public int getVideoSwitch() {
        return this.videoSwitch;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer, p7.h
    public b8.g getVipInfo() {
        UserBean userBean = this.mUserBean;
        if (userBean != null) {
            return userBean.getVipInfo();
        }
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getVoiceStatus() {
        return this.voiceStatus;
    }

    public /* bridge */ /* synthetic */ boolean isActive() {
        return q.d(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isAdministrator() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isAnchorForceMatchType() {
        return this.anchorForceMatchType;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isAnchorForceVoiceStatus() {
        return this.anchorForceVoiceStatus;
    }

    public /* bridge */ /* synthetic */ boolean isBanTalk() {
        return n.w(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isBroadCaster() {
        return true;
    }

    public /* bridge */ /* synthetic */ boolean isFocused() {
        return n.x(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isFreeLinkMic() {
        return this.mFreeLinkMic;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isFullScreenActivity() {
        return i.u().s().getBlackShow() == 1 && this.isMusicActivity == 1;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isInPkMode() {
        return this.mPkMode;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isInPkPunishmentTime() {
        return this.punishment;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isKickedOut() {
        return false;
    }

    public /* bridge */ /* synthetic */ boolean isLaunchFromFloatWindow() {
        return n.C(this);
    }

    public boolean isLinkMicEnabled() {
        return this.micEnabled;
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isMultiLiveRoom() {
        return this.mMultiLiveRoom;
    }

    public /* bridge */ /* synthetic */ boolean isMute() {
        return n.F(this);
    }

    public /* bridge */ /* synthetic */ boolean isPkModeWhenFloatWindow() {
        return n.G(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isPkWaiting() {
        return this.pkWaiting;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isPrivateLiveRoom() {
        return this.isPrivateRoom;
    }

    public /* bridge */ /* synthetic */ boolean isShowedFloatFromLiveRoom() {
        return n.J(this);
    }

    public void setAddress(String str) {
        this.address = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setAdmitDefeatNum(int i9) {
        this.admitDefeatNum = i9;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setAnchorForceMatchType(boolean z10) {
        LogUtils.e("AnchorForceMatchTyp+BroadCasterLiveModel", "setAnchorForceMatchType==" + z10);
        this.anchorForceMatchType = z10;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setAnchorForceVoiceStatus(boolean z10) {
        this.anchorForceVoiceStatus = z10;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setApplyPkState(boolean z10) {
        this.applyPkState = z10;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setArenaDurationTime(long j10) {
        this.arenaDurationTime = j10;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setArenaPunishmentDurationTime(long j10) {
        this.arenaPunishmentDurationTime = j10;
    }

    public /* bridge */ /* synthetic */ void setBanTalk(boolean z10) {
        n.R(this, z10);
    }

    public /* bridge */ /* synthetic */ void setBigGiftBeans(List list) {
        n.S(this, list);
    }

    public /* bridge */ /* synthetic */ void setBroadCasterUserName(String str) {
        n.T(this, str);
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setChatGroupId(String str) {
        this.mGroupId = str;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setCountry(String str) {
        setLiveCountry(str);
    }

    public /* bridge */ /* synthetic */ void setFocused(boolean z10) {
        n.V(this, z10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setFreeLinkMic(boolean z10) {
        this.mFreeLinkMic = z10;
    }

    public /* bridge */ /* synthetic */ void setGameInfoList(List list) {
        n.X(this, list);
    }

    public /* bridge */ /* synthetic */ void setGameSeatCurrentPlayerPosition(int i9) {
        q.e(this, i9);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setInPkMode(boolean z10) {
        this.mPkMode = z10;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setInPkPunishmentTime(boolean z10) {
        this.punishment = z10;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setIntroductionToPlay(List<String> list) {
        this.introductionToPlay = list;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setIsFullScreenActivity(int i9) {
        this.isMusicActivity = i9;
    }

    public /* bridge */ /* synthetic */ void setKickedOut(boolean z10) {
        n.c0(this, z10);
    }

    public /* bridge */ /* synthetic */ void setLaunchFromFloatWindow(boolean z10) {
        n.d0(this, z10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setLinkMicEnabled(boolean z10) {
        this.micEnabled = z10;
    }

    public void setLinkMicStreamId(String str) {
        this.linkMicStreamId = str;
    }

    public void setLiveCountry(String str) {
        this.liveCountry = str;
    }

    public void setLiveCoverImg(String str) {
        this.liveImg = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setLivePushIP(String str) {
        this.mLivePushIp = str;
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setLiveRoomId(@NonNull String str) {
        this.liveId = str;
    }

    public void setLiveStartTimestamp(String str) {
        this.startTime = str;
    }

    public void setLiveTitle(String str) {
        this.liveTitle = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setMatchType(String str) {
        this.matchType = str;
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setMultiLiveRoom(boolean z10) {
        this.mMultiLiveRoom = z10;
        this.mLinkMicEnabled = z10;
    }

    public /* bridge */ /* synthetic */ void setMute(boolean z10) {
        n.i0(this, z10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setOnlineNum(int i9) {
        this.onlineNum = i9;
    }

    public void setPendantUrl(String str) {
        this.mUserBean.setPendantUrl(str);
    }

    public /* bridge */ /* synthetic */ void setPkModeWhenFloatWindow(boolean z10) {
        n.k0(this, z10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setPkUserInfo(IM_User iM_User) {
        this.pkUser = iM_User;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setPkWaiting(boolean z10) {
        this.pkWaiting = z10;
    }

    public void setPrivateRoom(boolean z10) {
        this.isPrivateRoom = z10;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setPrivateType(String str) {
        this.isPrivateRoom = "2".equals(str);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setRequestLinkMicEnabled(boolean z10) {
        this.mLinkMicEnabled = z10;
    }

    public void setScreenShotSwitch(int i9) {
        this.screenShotSwitch = i9;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setShareUrl(String str) {
        this.shareUrl = str;
    }

    public /* bridge */ /* synthetic */ void setShowedFloatFromLiveRoom(boolean z10) {
        n.n0(this, z10);
    }

    public /* bridge */ /* synthetic */ void setStatus(String str) {
        n.o0(this, str);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setStreamUrl(String str) {
        this.pushUrl = str;
    }

    public /* bridge */ /* synthetic */ void setUserType(int i9) {
        n.p0(this, i9);
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    public void setVideoOpen(int i9) {
        this.videoOpen = i9;
    }

    public void setVideoSwitch(int i9) {
        this.videoSwitch = i9;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setVoiceStatus(String str) {
        this.voiceStatus = str;
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeParcelable(this.mUserBean, i9);
        parcel.writeString(this.liveId);
        parcel.writeString(this.mGroupId);
        parcel.writeString(this.pushUrl);
        parcel.writeString(this.mPassword);
        parcel.writeString(this.liveImg);
        parcel.writeByte(this.mLinkMicEnabled ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.mMultiLiveRoom ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.isPrivateRoom ? (byte) 1 : (byte) 0);
        parcel.writeString(this.address);
        parcel.writeString(this.shareUrl);
        parcel.writeString(this.startTime);
        parcel.writeByte(this.mFreeLinkMic ? (byte) 1 : (byte) 0);
        parcel.writeString(this.mLivePushIp);
        parcel.writeString(this.linkMicStreamId);
        parcel.writeString(this.voiceStatus);
        parcel.writeString(this.matchType);
        parcel.writeByte(this.anchorForceVoiceStatus ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.anchorForceMatchType ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.applyPkState ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.mPkMode ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.arenaPunishmentDurationTime);
        parcel.writeLong(this.arenaDurationTime);
        parcel.writeInt(this.admitDefeatNum);
        parcel.writeStringList(this.introductionToPlay);
        parcel.writeParcelable(this.pkUser, i9);
        parcel.writeByte(this.pkWaiting ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.punishment ? (byte) 1 : (byte) 0);
    }

    public BroadCasterLiveModel() {
        this.mLinkMicEnabled = true;
        this.mFreeLinkMic = false;
        this.videoSwitch = 0;
        this.videoOpen = 0;
        this.screenShotSwitch = 1;
    }

    protected BroadCasterLiveModel(Parcel parcel) {
        super(parcel);
        this.mLinkMicEnabled = true;
        this.mFreeLinkMic = false;
        this.videoSwitch = 0;
        this.videoOpen = 0;
        this.screenShotSwitch = 1;
        this.mUserBean = (UserBean) parcel.readParcelable(UserBean.class.getClassLoader());
        this.liveId = parcel.readString();
        this.mGroupId = parcel.readString();
        this.pushUrl = parcel.readString();
        this.mPassword = parcel.readString();
        this.liveImg = parcel.readString();
        this.mLinkMicEnabled = parcel.readByte() != 0;
        this.mMultiLiveRoom = parcel.readByte() != 0;
        this.isPrivateRoom = parcel.readByte() != 0;
        this.address = parcel.readString();
        this.shareUrl = parcel.readString();
        this.startTime = parcel.readString();
        this.mFreeLinkMic = parcel.readByte() != 0;
        this.mLivePushIp = parcel.readString();
        this.linkMicStreamId = parcel.readString();
        this.voiceStatus = parcel.readString();
        this.matchType = parcel.readString();
        this.anchorForceVoiceStatus = parcel.readByte() != 0;
        this.anchorForceMatchType = parcel.readByte() != 0;
        this.applyPkState = parcel.readByte() != 0;
        this.mPkMode = parcel.readByte() != 0;
        this.arenaPunishmentDurationTime = parcel.readLong();
        this.arenaDurationTime = parcel.readLong();
        this.admitDefeatNum = parcel.readInt();
        this.introductionToPlay = parcel.createStringArrayList();
        this.pkUser = (IM_User) parcel.readParcelable(IM_User.class.getClassLoader());
        this.pkWaiting = parcel.readByte() != 0;
        this.punishment = parcel.readByte() != 0;
    }
}
