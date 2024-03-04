package com.guochao.faceshow.aaspring.modulars.live.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.beans.AudienceInformation;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.modulars.live.game.q;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.user.RoomInfo;
import d9.n;
import java.util.List;
import p7.g;
/* loaded from: classes3.dex */
public class PkUser implements Parcelable {
    public static final Parcelable.Creator<PkUser> CREATOR = new Parcelable.Creator<PkUser>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.PkUser.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PkUser createFromParcel(Parcel parcel) {
            return new PkUser(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PkUser[] newArray(int i9) {
            return new PkUser[i9];
        }
    };
    private PkUserInfo leftAnchorMsg;
    private String pkPunishAllTime;
    private String pkPunishEndTime;
    private String pkStage;
    private String pkingAllTime;
    private String pkingEndTime;
    private PkUserInfo rightAnchorMsg;
    private UserVipData userVipMsg;

    public PkUser() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PkUserInfo getLeftAnchorMsg() {
        return this.leftAnchorMsg;
    }

    public String getPkPunishAllTime() {
        return this.pkPunishAllTime;
    }

    public String getPkPunishEndTime() {
        return this.pkPunishEndTime;
    }

    public String getPkStage() {
        return this.pkStage;
    }

    public String getPkingAllTime() {
        return this.pkingAllTime;
    }

    public String getPkingEndTime() {
        return this.pkingEndTime;
    }

    public PkUserInfo getRightAnchorMsg() {
        return this.rightAnchorMsg;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    public void setLeftAnchorMsg(PkUserInfo pkUserInfo) {
        this.leftAnchorMsg = pkUserInfo;
    }

    public void setPkPunishAllTime(String str) {
        this.pkPunishAllTime = str;
    }

    public void setPkPunishEndTime(String str) {
        this.pkPunishEndTime = str;
    }

    public void setPkStage(String str) {
        this.pkStage = str;
    }

    public void setPkingAllTime(String str) {
        this.pkingAllTime = str;
    }

    public void setPkingEndTime(String str) {
        this.pkingEndTime = str;
    }

    public void setRightAnchorMsg(PkUserInfo pkUserInfo) {
        this.rightAnchorMsg = pkUserInfo;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeParcelable(this.leftAnchorMsg, i9);
        parcel.writeParcelable(this.rightAnchorMsg, i9);
        parcel.writeString(this.pkPunishAllTime);
        parcel.writeString(this.pkPunishEndTime);
        parcel.writeString(this.pkingEndTime);
        parcel.writeString(this.pkingAllTime);
        parcel.writeString(this.pkStage);
    }

    protected PkUser(Parcel parcel) {
        this.leftAnchorMsg = (PkUserInfo) parcel.readParcelable(PkUserInfo.class.getClassLoader());
        this.rightAnchorMsg = (PkUserInfo) parcel.readParcelable(PkUserInfo.class.getClassLoader());
        this.pkPunishAllTime = parcel.readString();
        this.pkPunishEndTime = parcel.readString();
        this.pkingEndTime = parcel.readString();
        this.pkingAllTime = parcel.readString();
        this.pkStage = parcel.readString();
    }

    /* loaded from: classes3.dex */
    public static class PkUserInfo implements Parcelable, LiveRoomModel {
        public static final Parcelable.Creator<PkUserInfo> CREATOR = new Parcelable.Creator<PkUserInfo>() { // from class: com.guochao.faceshow.aaspring.modulars.live.model.PkUser.PkUserInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PkUserInfo createFromParcel(Parcel parcel) {
                return new PkUserInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PkUserInfo[] newArray(int i9) {
                return new PkUserInfo[i9];
            }
        };
        private String img;
        private String isAttenion;
        private String jsUrl;
        private String liveId;
        private String logo;
        private String nickName;
        private List<AudienceInformation> pkAudienceList;
        @SerializedName(alternate = {"pkFcion"}, value = "pkFcoin")
        private String pkFcoin;
        private String pkWinOrFail;
        private String streamId;
        private String userId;

        protected PkUserInfo(Parcel parcel) {
            this.pkWinOrFail = parcel.readString();
            this.nickName = parcel.readString();
            this.pkAudienceList = parcel.createTypedArrayList(AudienceInformation.CREATOR);
            this.isAttenion = parcel.readString();
            this.logo = parcel.readString();
            this.pkFcoin = parcel.readString();
            this.jsUrl = parcel.readString();
            this.userId = parcel.readString();
            this.liveId = parcel.readString();
            this.img = parcel.readString();
            this.streamId = parcel.readString();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ RoomInfo buildRoomInfo() {
            return n.a(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean canMakeAudioCall() {
            return n.b(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean canMakeVideoCall() {
            return n.c(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean canMakeVideoOrAudioCall() {
            return n.d(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public boolean canRequestLinkMic() {
            return false;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ int getAdmitDefeatNum() {
            return n.e(this);
        }

        @Override // p7.b
        public int getAge() {
            return 0;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean getApplyPkState() {
            return n.f(this);
        }

        public /* bridge */ /* synthetic */ long getArenaDurationTime() {
            return n.g(this);
        }

        public /* bridge */ /* synthetic */ long getArenaPunishmentDurationTime() {
            return n.h(this);
        }

        @Override // p7.h, p7.c
        public String getAvatarUrl() {
            return this.img;
        }

        public /* bridge */ /* synthetic */ List getBigGiftBeans() {
            return n.i(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public String getBroadCasterUserId() {
            return null;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public String getBroadCasterUserName() {
            return null;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public String getChatGroupId() {
            return null;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ String getCountry() {
            return n.j(this);
        }

        @Override // p7.h
        public String getCountryFlag() {
            return this.logo;
        }

        @Override // p7.h
        public String getCurrentUserId() {
            return this.userId;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public int getFCoinCount() {
            try {
                return Integer.parseInt(this.pkFcoin);
            } catch (Exception unused) {
                return 0;
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
        public /* bridge */ /* synthetic */ int getGameSeatCurrentPlayerPosition() {
            return q.a(this);
        }

        @Override // p7.h, p7.c
        public int getGender() {
            return 0;
        }

        public String getImg() {
            return this.img;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ List getIntroductionToPlay() {
            return n.k(this);
        }

        public String getIsAttenion() {
            return this.isAttenion;
        }

        public String getJsUrl() {
            return this.jsUrl;
        }

        @Override // p7.e
        public int getLevel() {
            return 0;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public String getLinkMicStreamId() {
            return getStreamId();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ String getLiveAddress() {
            return n.l(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public String getLiveCoverImg() {
            return null;
        }

        public String getLiveId() {
            return this.liveId;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public String getLiveInfoContent() {
            return null;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public String getLivePushIP() {
            return null;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public String getLiveRoomId() {
            return this.liveId;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public String getLiveStartTimestamp() {
            return null;
        }

        public String getLogo() {
            return this.logo;
        }

        @Override // p7.h
        public /* bridge */ /* synthetic */ String getMVPUrl() {
            return g.a(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ String getMatchType() {
            return n.m(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public List<? extends LiveRoomModel> getMultiLiveRoom() {
            return null;
        }

        public String getNickName() {
            return this.nickName;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ int getOnlineNum() {
            return n.n(this);
        }

        @Override // p7.h
        public String getPendantUrl() {
            return null;
        }

        public List<AudienceInformation> getPkAudienceList() {
            return this.pkAudienceList;
        }

        public String getPkFcoin() {
            return this.pkFcoin;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ IM_User getPkUserInfo() {
            return n.o(this);
        }

        public String getPkWinOrFail() {
            return this.pkWinOrFail;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
        public /* bridge */ /* synthetic */ long getRestActiveTime() {
            return q.b(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public String getShareUrl() {
            return null;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ String getStatus() {
            return n.p(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public String getStreamId() {
            if (TextUtils.isEmpty(this.streamId) && !TextUtils.isEmpty(this.jsUrl)) {
                this.streamId = Uri.parse(this.jsUrl).getLastPathSegment();
            }
            return this.streamId;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public String getStreamUrl() {
            return this.jsUrl;
        }

        public /* bridge */ /* synthetic */ String getStream_id() {
            return n.r(this);
        }

        public String getUserId() {
            return this.userId;
        }

        @Override // p7.h
        public /* bridge */ /* synthetic */ String getUserName() {
            return g.b(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public String getUserNickName() {
            return null;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public int getUserType() {
            return 2;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer, p7.h
        @Nullable
        public /* bridge */ /* synthetic */ b8.g getVipInfo() {
            return g.c(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ String getVoiceStatus() {
            return n.t(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
        public /* bridge */ /* synthetic */ boolean isActive() {
            return q.d(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public boolean isAdministrator() {
            return false;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean isAnchorForceMatchType() {
            return n.u(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean isAnchorForceVoiceStatus() {
            return n.v(this);
        }

        public /* bridge */ /* synthetic */ boolean isBanTalk() {
            return n.w(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public boolean isBroadCaster() {
            return false;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return n.x(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean isFreeLinkMic() {
            return n.y(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean isFullScreenActivity() {
            return n.z(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean isInPkMode() {
            return n.A(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean isInPkPunishmentTime() {
            return n.B(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public boolean isKickedOut() {
            return false;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean isLaunchFromFloatWindow() {
            return n.C(this);
        }

        public /* bridge */ /* synthetic */ boolean isLinkMicEnabled() {
            return n.D(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean isMultiLiveRoom() {
            return n.E(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean isMute() {
            return n.F(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean isPkModeWhenFloatWindow() {
            return n.G(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean isPkWaiting() {
            return n.H(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean isPrivateLiveRoom() {
            return n.I(this);
        }

        public /* bridge */ /* synthetic */ boolean isShowedFloatFromLiveRoom() {
            return n.J(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ boolean isVoiceRoom() {
            return n.K(this);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setAdmitDefeatNum(int i9) {
            n.L(this, i9);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setAnchorForceMatchType(boolean z10) {
            n.M(this, z10);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setAnchorForceVoiceStatus(boolean z10) {
            n.N(this, z10);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setApplyPkState(boolean z10) {
            n.O(this, z10);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setArenaDurationTime(long j10) {
            n.P(this, j10);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setArenaPunishmentDurationTime(long j10) {
            n.Q(this, j10);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setBanTalk(boolean z10) {
            n.R(this, z10);
        }

        public /* bridge */ /* synthetic */ void setBigGiftBeans(List list) {
            n.S(this, list);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setBroadCasterUserName(String str) {
            n.T(this, str);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public void setChatGroupId(String str) {
        }

        public /* bridge */ /* synthetic */ void setCountry(String str) {
            n.U(this, str);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setFocused(boolean z10) {
            n.V(this, z10);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setFreeLinkMic(boolean z10) {
            n.W(this, z10);
        }

        public /* bridge */ /* synthetic */ void setGameInfoList(List list) {
            n.X(this, list);
        }

        public /* bridge */ /* synthetic */ void setGameSeatCurrentPlayerPosition(int i9) {
            q.e(this, i9);
        }

        public void setImg(String str) {
            this.img = str;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setInPkMode(boolean z10) {
            n.Y(this, z10);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setInPkPunishmentTime(boolean z10) {
            n.Z(this, z10);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setIntroductionToPlay(List list) {
            n.a0(this, list);
        }

        public void setIsAttenion(String str) {
            this.isAttenion = str;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setIsFullScreenActivity(int i9) {
            n.b0(this, i9);
        }

        public void setJsUrl(String str) {
            this.jsUrl = str;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setKickedOut(boolean z10) {
            n.c0(this, z10);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setLaunchFromFloatWindow(boolean z10) {
            n.d0(this, z10);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setLinkMicEnabled(boolean z10) {
            n.e0(this, z10);
        }

        public /* bridge */ /* synthetic */ void setLinkMicStreamId(String str) {
            n.f0(this, str);
        }

        public void setLiveCoverImg(String str) {
        }

        public void setLiveId(String str) {
            this.liveId = str;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public void setLivePushIP(String str) {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public void setLiveRoomId(String str) {
            this.liveId = str;
        }

        public void setLiveStartTimestamp(String str) {
        }

        public void setLogo(String str) {
            this.logo = str;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setMatchType(String str) {
            n.g0(this, str);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setMultiLiveRoom(boolean z10) {
            n.h0(this, z10);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setMute(boolean z10) {
            n.i0(this, z10);
        }

        public void setNickName(String str) {
            this.nickName = str;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setOnlineNum(int i9) {
            n.j0(this, i9);
        }

        public void setPkAudienceList(List<AudienceInformation> list) {
            this.pkAudienceList = list;
        }

        public void setPkFcoin(String str) {
            this.pkFcoin = str;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setPkModeWhenFloatWindow(boolean z10) {
            n.k0(this, z10);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setPkUserInfo(IM_User iM_User) {
            n.l0(this, iM_User);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setPkWaiting(boolean z10) {
            n.m0(this, z10);
        }

        public void setPkWinOrFail(String str) {
            this.pkWinOrFail = str;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public void setPrivateType(String str) {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public void setRequestLinkMicEnabled(boolean z10) {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public void setShareUrl(String str) {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setShowedFloatFromLiveRoom(boolean z10) {
            n.n0(this, z10);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setStatus(String str) {
            n.o0(this, str);
        }

        public void setStreamId(String str) {
            this.streamId = str;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public void setStreamUrl(String str) {
            this.jsUrl = str;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setUserType(int i9) {
            n.p0(this, i9);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
        public /* bridge */ /* synthetic */ void setVoiceStatus(String str) {
            n.q0(this, str);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.pkWinOrFail);
            parcel.writeString(this.nickName);
            parcel.writeTypedList(this.pkAudienceList);
            parcel.writeString(this.isAttenion);
            parcel.writeString(this.logo);
            parcel.writeString(this.pkFcoin);
            parcel.writeString(this.jsUrl);
            parcel.writeString(this.userId);
            parcel.writeString(this.liveId);
            parcel.writeString(this.img);
            parcel.writeString(this.streamId);
        }

        public PkUserInfo() {
        }
    }
}
