package com.guochao.faceshow.aaspring.modulars.live.interfaces;

import android.os.Parcelable;
import androidx.annotation.Nullable;
import b8.g;
import com.guochao.faceshow.aaspring.beans.IM_User;
import com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer;
import com.guochao.user.RoomInfo;
import java.util.List;
import p7.i;
/* loaded from: classes3.dex */
public interface LiveRoomModel extends LiveGamePlayer, i, Parcelable {
    public static final int ADMINISTRATOR = 1;
    public static final int AUDIENCE = 2;
    public static final int BROADCASTER = 0;
    public static final int SUB_BROADCASTER = -1;
    public static final int SUPER_MANAGER = 3;

    RoomInfo buildRoomInfo();

    boolean canMakeAudioCall();

    boolean canMakeVideoCall();

    boolean canMakeVideoOrAudioCall();

    boolean canRequestLinkMic();

    int getAdmitDefeatNum();

    boolean getApplyPkState();

    String getBroadCasterUserId();

    String getBroadCasterUserName();

    String getChatGroupId();

    String getCountry();

    int getFCoinCount();

    List<String> getIntroductionToPlay();

    String getLinkMicStreamId();

    String getLiveAddress();

    String getLiveCoverImg();

    String getLiveInfoContent();

    String getLivePushIP();

    String getLiveRoomId();

    String getLiveStartTimestamp();

    String getMatchType();

    List<? extends LiveRoomModel> getMultiLiveRoom();

    int getOnlineNum();

    IM_User getPkUserInfo();

    String getShareUrl();

    String getStatus();

    String getStreamId();

    String getStreamUrl();

    String getUserNickName();

    int getUserType();

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer, p7.h
    @Nullable
    /* bridge */ /* synthetic */ g getVipInfo();

    String getVoiceStatus();

    boolean isAdministrator();

    boolean isAnchorForceMatchType();

    boolean isAnchorForceVoiceStatus();

    boolean isBroadCaster();

    boolean isFocused();

    boolean isFreeLinkMic();

    boolean isFullScreenActivity();

    boolean isInPkMode();

    boolean isInPkPunishmentTime();

    boolean isKickedOut();

    boolean isLaunchFromFloatWindow();

    boolean isMultiLiveRoom();

    boolean isMute();

    boolean isPkModeWhenFloatWindow();

    boolean isPkWaiting();

    boolean isPrivateLiveRoom();

    boolean isVoiceRoom();

    void setAdmitDefeatNum(int i9);

    void setAnchorForceMatchType(boolean z10);

    void setAnchorForceVoiceStatus(boolean z10);

    void setApplyPkState(boolean z10);

    void setArenaDurationTime(long j10);

    void setArenaPunishmentDurationTime(long j10);

    void setBanTalk(boolean z10);

    void setBroadCasterUserName(String str);

    void setChatGroupId(String str);

    void setFocused(boolean z10);

    void setFreeLinkMic(boolean z10);

    void setInPkMode(boolean z10);

    void setInPkPunishmentTime(boolean z10);

    void setIntroductionToPlay(List<String> list);

    void setIsFullScreenActivity(int i9);

    void setKickedOut(boolean z10);

    void setLaunchFromFloatWindow(boolean z10);

    void setLinkMicEnabled(boolean z10);

    void setLivePushIP(String str);

    void setLiveRoomId(String str);

    void setMatchType(String str);

    void setMultiLiveRoom(boolean z10);

    void setMute(boolean z10);

    void setOnlineNum(int i9);

    void setPkModeWhenFloatWindow(boolean z10);

    void setPkUserInfo(IM_User iM_User);

    void setPkWaiting(boolean z10);

    void setPrivateType(String str);

    void setRequestLinkMicEnabled(boolean z10);

    void setShareUrl(String str);

    void setShowedFloatFromLiveRoom(boolean z10);

    void setStatus(String str);

    void setStreamUrl(String str);

    void setUserType(int i9);

    void setVoiceStatus(String str);
}
