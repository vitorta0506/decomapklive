package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import b8.e;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import com.guochao.component.liveroom.model.GCLiveRoomModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.debug.StreamUrlUtils;
import com.guochao.faceshow.aaspring.modulars.live.game.q;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.model.RunwayMessage;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.user.RoomInfo;
import d9.n;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p7.g;
import p7.h;
/* loaded from: classes3.dex */
public class RoomItemData extends GCLiveRoomModel implements h, LiveRoomModel, MultiItemEntity, TrtcFaceCastUser, GCUser {
    public static final Parcelable.Creator<RoomItemData> CREATOR = new Parcelable.Creator<RoomItemData>() { // from class: com.guochao.faceshow.aaspring.beans.RoomItemData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RoomItemData createFromParcel(Parcel parcel) {
            return new RoomItemData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RoomItemData[] newArray(int i9) {
            return new RoomItemData[i9];
        }
    };
    public String accelerateURL;
    private boolean anchorForceMatchType;
    private boolean anchorForceVoiceStatus;
    private boolean applyPkState;
    private long arenaDurationTime;
    private long arenaPunishmentDurationTime;
    private List<AudienceInformation> audienceList;
    private String avatar;
    private String backgroundImg;
    private String banTalk;
    private List<RunwayMessage.BigGiftBean> bigGiftBeans;
    private String blackFlag;
    private String city;
    private int code;
    private String country;
    private String countryId;
    private String fansNum;
    private String fcoin;
    private String flvUrl;
    private String groupId;
    private String img;
    private String infoName;
    private String isAdmin;
    private String isAttention;
    private int isBack;
    private int isKick;
    private String isLivePk;
    private String isLockMicrophone;
    private String isLong;
    private int isMusicActivity;
    private String kickAdminType;
    @Nullable
    private RoomItemData lastRoomItem;
    private boolean launchFromFloatWindow;
    private int level;
    private String likeNum;
    private String liveId;
    private String liveImg;
    private String liveLabel;
    private String liveType;
    private String logo;
    private String mLivePushIp;
    private boolean mNeedPlayInItem;
    private int mShowGiftDialog;
    private boolean mShowedFloatFromLiveRoom;
    private String matchType;
    private List<LiveMessageModel<?>> messages;
    private boolean micEnabled;
    private String microphoneMode;
    private boolean mute;
    private String nickName;
    private int onlineNum;
    private boolean pkModeWhenFloatWindow;
    private String privateType;
    private List<LiveInfoMatchBean> pushers;
    @Nullable
    private String refer;
    private int screenShotSwitch;
    private String shareUrl;
    private String startTime;
    private String status;
    private String stream_id;
    private String userId;
    private UserVipData userVipMsg;
    private int videoOpen;
    private int videoSwitch;
    @Nullable
    private VoiceRoomInfoModel voiceRoomInfoModel;
    private String voiceStatus;

    protected RoomItemData(Parcel parcel) {
        super(parcel);
        this.liveId = "";
        this.userId = "";
        this.videoSwitch = 0;
        this.videoOpen = 0;
        this.screenShotSwitch = 1;
        this.status = "0";
        this.img = parcel.readString();
        this.onlineNum = parcel.readInt();
        this.avatar = parcel.readString();
        this.liveId = parcel.readString();
        this.isKick = parcel.readInt();
        this.stream_id = parcel.readString();
        this.userId = parcel.readString();
        this.liveImg = parcel.readString();
        this.shareUrl = parcel.readString();
        this.nickName = parcel.readString();
        this.infoName = parcel.readString();
        this.pushers = parcel.createTypedArrayList(LiveInfoMatchBean.CREATOR);
        this.accelerateURL = parcel.readString();
        this.isAdmin = parcel.readString();
        this.likeNum = parcel.readString();
        this.isLong = parcel.readString();
        this.backgroundImg = parcel.readString();
        this.mute = parcel.readByte() != 0;
        this.country = parcel.readString();
        this.flvUrl = parcel.readString();
        this.banTalk = parcel.readString();
        this.audienceList = parcel.createTypedArrayList(AudienceInformation.CREATOR);
        this.matchType = parcel.readString();
        this.voiceStatus = parcel.readString();
        this.bigGiftBeans = parcel.createTypedArrayList(RunwayMessage.BigGiftBean.CREATOR);
        this.level = parcel.readInt();
        this.isMusicActivity = parcel.readInt();
        this.isBack = parcel.readInt();
        this.code = parcel.readInt();
        this.launchFromFloatWindow = parcel.readByte() != 0;
        this.pkModeWhenFloatWindow = parcel.readByte() != 0;
        this.mShowedFloatFromLiveRoom = parcel.readByte() != 0;
        this.mNeedPlayInItem = parcel.readByte() != 0;
        this.blackFlag = parcel.readString();
        this.city = parcel.readString();
        this.anchorForceVoiceStatus = parcel.readByte() != 0;
        this.anchorForceMatchType = parcel.readByte() != 0;
        this.applyPkState = parcel.readByte() != 0;
        this.arenaPunishmentDurationTime = parcel.readLong();
        this.arenaDurationTime = parcel.readLong();
        this.isLivePk = parcel.readString();
        this.liveLabel = parcel.readString();
        this.kickAdminType = parcel.readString();
        this.micEnabled = parcel.readByte() != 0;
        this.countryId = parcel.readString();
        this.liveType = parcel.readString();
        this.privateType = parcel.readString();
        this.logo = parcel.readString();
        this.microphoneMode = parcel.readString();
        this.isLockMicrophone = parcel.readString();
        this.fansNum = parcel.readString();
        this.isAttention = parcel.readString();
        this.fcoin = parcel.readString();
        this.status = parcel.readString();
        this.startTime = parcel.readString();
        this.mLivePushIp = parcel.readString();
        this.groupId = parcel.readString();
        this.userVipMsg = (UserVipData) parcel.readParcelable(UserVipData.class.getClassLoader());
        this.screenShotSwitch = parcel.readInt();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public RoomInfo buildRoomInfo() {
        String userId = e.g().getUserId();
        if (userId == null) {
            userId = "";
        }
        String str = userId;
        String liveId = getLiveId();
        if (TextUtils.isEmpty(liveId)) {
            liveId = getBroadCasterUserId();
        }
        return new RoomInfo(liveId, str, getStreamId(), false, this.refer);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean canMakeAudioCall() {
        return this.videoOpen == 1 && this.videoSwitch == 1;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean canMakeVideoCall() {
        return this.videoOpen == 1 && this.videoSwitch == 1;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ boolean canMakeVideoOrAudioCall() {
        return n.d(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean canRequestLinkMic() {
        return "0".equalsIgnoreCase(this.isLockMicrophone);
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, android.os.Parcelable
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
        return Objects.equals(this.liveId, ((RoomItemData) obj).liveId);
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
    public boolean getApplyPkState() {
        return this.applyPkState;
    }

    public long getArenaDurationTime() {
        return this.arenaDurationTime;
    }

    public long getArenaPunishmentDurationTime() {
        return this.arenaPunishmentDurationTime;
    }

    public List<AudienceInformation> getAudienceList() {
        return this.audienceList;
    }

    public String getAvatar() {
        return this.avatar;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return this.img;
    }

    public String getBackgroundImg() {
        return this.backgroundImg;
    }

    public List<RunwayMessage.BigGiftBean> getBigGiftBeans() {
        return this.bigGiftBeans;
    }

    public String getBlackFlag() {
        return this.blackFlag;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getBroadCasterUserId() {
        return this.userId;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getBroadCasterUserName() {
        return this.nickName;
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    @NonNull
    public String getChatGroupId() {
        if (TextUtils.isEmpty(this.groupId)) {
            return this.liveId;
        }
        return this.groupId;
    }

    public String getCity() {
        return this.city;
    }

    public int getCode() {
        return this.code;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getCountry() {
        return this.country;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return this.logo;
    }

    public String getCountryId() {
        return this.countryId;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getCountryLogo() {
        return getLogo();
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getDressHead() {
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public int getFCoinCount() {
        return 0;
    }

    public String getFansNum() {
        return this.fansNum;
    }

    public String getFcoin() {
        return this.fcoin;
    }

    public String getFlvUrl() {
        return getStreamUrl();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public /* bridge */ /* synthetic */ int getGameSeatCurrentPlayerPosition() {
        return q.a(this);
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return 0;
    }

    public String getGroupId() {
        return getChatGroupId();
    }

    public String getImg() {
        return this.img;
    }

    public String getInfoName() {
        return this.infoName;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ List getIntroductionToPlay() {
        return n.k(this);
    }

    public String getIsAttention() {
        return this.isAttention;
    }

    public int getIsBack() {
        return this.isBack;
    }

    public int getIsKick() {
        return this.isKick;
    }

    public String getIsLivePk() {
        return this.isLivePk;
    }

    public String getIsLockMicrophone() {
        return this.isLockMicrophone;
    }

    public String getIsLong() {
        return this.isLong;
    }

    public int getIsMusicActivity() {
        if (i.u().s().getBlackShow() == 1) {
            return this.isMusicActivity;
        }
        return 0;
    }

    @Override // com.chad.library.adapter.base.entity.MultiItemEntity
    public int getItemType() {
        if ("-3".equals(getLiveId())) {
            return 3;
        }
        if ("-4".equals(getLiveId())) {
            return 4;
        }
        if ("1".equalsIgnoreCase(getIsLong())) {
            return 1;
        }
        return isMultiLiveRoom() ? 2 : 0;
    }

    public String getKickAdminType() {
        return this.kickAdminType;
    }

    @Nullable
    public RoomItemData getLastRoomItem() {
        return this.lastRoomItem;
    }

    @Override // p7.e
    public int getLevel() {
        return this.level;
    }

    public String getLikeNum() {
        return this.likeNum;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLinkMicStreamId() {
        return getStream_id();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLiveAddress() {
        if (BaseConfig.isChinese()) {
            return this.city;
        }
        return this.country;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLiveCoverImg() {
        if (isVoiceRoom()) {
            getCoverImgUrl();
        }
        return getLiveImg();
    }

    public String getLiveId() {
        if (TextUtils.isEmpty(this.liveId)) {
            String str = this.groupId;
            this.liveId = str;
            return str;
        }
        return this.liveId;
    }

    public String getLiveImg() {
        return this.liveImg;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLiveInfoContent() {
        return this.infoName;
    }

    public String getLiveLabel() {
        return this.liveLabel;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLivePushIP() {
        return this.mLivePushIp;
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLiveRoomId() {
        return getLiveId();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getLiveStartTimestamp() {
        return this.startTime;
    }

    public String getLiveType() {
        return this.liveType;
    }

    public String getLogo() {
        return this.logo;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getMatchType() {
        return this.matchType;
    }

    public List<LiveMessageModel<?>> getMessages() {
        return this.messages;
    }

    public String getMicrophoneMode() {
        return this.microphoneMode;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public List<? extends LiveRoomModel> getMultiLiveRoom() {
        List<LiveInfoMatchBean> pushers = getPushers();
        if (pushers == null) {
            return new ArrayList();
        }
        for (int i9 = 0; i9 < pushers.size(); i9++) {
            if (pushers.get(i9).getUserId().equals(this.userId)) {
                pushers.remove(i9);
                return pushers;
            }
        }
        return pushers;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getMvpUrl() {
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    public String getNickName() {
        return this.nickName;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public int getOnlineNum() {
        return this.onlineNum;
    }

    @Override // p7.h
    public String getPendantUrl() {
        return this.avatar;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ IM_User getPkUserInfo() {
        return n.o(this);
    }

    @Override // com.guochao.faceshow.aaspring.beans.TrtcFaceCastUser
    public /* synthetic */ String getPreferentialLang() {
        return b.d(this);
    }

    public String getPrivateType() {
        return this.privateType;
    }

    public List<LiveInfoMatchBean> getPushers() {
        return this.pushers;
    }

    @Nullable
    public String getRefer() {
        return this.refer;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public /* bridge */ /* synthetic */ long getRestActiveTime() {
        return q.b(this);
    }

    public String getRoomID() {
        return getLiveRoomId();
    }

    public int getScreenShotSwitch() {
        return this.screenShotSwitch;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getShareUrl() {
        return this.shareUrl;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getSmallAvatarUrl() {
        return getAvatarUrl();
    }

    public String getStartTime() {
        return this.startTime;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getStatus() {
        return this.status;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ String getStreamId() {
        return n.q(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getStreamUrl() {
        return StreamUrlUtils.getStreamUrl(this.flvUrl);
    }

    public String getStream_id() {
        return this.stream_id;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    public String getUserId() {
        return this.userId;
    }

    @Override // p7.h
    public String getUserName() {
        return this.nickName;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getUserNickName() {
        return this.nickName;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public int getUserType() {
        if (isBroadCaster()) {
            return 0;
        }
        ServerConfig s10 = i.u().s();
        if (s10 == null || s10.getIsLiveManager() != 1) {
            return isAdministrator() ? 1 : 2;
        }
        return 3;
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

    @Override // p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserVipInfo
    public int getVipLevel() {
        return 0;
    }

    @Nullable
    public VoiceRoomInfoModel getVoiceRoomInfoModel() {
        return this.voiceRoomInfoModel;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public String getVoiceStatus() {
        return this.voiceStatus;
    }

    public int hashCode() {
        return Objects.hash(getLiveId());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer
    public /* bridge */ /* synthetic */ boolean isActive() {
        return q.d(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isAdministrator() {
        if (isVoiceRoom()) {
            return isVoiceRoomAdministrator();
        }
        return "1".equals(this.isAdmin);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isAnchorForceMatchType() {
        return this.anchorForceMatchType;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isAnchorForceVoiceStatus() {
        return this.anchorForceVoiceStatus;
    }

    public boolean isBanTalk() {
        return "1".equals(this.banTalk);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isBroadCaster() {
        if (isVoiceRoom()) {
            return Objects.equals(this.userId, e.g().getUserId());
        }
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isFocused() {
        return "1".equals(this.isAttention);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isFreeLinkMic() {
        return "2".equalsIgnoreCase(this.microphoneMode);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isFullScreenActivity() {
        return i.u().s().getBlackShow() == 1 && this.isMusicActivity == 1;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isInPkMode() {
        return "1".equals(this.isLivePk);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ boolean isInPkPunishmentTime() {
        return n.B(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isKickedOut() {
        return this.isKick == 1;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isLaunchFromFloatWindow() {
        return this.launchFromFloatWindow;
    }

    public boolean isLinkMicEnabled() {
        return this.micEnabled;
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isMultiLiveRoom() {
        if (TextUtils.isEmpty(this.liveType)) {
            return false;
        }
        return "2".equals(this.liveType);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isMute() {
        return this.mute;
    }

    public boolean isNeedPlayInItem() {
        return this.mNeedPlayInItem;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isPkModeWhenFloatWindow() {
        return this.pkModeWhenFloatWindow;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ boolean isPkWaiting() {
        return n.H(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public boolean isPrivateLiveRoom() {
        return "2".equals(this.privateType);
    }

    public int isShowGiftDialog() {
        return this.mShowGiftDialog;
    }

    public boolean isShowedFloatFromLiveRoom() {
        return this.mShowedFloatFromLiveRoom;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setAdmitDefeatNum(int i9) {
        n.L(this, i9);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setAnchorForceMatchType(boolean z10) {
        LogUtils.e("AnchorForceMatchTyp+RoomItemData", "setAnchorForceMatchType==" + z10);
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

    public void setAudienceList(List<AudienceInformation> list) {
        this.audienceList = list;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBackgroundImg(String str) {
        this.backgroundImg = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setBanTalk(boolean z10) {
        this.banTalk = z10 ? "1" : "0";
    }

    public void setBigGiftBeans(List<RunwayMessage.BigGiftBean> list) {
        this.bigGiftBeans = list;
    }

    public void setBlackFlag(String str) {
        this.blackFlag = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setBroadCasterUserName(String str) {
        setNickName(str);
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setChatGroupId(@NonNull String str) {
        this.groupId = str;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setCode(int i9) {
        this.code = i9;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setCountryId(String str) {
        this.countryId = str;
    }

    public void setFansNum(String str) {
        this.fansNum = str;
    }

    public void setFcoin(String str) {
        this.fcoin = str;
    }

    public void setFlvUrl(String str) {
        this.flvUrl = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setFocused(boolean z10) {
        this.isAttention = z10 ? "1" : "0";
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setFreeLinkMic(boolean z10) {
        this.microphoneMode = z10 ? "2" : "1";
    }

    public /* bridge */ /* synthetic */ void setGameInfoList(List list) {
        n.X(this, list);
    }

    public /* bridge */ /* synthetic */ void setGameSeatCurrentPlayerPosition(int i9) {
        q.e(this, i9);
    }

    public void setGroupId(String str) {
        this.groupId = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setInPkMode(boolean z10) {
        this.isLivePk = z10 ? "1" : "0";
        setPkModeWhenFloatWindow(false);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setInPkPunishmentTime(boolean z10) {
        n.Z(this, z10);
    }

    public void setInfoName(String str) {
        this.infoName = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setIntroductionToPlay(List list) {
        n.a0(this, list);
    }

    public void setIsAttention(String str) {
        this.isAttention = str;
    }

    public void setIsBack(int i9) {
        this.isBack = i9;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setIsFullScreenActivity(int i9) {
        this.isMusicActivity = i9;
    }

    public void setIsKick(int i9) {
        this.isKick = i9;
    }

    public void setIsLivePk(String str) {
        this.isLivePk = str;
    }

    public void setIsLockMicrophone(String str) {
        this.isLockMicrophone = str;
    }

    public void setIsLong(String str) {
        this.isLong = str;
    }

    public void setIsMusicActivity(int i9) {
        this.isMusicActivity = i9;
    }

    public void setKickAdminType(String str) {
        this.kickAdminType = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setKickedOut(boolean z10) {
        this.isKick = z10 ? 1 : 0;
    }

    public void setLastRoomItem(@Nullable RoomItemData roomItemData) {
        this.lastRoomItem = roomItemData;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setLaunchFromFloatWindow(boolean z10) {
        this.launchFromFloatWindow = z10;
    }

    public void setLevel(int i9) {
        this.level = i9;
    }

    public void setLikeNum(String str) {
        this.likeNum = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setLinkMicEnabled(boolean z10) {
        this.micEnabled = z10;
    }

    public /* bridge */ /* synthetic */ void setLinkMicStreamId(String str) {
        n.f0(this, str);
    }

    public void setLiveCoverImg(String str) {
        this.liveImg = str;
    }

    public void setLiveId(String str) {
        this.liveId = str;
    }

    public void setLiveImg(String str) {
        this.liveImg = str;
    }

    public void setLiveLabel(String str) {
        this.liveLabel = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setLivePushIP(String str) {
        this.mLivePushIp = str;
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setLiveRoomId(String str) {
        setLiveId(str);
    }

    public void setLiveStartTimestamp(String str) {
        setStartTime(str);
    }

    public void setLiveType(String str) {
        this.liveType = str;
    }

    public void setLogo(String str) {
        this.logo = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setMatchType(String str) {
        this.matchType = str;
    }

    public void setMessages(List<LiveMessageModel<?>> list) {
        this.messages = list;
    }

    public void setMicrophoneMode(String str) {
        this.microphoneMode = str;
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setMultiLiveRoom(boolean z10) {
        this.liveType = z10 ? "2" : "1";
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setMute(boolean z10) {
        this.mute = z10;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    public void setMvpUrl(@Nullable String str) {
    }

    public void setNeedPlayInItem(boolean z10) {
        this.mNeedPlayInItem = z10;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setOnlineNum(int i9) {
        this.onlineNum = i9;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setPkModeWhenFloatWindow(boolean z10) {
        this.pkModeWhenFloatWindow = z10;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setPkUserInfo(IM_User iM_User) {
        n.l0(this, iM_User);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public /* bridge */ /* synthetic */ void setPkWaiting(boolean z10) {
        n.m0(this, z10);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setPrivateType(String str) {
        this.privateType = str;
    }

    public void setPushers(List<LiveInfoMatchBean> list) {
        this.pushers = list;
    }

    public void setRefer(@Nullable String str) {
        this.refer = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setRequestLinkMicEnabled(boolean z10) {
        this.isLockMicrophone = z10 ? "0" : "1";
    }

    public void setRoomID(String str) {
        setLiveId(str);
    }

    public void setScreenShotSwitch(int i9) {
        this.screenShotSwitch = i9;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setShareUrl(String str) {
        this.shareUrl = str;
    }

    public void setShowGiftDialog(int i9) {
        this.mShowGiftDialog = i9;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setShowedFloatFromLiveRoom(boolean z10) {
        this.mShowedFloatFromLiveRoom = z10;
    }

    public void setStartTime(String str) {
        this.startTime = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setStatus(String str) {
        this.status = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setStreamUrl(String str) {
        setFlvUrl(str);
    }

    public void setStream_id(String str) {
        this.stream_id = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setUserType(int i9) {
        this.isAdmin = i9 == 1 ? "1" : "0";
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

    public void setVoiceRoomInfoModel(@Nullable VoiceRoomInfoModel voiceRoomInfoModel) {
        this.voiceRoomInfoModel = voiceRoomInfoModel;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel
    public void setVoiceStatus(String str) {
        this.voiceStatus = str;
    }

    @Override // com.guochao.component.liveroom.model.GCLiveRoomModel, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeString(this.img);
        parcel.writeInt(this.onlineNum);
        parcel.writeString(this.avatar);
        parcel.writeString(this.liveId);
        parcel.writeInt(this.isKick);
        parcel.writeString(this.stream_id);
        parcel.writeString(this.userId);
        parcel.writeString(this.liveImg);
        parcel.writeString(this.shareUrl);
        parcel.writeString(this.nickName);
        parcel.writeString(this.infoName);
        parcel.writeTypedList(this.pushers);
        parcel.writeString(this.accelerateURL);
        parcel.writeString(this.isAdmin);
        parcel.writeString(this.likeNum);
        parcel.writeString(this.isLong);
        parcel.writeString(this.backgroundImg);
        parcel.writeByte(this.mute ? (byte) 1 : (byte) 0);
        parcel.writeString(this.country);
        parcel.writeString(this.flvUrl);
        parcel.writeString(this.banTalk);
        parcel.writeTypedList(this.audienceList);
        parcel.writeString(this.matchType);
        parcel.writeString(this.voiceStatus);
        parcel.writeTypedList(this.bigGiftBeans);
        parcel.writeInt(this.level);
        parcel.writeInt(this.isMusicActivity);
        parcel.writeInt(this.isBack);
        parcel.writeInt(this.code);
        parcel.writeByte(this.launchFromFloatWindow ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.pkModeWhenFloatWindow ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.mShowedFloatFromLiveRoom ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.mNeedPlayInItem ? (byte) 1 : (byte) 0);
        parcel.writeString(this.blackFlag);
        parcel.writeString(this.city);
        parcel.writeByte(this.anchorForceVoiceStatus ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.anchorForceMatchType ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.applyPkState ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.arenaPunishmentDurationTime);
        parcel.writeLong(this.arenaDurationTime);
        parcel.writeString(this.isLivePk);
        parcel.writeString(this.liveLabel);
        parcel.writeString(this.kickAdminType);
        parcel.writeByte(this.micEnabled ? (byte) 1 : (byte) 0);
        parcel.writeString(this.countryId);
        parcel.writeString(this.liveType);
        parcel.writeString(this.privateType);
        parcel.writeString(this.logo);
        parcel.writeString(this.microphoneMode);
        parcel.writeString(this.isLockMicrophone);
        parcel.writeString(this.fansNum);
        parcel.writeString(this.isAttention);
        parcel.writeString(this.fcoin);
        parcel.writeString(this.status);
        parcel.writeString(this.startTime);
        parcel.writeString(this.mLivePushIp);
        parcel.writeString(this.groupId);
        parcel.writeParcelable(this.userVipMsg, i9);
        parcel.writeInt(this.screenShotSwitch);
    }

    public RoomItemData() {
        this.liveId = "";
        this.userId = "";
        this.videoSwitch = 0;
        this.videoOpen = 0;
        this.screenShotSwitch = 1;
        this.status = "0";
    }
}
