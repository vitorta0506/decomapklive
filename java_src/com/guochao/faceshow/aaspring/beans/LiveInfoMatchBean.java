package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.modulars.live.game.q;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.user.RoomInfo;
import d9.n;
import java.util.List;
import p7.c;
import p7.g;
/* loaded from: classes3.dex */
public class LiveInfoMatchBean implements Parcelable, LiveRoomModel {
    public static final Parcelable.Creator<LiveInfoMatchBean> CREATOR = new Parcelable.Creator<LiveInfoMatchBean>() { // from class: com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveInfoMatchBean createFromParcel(Parcel parcel) {
            return new LiveInfoMatchBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveInfoMatchBean[] newArray(int i9) {
            return new LiveInfoMatchBean[i9];
        }
    };
    @SerializedName(alternate = {"anchorForceMatchType"}, value = "s2")
    private boolean anchorForceMatchType;
    @SerializedName(alternate = {"anchorForceVoiceStatus"}, value = "s1")
    private boolean anchorForceVoiceStatus;
    private String avatar;
    @SerializedName(alternate = {"countryLogo", "userCountryFlag"}, value = "countryFlag")
    private String countryLogo;
    private String fcoin;
    private String flvUrl;
    private String img;
    private int isOnLine;
    private transient boolean isSelect;
    private String jsUrl;
    private String matchType;
    private String nickName;
    private transient int position;
    private List<ImageAvatar> richList;
    private String streamId;
    private String userId;
    private transient UserVipData userVipMsg;
    private String voiceStatus;

    /* loaded from: classes3.dex */
    public static class ImageAvatar implements Parcelable, c {
        public static final Parcelable.Creator<ImageAvatar> CREATOR = new Parcelable.Creator<ImageAvatar>() { // from class: com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean.ImageAvatar.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ImageAvatar createFromParcel(Parcel parcel) {
                return new ImageAvatar(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ImageAvatar[] newArray(int i9) {
                return new ImageAvatar[i9];
            }
        };
        private String img;

        public ImageAvatar() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // p7.c
        public String getAvatarUrl() {
            return this.img;
        }

        @Override // p7.c
        public int getGender() {
            return 0;
        }

        public String getImg() {
            return this.img;
        }

        public void setImg(String str) {
            this.img = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeString(this.img);
        }

        protected ImageAvatar(Parcel parcel) {
            this.img = parcel.readString();
        }
    }

    public LiveInfoMatchBean() {
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

    public String getAvatar() {
        return this.avatar;
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
        return this.userId;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getBroadCasterUserName() {
        return this.nickName;
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
        return this.countryLogo;
    }

    public String getCountryLogo() {
        return this.countryLogo;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public int getFCoinCount() {
        try {
            return Integer.parseInt(this.fcoin);
        } catch (Exception unused) {
            return 0;
        }
    }

    public String getFcoin() {
        return this.fcoin;
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

    public int getIsOnLine() {
        return this.isOnLine;
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
        return this.streamId;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ String getLiveAddress() {
        return n.l(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLiveCoverImg() {
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLiveInfoContent() {
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLivePushIP() {
        return "";
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLiveRoomId() {
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLiveStartTimestamp() {
        return "";
    }

    @Override // p7.h
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

    public String getNickName() {
        return this.nickName;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ int getOnlineNum() {
        return n.n(this);
    }

    @Override // p7.h
    public String getPendantUrl() {
        return this.avatar;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ IM_User getPkUserInfo() {
        return n.o(this);
    }

    public int getPosition() {
        return this.position;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public /* bridge */ /* synthetic */ long getRestActiveTime() {
        return q.b(this);
    }

    public List<ImageAvatar> getRichList() {
        return this.richList;
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
        return this.streamId;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getStreamUrl() {
        return this.flvUrl;
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
        return this.nickName;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public int getUserType() {
        return 0;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel, com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer, p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getVoiceStatus() {
        return this.voiceStatus;
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

    public boolean isSelect() {
        return this.isSelect;
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
    public void setAnchorForceMatchType(boolean z10) {
        this.anchorForceMatchType = z10;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setAnchorForceVoiceStatus(boolean z10) {
        this.anchorForceVoiceStatus = z10;
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

    public void setAvatar(String str) {
        this.avatar = str;
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

    public void setCountryLogo(String str) {
        this.countryLogo = str;
    }

    public void setFcoin(String str) {
        this.fcoin = str;
    }

    public void setFlvUrl(String str) {
        this.flvUrl = str;
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

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setIsFullScreenActivity(int i9) {
        n.b0(this, i9);
    }

    public void setIsOnLine(int i9) {
        this.isOnLine = i9;
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

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setLivePushIP(String str) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setLiveRoomId(String str) {
    }

    public void setLiveStartTimestamp(String str) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setMatchType(String str) {
        this.matchType = str;
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

    public void setPosition(int i9) {
        this.position = i9;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setPrivateType(String str) {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setRequestLinkMicEnabled(boolean z10) {
    }

    public void setRichList(List<ImageAvatar> list) {
        this.richList = list;
    }

    public void setSelect(boolean z10) {
        this.isSelect = z10;
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
        this.flvUrl = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setUserType(int i9) {
        n.p0(this, i9);
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setVoiceStatus(String str) {
        this.voiceStatus = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeTypedList(this.richList);
        parcel.writeString(this.fcoin);
        parcel.writeString(this.userId);
        parcel.writeString(this.voiceStatus);
        parcel.writeString(this.matchType);
        parcel.writeString(this.nickName);
        parcel.writeString(this.avatar);
        parcel.writeString(this.img);
        parcel.writeInt(this.position);
        parcel.writeByte(this.isSelect ? (byte) 1 : (byte) 0);
        parcel.writeString(this.countryLogo);
        parcel.writeString(this.streamId);
        parcel.writeString(this.flvUrl);
        parcel.writeString(this.jsUrl);
        parcel.writeInt(this.isOnLine);
        parcel.writeByte(this.anchorForceVoiceStatus ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.anchorForceMatchType ? (byte) 1 : (byte) 0);
    }

    protected LiveInfoMatchBean(Parcel parcel) {
        this.richList = parcel.createTypedArrayList(ImageAvatar.CREATOR);
        this.fcoin = parcel.readString();
        this.userId = parcel.readString();
        this.voiceStatus = parcel.readString();
        this.matchType = parcel.readString();
        this.nickName = parcel.readString();
        this.avatar = parcel.readString();
        this.img = parcel.readString();
        this.position = parcel.readInt();
        this.isSelect = parcel.readByte() != 0;
        this.countryLogo = parcel.readString();
        this.streamId = parcel.readString();
        this.flvUrl = parcel.readString();
        this.jsUrl = parcel.readString();
        this.isOnLine = parcel.readInt();
        this.anchorForceVoiceStatus = parcel.readByte() != 0;
        this.anchorForceMatchType = parcel.readByte() != 0;
    }
}
