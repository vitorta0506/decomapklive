package com.guochao.faceshow.aaspring.utils;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.internal.AnalyticsEvents;
import com.google.gson.internal.C$Gson$Types;
import com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel;
import com.guochao.faceshow.aaspring.beans.JoinGameUser;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.LiveGameCancelBean;
import com.guochao.faceshow.aaspring.beans.LiveGamePollDetail;
import com.guochao.faceshow.aaspring.beans.LiveGameUserInfo;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.beans.LiveInfoResult;
import com.guochao.faceshow.aaspring.beans.LuckyNumberStartGameBean;
import com.guochao.faceshow.aaspring.beans.PkRound;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.chat.models.CustomMessage;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftRequestModel;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.LiveGameConfig;
import com.guochao.faceshow.aaspring.modulars.live.game.model.LiveGameJoinMessage;
import com.guochao.faceshow.aaspring.modulars.live.game.model.LiveGameLuckyResultMessage;
import com.guochao.faceshow.aaspring.modulars.live.game.model.LiveGamePrepareMessage;
import com.guochao.faceshow.aaspring.modulars.live.game.model.LiveGameSwitchSeatMessage;
import com.guochao.faceshow.aaspring.modulars.live.game.model.LiveGameUpdateMessage;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.AudienceListInfoMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.GroupDismissMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LinkMicInfoMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LinkMicMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveActivityMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveFullScreenMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveLuckyRunwayMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveLuckyUserUpdateMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveLuckyWinMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMicApplyResult;
import com.guochao.faceshow.aaspring.modulars.live.model.PkChangeUiMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.PkFCoinMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.PkResultMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.PkUser;
import com.guochao.faceshow.aaspring.modulars.live.model.RunwayMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.SwitchUrlMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.TreasureMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.VolumeMessage;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.GsonGetter;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class LiveMessageModelFactory {
    private static final HashMap<String, Type> CLAZZ_MAP;
    private static final Type DEFAULT_TYPE;
    static final String LOG_TAG = "LiveMessageModelFactory";

    static {
        HashMap<String, Type> hashMap = new HashMap<>();
        CLAZZ_MAP = hashMap;
        DEFAULT_TYPE = C$Gson$Types.newParameterizedTypeWithOwner(null, LiveMessageModel.class, BaseLiveMessage.class);
        hashMap.put("LIVE_UPDATE_LIVEINFO", LiveInfoResult.class);
        hashMap.put("LIVE_UPDATE_PK_INFO", LiveInfoResult.class);
        hashMap.put("LIVE_PK_MERGE_SUCCESS", LiveInfoResult.class);
        hashMap.put("LIVE_LINK_MIC", LinkMicMessage.class);
        hashMap.put("LIVE_LINKMIC_RESPONSE", LinkMicMessage.class);
        hashMap.put("LIVE_LINKMIC_APPLY", LinkMicMessage.class);
        hashMap.put("LIVE_LINKMIC_CANCEL", LinkMicMessage.class);
        hashMap.put("LIVE_LINKMIC_PLAYSUCCESS", LinkMicMessage.class);
        hashMap.put("LIVE_LINKMIC_PUSHSUCCESS", LinkMicMessage.class);
        hashMap.put("LIVE_UPDATE_LINKMIC_INFO", LinkMicInfoMessage.class);
        hashMap.put("LIVE_LINKMIC_MIXED", LinkMicInfoMessage.class);
        hashMap.put("LIVE_UPDATE_LIVEINFO_V2", AudienceListInfoMessage.class);
        hashMap.put("LIVE_UPDATE_ACTIVITY", LiveActivityMessage.class);
        hashMap.put("LIVE_UPDATE_ACTIVITY_V2", LiveActivityMessage.class);
        hashMap.put("LIVE_TREASURE_MSG", TreasureMessage.class);
        hashMap.put("LIVE_VOICE_RUNWAY_MSG", RunwayMessage.BigGiftBean.class);
        hashMap.put("LIVE_VOICE_RUNWAY_LUCKY_MSG", RunwayMessage.BigGiftBean.class);
        hashMap.put("LIVE_RUNWAY_MSG", RunwayMessage.class);
        hashMap.put("LIVE_RUNWAY_MSG_V2", RunwayMessage.BigGiftBean.class);
        hashMap.put("LIVE_RUNWAY_LUCKY_MSG", RunwayMessage.LuckyGiftDiamondsMessage.class);
        hashMap.put("LIVE_RUNWAY_LUCKY_MSG_V2", RunwayMessage.BigGiftBean.class);
        hashMap.put("LIVE_RUNWAY_MULTIPLE_LUCKY_MSG", RunwayMessage.LuckyGiftRunwayMessage.class);
        hashMap.put("LIVE_HAPPY_RUNWAY", RunwayMessage.BigGiftBean.class);
        hashMap.put("LIVE_VOICE_HAPPY_RUNWAY", RunwayMessage.BigGiftBean.class);
        hashMap.put("LIVE_VOLUME", VolumeMessage.class);
        hashMap.put("LIVE_UPDATE_PK_COINS", PkFCoinMessage.class);
        hashMap.put("LIVE_CHANGE_PK", PkChangeUiMessage.class);
        hashMap.put("LIVE_PK_RESULT", PkResultMessage.class);
        hashMap.put("LIVE_LEAVE_PK", PkResultMessage.class);
        hashMap.put("LIVE_GET_URL", SwitchUrlMessage.class);
        hashMap.put("LIVE_EVENT_ANIM", LiveFullScreenMessage.class);
        hashMap.put("LOCAL_GROUP_DISSMISS", GroupDismissMessage.class);
        hashMap.put("LIVE_SEND_GIFT", GiftLiveMessage.class);
        hashMap.put("LIVE_LUCKY_REMOTE_READY", LiveLuckyUserUpdateMessage.class);
        hashMap.put("LIVE_LUCKY_REMOTE_START", LiveLuckyUserUpdateMessage.class);
        hashMap.put("LIVE_LUCKY_REMOTE_UPDATE", LiveLuckyUserUpdateMessage.class);
        hashMap.put("LIVE_LUCKY_REMOTE_REMOVE", LiveLuckyUserUpdateMessage.class);
        hashMap.put("LIVE_LUCKY_REMOTE_CANCEL", LiveLuckyUserUpdateMessage.class);
        hashMap.put("LIVE_LUCKY_REMOTE_ROUND", LiveLuckyRunwayMessage.class);
        hashMap.put("GAME_DION", LiveLuckyRunwayMessage.class);
        hashMap.put("GAME_GUESS", LiveLuckyRunwayMessage.class);
        hashMap.put("LIVE_LUCKY_REMOTE_WIN", LiveLuckyWinMessage.class);
        hashMap.put("LIVE_LUCKY_REMOTE_READY_V_COIN", LiveLuckyUserUpdateMessage.class);
        hashMap.put("LIVE_LUCKY_REMOTE_START_V_COIN", LiveLuckyUserUpdateMessage.class);
        hashMap.put("LIVE_LUCKY_REMOTE_UPDATE_V_COIN", LiveLuckyUserUpdateMessage.class);
        hashMap.put("LIVE_LUCKY_REMOTE_REMOVE_V_COIN", LiveLuckyUserUpdateMessage.class);
        hashMap.put("LIVE_LUCKY_REMOTE_ROUND_V_COIN", LiveLuckyRunwayMessage.class);
        hashMap.put("LIVE_LUCKY_REMOTE_WIN_V_COIN", LiveLuckyWinMessage.class);
        hashMap.put("LIVE_GAME_PREPARE", LiveGamePrepareMessage.class);
        hashMap.put("LIVE_GAME_PREPARE_V_COIN", LiveGamePrepareMessage.class);
        hashMap.put("LIVE_GAME_JOIN", LiveGameJoinMessage.class);
        hashMap.put("LIVE_GAME_JOIN_V_COIN", LiveGameJoinMessage.class);
        hashMap.put("LIVE_GAME_SWITCH_SEAT", LiveGameSwitchSeatMessage.class);
        hashMap.put("LIVE_GAME_SWITCH_SEAT_V_COIN", LiveGameSwitchSeatMessage.class);
        hashMap.put("LIVE_LUCKY_NUMBER_RESULT", LiveGameLuckyResultMessage.class);
        hashMap.put("LIVE_LUCKY_NUMBER_RESULT_V_COIN", LiveGameLuckyResultMessage.class);
        hashMap.put("LIVE_LUCKY_REMOTE_UPDATE_V2", LiveGameUpdateMessage.class);
        hashMap.put("LIVE_LUCKY_REMOTE_UPDATE_V2_COIN", LiveGameUpdateMessage.class);
        hashMap.put("LIVE_HOUR_RANK", LiveInfoResult.class);
    }

    public static LiveMessageModel<LinkMicMessage> createAcceptLinkMicModel(String str) {
        LinkMicMessage linkMicMessage = new LinkMicMessage();
        linkMicMessage.action = true;
        linkMicMessage.setToUserId(str);
        UserBean c10 = b8.e.g().c();
        linkMicMessage.setAge(String.valueOf(c10.getAge()));
        linkMicMessage.setSex(String.valueOf(c10.sex));
        return new LiveMessageModel<>("LIVE_LINKMIC_RESPONSE", linkMicMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createAdminModel(String str, String str2, boolean z10, String str3) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.action = z10;
        baseLiveMessage.setToUserNickName(str2);
        baseLiveMessage.setToUserId(str);
        baseLiveMessage.setOperatedUserImg(str3);
        baseLiveMessage.setType(BaseLiveMessage.TYPE_ADMIN_USER);
        return new LiveMessageModel<>("LIVE_ADMIN_USER", baseLiveMessage);
    }

    public static LiveMessageModel<LinkMicMessage> createApplyLinkMicModel(LiveMicApplyResult liveMicApplyResult) {
        LinkMicMessage linkMicMessage = new LinkMicMessage();
        linkMicMessage.setType("apply");
        UserBean c10 = b8.e.g().c();
        linkMicMessage.setAge(String.valueOf(c10.getAge()));
        linkMicMessage.setSex(String.valueOf(c10.sex));
        linkMicMessage.setStreamId(liveMicApplyResult.getStreamId());
        return new LiveMessageModel<>("LIVE_LINKMIC_APPLY", linkMicMessage);
    }

    public static LiveMessageModel<AudienceListInfoMessage> createAudienceListInfoModel(AudienceListInfoMessage audienceListInfoMessage) {
        return new LiveMessageModel<>("LIVE_UPDATE_LIVEINFO_V2", audienceListInfoMessage);
    }

    public static LiveMessageModel<LinkMicMessage> createAudioStatusChangeModel(boolean z10, String str, String str2, long j10) {
        LinkMicMessage linkMicMessage = new LinkMicMessage();
        linkMicMessage.action = z10;
        linkMicMessage.setServerTime(j10);
        linkMicMessage.setToUserId(str);
        linkMicMessage.setToUserNickName(str2);
        linkMicMessage.setType("audio");
        return new LiveMessageModel<>("LIVE_LINKMIC_VOICE", linkMicMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createBanSomebodyTalkModel(boolean z10, String str, String str2, String str3) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.setType(BaseLiveMessage.TYPE_BAN_TALK_USER);
        baseLiveMessage.setAction(z10);
        baseLiveMessage.setToUserId(str);
        baseLiveMessage.setOperatedUserImg(str3);
        baseLiveMessage.setToUserNickName(str2);
        return new LiveMessageModel<>("LIVE_BAN_TALK_USER", baseLiveMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createBroadCastThankMessageModel(GiftLiveMessage giftLiveMessage) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.setFromUserAvatar(giftLiveMessage.getToUserAvatar());
        baseLiveMessage.setFromUserId(giftLiveMessage.getToUserId());
        baseLiveMessage.setFromUserNickName(giftLiveMessage.getToUserNickName());
        baseLiveMessage.setType("LIVE_BROADCAST_THANK_HELLO_GIFT");
        return new LiveMessageModel<>("LIVE_BROADCAST_THANK_HELLO_GIFT", baseLiveMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createCallingBtnOpenMessage(boolean z10) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.action = z10;
        return new LiveMessageModel<>("LIVE_CALLING_BTN_SWITCH", baseLiveMessage);
    }

    public static LiveMessageModel<LinkMicMessage> createCancelApplyLinkMicModel(String str) {
        LinkMicMessage linkMicMessage = new LinkMicMessage();
        linkMicMessage.setType("cancel");
        linkMicMessage.setFromUserId(str);
        return new LiveMessageModel<>("LIVE_LINKMIC_CANCEL", linkMicMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createCancelPkMessage(String str, String str2, String str3, String str4, String str5) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.setType("LIVE_CANCEL_PK_INVITE");
        baseLiveMessage.setRoomId(str);
        baseLiveMessage.setFromUserId(str2);
        baseLiveMessage.setFromUserNickName(str3);
        baseLiveMessage.setToUserId(str4);
        baseLiveMessage.setToUserNickName(str5);
        return new LiveMessageModel<>("LIVE_CANCEL_PK_INVITE", baseLiveMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createChatMessage(String str, String str2, ResourceListItemBean resourceListItemBean, UserBean userBean, String str3, int i9, int i10, String str4, String str5) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        if (resourceListItemBean != null) {
            baseLiveMessage.setGiftId(String.valueOf(resourceListItemBean.getId()));
            baseLiveMessage.setGiftImg(resourceListItemBean.getImg());
            baseLiveMessage.setGiftName(resourceListItemBean.getName());
            baseLiveMessage.setGiftTypeId(String.valueOf(resourceListItemBean.getSizeType()));
            baseLiveMessage.setGiftNum(String.valueOf(i10));
            baseLiveMessage.setGiftPrice(TextUtils.isEmpty(resourceListItemBean.getFprice()) ? resourceListItemBean.getPrice() : resourceListItemBean.getFprice());
            baseLiveMessage.setGiftUrl(resourceListItemBean.getDownloadUrl());
        }
        if (userBean != null) {
            baseLiveMessage.setFromUserNickName(userBean.getUserName());
            baseLiveMessage.setLevelId(userBean.getLevel());
            baseLiveMessage.setFromUserId(userBean.getUserId());
            baseLiveMessage.setFromUserAvatar(userBean.getAvatarUrl());
        }
        if (!TextUtils.isEmpty(str3)) {
            baseLiveMessage.setContent(str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            baseLiveMessage.setToUserId(str4);
        }
        if (!TextUtils.isEmpty(str5)) {
            baseLiveMessage.setToUserNickName(str5);
        }
        baseLiveMessage.setUserType(i9);
        baseLiveMessage.setType(str2);
        baseLiveMessage.setServerTime(System.currentTimeMillis());
        baseLiveMessage.setChatDate(Long.valueOf(System.currentTimeMillis()));
        return new LiveMessageModel<>(str, baseLiveMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createFocusBroadCasterModel(String str, String str2, int i9, boolean z10) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.action = z10;
        baseLiveMessage.setToUserNickName(str2);
        baseLiveMessage.setToUserId(str);
        baseLiveMessage.setLevelId(i9);
        baseLiveMessage.setType(BaseLiveMessage.TYPE_FOLLOW_ANCHOR);
        return new LiveMessageModel<>("LIVE_FOLLOW_ANCHOR", baseLiveMessage);
    }

    public static LiveMessageModel<GiftLiveMessage> createGiftMessageModel(ResourceListItemBean resourceListItemBean, @NonNull List<GiftFragment.r> list, SendGiftRequestModel sendGiftRequestModel, boolean z10, int i9) {
        GiftLiveMessage giftLiveMessage = new GiftLiveMessage();
        giftLiveMessage.setGiftId(String.valueOf(resourceListItemBean.getId()));
        giftLiveMessage.setGiftImg(resourceListItemBean.getImg());
        giftLiveMessage.setGiftName(resourceListItemBean.getName());
        giftLiveMessage.setGiftTypeId(String.valueOf(resourceListItemBean.getSizeType()));
        giftLiveMessage.setGiftNum(String.valueOf(sendGiftRequestModel.getSendNumber()));
        giftLiveMessage.setGiftPrice(TextUtils.isEmpty(resourceListItemBean.getFprice()) ? resourceListItemBean.getPrice() : resourceListItemBean.getFprice());
        giftLiveMessage.setGiftUrl(resourceListItemBean.getDownloadUrl());
        giftLiveMessage.setToUserId(sendGiftRequestModel.getToUserIds().get(0));
        if (list.size() > 0) {
            giftLiveMessage.setToUserAvatar(list.get(0).f17821c);
            giftLiveMessage.setToUserVipMsgr(list.get(0).f17822d);
        }
        giftLiveMessage.setIsHelloGift(i9);
        if (z10) {
            giftLiveMessage.setGiftSendList(list);
        }
        giftLiveMessage.setItemBean(resourceListItemBean);
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < list.size(); i10++) {
            sb2.append(list.get(i10).f17820b);
            if (i10 != list.size() - 1) {
                sb2.append(" , ");
            }
        }
        UserBean c10 = b8.e.g().c();
        giftLiveMessage.setFromUserAvatar(c10.getAvatarUrl());
        giftLiveMessage.setFromUserId(c10.getCurrentUserId());
        giftLiveMessage.setFromUserNickName(c10.getUserName());
        giftLiveMessage.setToUserNickName(sb2.toString());
        giftLiveMessage.setIsGiftAllSend(list.size() > 1 ? 1 : 0);
        return new LiveMessageModel<>("LIVE_SEND_GIFT", giftLiveMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createHangupModel(String str) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.setFromUserId(str);
        return new LiveMessageModel<>("LIVE_LINKMIC_HANGUP", baseLiveMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createHelloUserJoinModel(int i9) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.setIsOneHello(i9);
        baseLiveMessage.setType(BaseLiveMessage.LIVE_HELLO_JOIN_GROUP);
        return new LiveMessageModel<>(BaseLiveMessage.LIVE_HELLO_JOIN_GROUP, baseLiveMessage);
    }

    public static LiveMessageModel<LiveInfoResult> createHourRankMessage(LiveInfoResult liveInfoResult) {
        LiveInfoResult liveInfoResult2 = new LiveInfoResult();
        liveInfoResult2.setNowHourRank(liveInfoResult.getNowHourRank());
        liveInfoResult2.setNowHourCountryRank(liveInfoResult.getNowHourCountryRank());
        liveInfoResult2.setPreHourRank(Integer.valueOf(liveInfoResult.getPreHourRank()));
        liveInfoResult2.setPreHourCountryRank(Integer.valueOf(liveInfoResult.getPreHourCountryRank()));
        return new LiveMessageModel<>("LIVE_HOUR_RANK", liveInfoResult2);
    }

    public static LiveMessageModel<BaseLiveMessage> createInvitedPlaySuccessMessageModel() {
        return new LiveMessageModel<>("LIVE_PK_INVITED_PLAY_SUCCESS", null);
    }

    public static LiveMessageModel<BaseLiveMessage> createInviterPlaySuccessMessageModel() {
        return new LiveMessageModel<>("LIVE_PK_INVITER_PLAY_SUCCESS", null);
    }

    public static LiveMessageModel<PkResultMessage> createLeavePkMessage(String str, String str2, String str3, String str4, boolean z10) {
        PkResultMessage pkResultMessage = new PkResultMessage();
        pkResultMessage.setFromUserId(str);
        pkResultMessage.setFromUserNickName(str2);
        pkResultMessage.setToUserId(str3);
        pkResultMessage.setToUserNickName(str4);
        pkResultMessage.setResult(1);
        pkResultMessage.setType("LIVE_LEAVE_PK");
        pkResultMessage.setPunishment(z10);
        return new LiveMessageModel<>("LIVE_LEAVE_PK", pkResultMessage);
    }

    public static LiveMessageModel<LinkMicInfoMessage> createLinkMicInfoModel(long j10, List<LiveInfoMatchBean> list) {
        LinkMicInfoMessage linkMicInfoMessage = new LinkMicInfoMessage();
        linkMicInfoMessage.setServerTime(j10);
        linkMicInfoMessage.setMatchList(list);
        LiveMessageModel<LinkMicInfoMessage> liveMessageModel = new LiveMessageModel<>("LIVE_UPDATE_LINKMIC_INFO", linkMicInfoMessage);
        LogUtils.i(LOG_TAG, GsonGetter.getGson().toJson(liveMessageModel));
        return liveMessageModel;
    }

    public static LiveMessageModel<LinkMicMessage> createLinkMicStatusChangeModel(LiveRoomModel liveRoomModel, boolean z10) {
        LinkMicMessage linkMicMessage = new LinkMicMessage();
        linkMicMessage.action = !z10;
        return new LiveMessageModel<>("LIVE_LINKMIC_MICLOCK", linkMicMessage);
    }

    public static LiveMessageModel<LiveActivityMessage> createLiveActivityModel(LiveActivityMessage liveActivityMessage) {
        return new LiveMessageModel<>("LIVE_UPDATE_ACTIVITY", liveActivityMessage);
    }

    public static LiveMessageModel<LiveActivityMessage> createLiveFullScreenActivityModel(LiveActivityMessage liveActivityMessage) {
        if (liveActivityMessage.getOtherAppActivityGiftList() == null) {
            liveActivityMessage.setOtherAppActivityGiftList(new ArrayList());
        }
        return new LiveMessageModel<>("LIVE_UPDATE_ACTIVITY_V2", liveActivityMessage);
    }

    public static LiveMessageModel<LiveGameJoinMessage> createLiveGameJoinMessage(LiveGameBean liveGameBean, int i9, LiveGameConfig liveGameConfig, long j10) {
        LiveGameJoinMessage liveGameJoinMessage = new LiveGameJoinMessage(liveGameBean);
        liveGameJoinMessage.setPosition(i9);
        liveGameJoinMessage.setRoundId(liveGameConfig.d());
        liveGameJoinMessage.setLiveGameUserInfo(LiveGameUserInfo.self());
        liveGameJoinMessage.setServerTime(j10);
        return new LiveMessageModel<>(liveGameBean.getFlag() == 1 ? "LIVE_GAME_JOIN_V_COIN" : "LIVE_GAME_JOIN", liveGameJoinMessage);
    }

    public static LiveMessageModel<LiveGamePrepareMessage> createLiveGamePrepareMessage(LiveGameBean liveGameBean, LiveGameConfig liveGameConfig) {
        LiveGamePrepareMessage liveGamePrepareMessage = new LiveGamePrepareMessage(liveGameBean);
        liveGamePrepareMessage.setLiveGameConfig(liveGameConfig);
        liveGamePrepareMessage.setRoundId(liveGameConfig.d());
        if (liveGameConfig.e()) {
            liveGamePrepareMessage.setLiveGameUserInfo(LiveGameUserInfo.self());
        }
        return new LiveMessageModel<>(liveGameBean.getFlag() == 1 ? "LIVE_GAME_PREPARE_V_COIN" : "LIVE_GAME_PREPARE", liveGamePrepareMessage);
    }

    public static LiveMessageModel<LiveGameJoinMessage> createLiveGameSwitchSeatMessage(LiveGameBean liveGameBean, int i9, int i10, String str, long j10) {
        LiveGameSwitchSeatMessage liveGameSwitchSeatMessage = new LiveGameSwitchSeatMessage(liveGameBean);
        liveGameSwitchSeatMessage.setPosition(i10);
        liveGameSwitchSeatMessage.setFromPosition(i9);
        liveGameSwitchSeatMessage.setRoundId(str);
        liveGameSwitchSeatMessage.setLiveGameUserInfo(LiveGameUserInfo.self());
        liveGameSwitchSeatMessage.setServerTime(j10);
        return new LiveMessageModel<>(liveGameBean.getFlag() == 1 ? "LIVE_GAME_SWITCH_SEAT_V_COIN" : "LIVE_GAME_SWITCH_SEAT", liveGameSwitchSeatMessage);
    }

    public static LiveMessageModel<LiveGameUpdateMessage> createLiveGameUpdateMessage(List<LiveGamePollDetail> list, long j10) {
        LiveGameUpdateMessage liveGameUpdateMessage = new LiveGameUpdateMessage(null);
        liveGameUpdateMessage.setGameInfoList(list);
        liveGameUpdateMessage.setServerTime(j10);
        return new LiveMessageModel<>((list.isEmpty() || list.get(0).getFlag() != 1) ? "LIVE_LUCKY_REMOTE_UPDATE_V2" : "LIVE_LUCKY_REMOTE_UPDATE_V2_COIN", liveGameUpdateMessage);
    }

    public static LiveMessageModel<LiveLuckyUserUpdateMessage> createLuckyCancelMessage(String str, List<LiveGameCancelBean> list, long j10, String str2, int i9) {
        return new LiveMessageModel<>(str, LiveLuckyUserUpdateMessage.from(b8.e.g().c(), list, j10, str2, i9));
    }

    public static LiveMessageModel<LiveGameLuckyResultMessage> createLuckyNumberResultMessage(LiveGameBean liveGameBean, LuckyNumberStartGameBean luckyNumberStartGameBean, LiveGameUserInfo liveGameUserInfo, long j10) {
        LiveGameLuckyResultMessage liveGameLuckyResultMessage = new LiveGameLuckyResultMessage(liveGameBean);
        liveGameLuckyResultMessage.setLuckyNumberStartGameBean(luckyNumberStartGameBean);
        liveGameLuckyResultMessage.setWinner(liveGameUserInfo);
        liveGameLuckyResultMessage.setServerTime(j10);
        return new LiveMessageModel<>(liveGameBean.getFlag() == 1 ? "LIVE_LUCKY_NUMBER_RESULT_V_COIN" : "LIVE_LUCKY_NUMBER_RESULT", liveGameLuckyResultMessage);
    }

    public static LiveMessageModel<LiveLuckyUserUpdateMessage> createLuckyReadyMessageModel(String str, UserBean userBean, int i9, List<JoinGameUser> list, long j10, String str2, int i10, int i11) {
        return new LiveMessageModel<>(str, LiveLuckyUserUpdateMessage.from(userBean, list, i9, 0, j10, str2, i10, 0, i11));
    }

    public static LiveMessageModel<LiveLuckyUserUpdateMessage> createLuckyStartMessageModel(String str, UserBean userBean, List<JoinGameUser> list, int i9, int i10, long j10, String str2, int i11, int i12, int i13) {
        return new LiveMessageModel<>(str, LiveLuckyUserUpdateMessage.from(userBean, list, i9, i10, j10, str2, i11, i12, i13));
    }

    public static LiveMessageModel<LiveLuckyUserUpdateMessage> createLuckyUserRemoveMessage(String str, UserBean userBean, List<JoinGameUser> list, int i9, int i10, long j10, String str2, int i11, int i12, int i13, int i14) {
        return new LiveMessageModel<>(str, LiveLuckyUserUpdateMessage.from(userBean, list, i9, i10, j10, str2, i11, null, i12, i13, i14));
    }

    public static LiveMessageModel<LiveLuckyUserUpdateMessage> createLuckyUserUpdateMessage(String str, UserBean userBean, List<JoinGameUser> list, int i9, int i10, long j10, String str2, int i11, int i12, int i13) {
        return new LiveMessageModel<>(str, LiveLuckyUserUpdateMessage.from(userBean, list, i9, i10, j10, str2, i11, i12, i13));
    }

    public static LiveMessageModel<LiveLuckyWinMessage> createLuckyWinMessage(String str, UserBean userBean, int i9, String str2, String str3, int i10) {
        return new LiveMessageModel<>(str, LiveLuckyWinMessage.from(userBean, i9, str2, str3, i10));
    }

    public static LiveMessageModel<BaseLiveMessage> createMemberModel(String str, String str2, boolean z10, String str3) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.action = z10;
        baseLiveMessage.setToUserNickName(str2);
        baseLiveMessage.setToUserId(str);
        baseLiveMessage.setOperatedUserImg(str3);
        baseLiveMessage.setType(BaseLiveMessage.TYPE_MEMBER_USER);
        return new LiveMessageModel<>("LIVE_MEMBER_USER", baseLiveMessage);
    }

    public static LiveMessageModel<LinkMicInfoMessage> createMixedFlowModel(long j10, List<LiveInfoMatchBean> list) {
        LinkMicInfoMessage linkMicInfoMessage = new LinkMicInfoMessage();
        linkMicInfoMessage.setServerTime(j10);
        linkMicInfoMessage.setMatchList(list);
        return new LiveMessageModel<>("LIVE_LINKMIC_MIXED", linkMicInfoMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createNatureChangeModel(boolean z10) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.action = z10;
        return new LiveMessageModel<>("LIVE_ROOM_NATURE", baseLiveMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createNoticModel(String str) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.setContent(str);
        return new LiveMessageModel<>("LOCAL_LIVE_NOTICE", baseLiveMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createPkChangeUiModel(PkRound pkRound) {
        PkChangeUiMessage pkChangeUiMessage = new PkChangeUiMessage();
        pkChangeUiMessage.setPkRound(pkRound);
        return new LiveMessageModel<>("LIVE_CHANGE_PK", pkChangeUiMessage);
    }

    public static LiveMessageModel<PkFCoinMessage> createPkFCoinMessageModel(long j10) {
        PkFCoinMessage pkFCoinMessage = new PkFCoinMessage();
        pkFCoinMessage.setFCoin(j10);
        return new LiveMessageModel<>("LIVE_UPDATE_PK_COINS", pkFCoinMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createPkMergeStreamSuccessModel(PkUser pkUser, long j10) {
        LiveInfoResult liveInfoResult = new LiveInfoResult();
        liveInfoResult.setPk(pkUser);
        if (pkUser != null && pkUser.getLeftAnchorMsg() != null) {
            pkUser.getLeftAnchorMsg().setJsUrl(null);
        }
        if (pkUser != null && pkUser.getRightAnchorMsg() != null) {
            pkUser.getRightAnchorMsg().setJsUrl(null);
        }
        liveInfoResult.setServerTime(j10);
        return new LiveMessageModel<>("LIVE_PK_MERGE_SUCCESS", liveInfoResult);
    }

    public static LiveMessageModel<BaseLiveMessage> createPkMessageModel(String str, String str2, String str3, String str4) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.setFromUserId(str);
        baseLiveMessage.setFromUserNickName(str2);
        baseLiveMessage.setToUserId(str3);
        baseLiveMessage.setToUserNickName(str4);
        baseLiveMessage.setType("LIVE_BEGIN_PK");
        return new LiveMessageModel<>("LIVE_BEGIN_PK", baseLiveMessage);
    }

    public static LiveMessageModel<LiveInfoResult> createPkPollMessageModel(PkUser pkUser, long j10) {
        LiveInfoResult liveInfoResult = new LiveInfoResult();
        liveInfoResult.setPk(pkUser);
        if (pkUser != null && pkUser.getLeftAnchorMsg() != null) {
            pkUser.getLeftAnchorMsg().setJsUrl(null);
        }
        if (pkUser != null && pkUser.getRightAnchorMsg() != null) {
            pkUser.getRightAnchorMsg().setJsUrl(null);
        }
        liveInfoResult.setServerTime(j10);
        return new LiveMessageModel<>("LIVE_UPDATE_PK_INFO", liveInfoResult);
    }

    public static LiveMessageModel<BaseLiveMessage> createPkReplyMessageModel(String str, String str2, String str3, String str4, boolean z10, boolean z11) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.setAction(z10);
        baseLiveMessage.setFromUserId(str);
        baseLiveMessage.setFromUserNickName(str2);
        baseLiveMessage.setToUserId(str3);
        baseLiveMessage.setToUserNickName(str4);
        baseLiveMessage.setRefusePkInvite(z11);
        baseLiveMessage.setType("LIVE_REPLY_PK_INVITE");
        return new LiveMessageModel<>("LIVE_REPLY_PK_INVITE", baseLiveMessage);
    }

    public static LiveMessageModel<PkResultMessage> createPkResultMessageModel(int i9, String str, String str2, boolean z10) {
        PkResultMessage pkResultMessage = new PkResultMessage();
        pkResultMessage.setResult(i9);
        pkResultMessage.setFcoin(str);
        pkResultMessage.setOtherFcoin(str2);
        pkResultMessage.setPunishment(z10);
        pkResultMessage.setType("LIVE_PK_RESULT");
        return new LiveMessageModel<>("LIVE_PK_RESULT", pkResultMessage);
    }

    public static LiveMessageModel<LinkMicMessage> createPlaySuccessModel(LiveInfoMatchBean liveInfoMatchBean) {
        LinkMicMessage linkMicMessage = new LinkMicMessage();
        linkMicMessage.setType("apply");
        linkMicMessage.setLiveInfoMatchBean(liveInfoMatchBean);
        if (liveInfoMatchBean != null) {
            linkMicMessage.setStreamId(liveInfoMatchBean.getStreamId());
        }
        return new LiveMessageModel<>("LIVE_LINKMIC_PLAYSUCCESS", linkMicMessage);
    }

    public static LiveMessageModel<LinkMicMessage> createPushSuccessModel(LiveMicApplyResult liveMicApplyResult) {
        LinkMicMessage linkMicMessage = new LinkMicMessage();
        linkMicMessage.setType("apply");
        UserBean c10 = b8.e.g().c();
        linkMicMessage.setAge(String.valueOf(c10.getAge()));
        linkMicMessage.setSex(String.valueOf(c10.sex));
        linkMicMessage.setStreamId(liveMicApplyResult.getStreamId());
        return new LiveMessageModel<>("LIVE_LINKMIC_PUSHSUCCESS", linkMicMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createReceiveHelloGift(GiftLiveMessage giftLiveMessage) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.setLevelId(giftLiveMessage.getLevelId());
        baseLiveMessage.setFromUserAvatar(giftLiveMessage.getFromUserAvatar());
        baseLiveMessage.setFromUserId(giftLiveMessage.getFromUserId());
        baseLiveMessage.setFromUserNickName(giftLiveMessage.getFromUserNickName());
        baseLiveMessage.setUserVipMsg(giftLiveMessage.getUserVipMsg());
        baseLiveMessage.setType("LIVE_RECEIVE_HELLO_GIFT");
        return new LiveMessageModel<>("LIVE_RECEIVE_HELLO_GIFT", baseLiveMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createReceiveHelloGiftThank(GiftLiveMessage giftLiveMessage) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.setLevelId(giftLiveMessage.getLevelId());
        baseLiveMessage.setFromUserAvatar(giftLiveMessage.getFromUserAvatar());
        baseLiveMessage.setFromUserId(giftLiveMessage.getFromUserId());
        baseLiveMessage.setFromUserNickName(giftLiveMessage.getFromUserNickName());
        baseLiveMessage.setUserVipMsg(giftLiveMessage.getUserVipMsg());
        baseLiveMessage.setType("LIVE_RECEIVE_HELLO_GIFT_THANK");
        return new LiveMessageModel<>("LIVE_RECEIVE_HELLO_GIFT_THANK", baseLiveMessage);
    }

    public static LiveMessageModel<LinkMicMessage> createRejectLinkMicModel(String str) {
        LinkMicMessage linkMicMessage = new LinkMicMessage();
        linkMicMessage.action = false;
        linkMicMessage.setToUserId(str);
        return new LiveMessageModel<>("LIVE_LINKMIC_RESPONSE", linkMicMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createScreenShotBtnOpenMessage(boolean z10) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.action = z10;
        return new LiveMessageModel<>("LIVE_SCREENSHOT_BTN_SWITCH", baseLiveMessage);
    }

    public static LiveMessageModel<LinkMicMessage> createStartMergeModel(String str, String str2) {
        LinkMicMessage linkMicMessage = new LinkMicMessage();
        linkMicMessage.action = true;
        linkMicMessage.setToUserId(str);
        linkMicMessage.setStreamId(str2);
        return new LiveMessageModel<>("LIVE_LINKMIC_START_MERGE_STREAM", linkMicMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createTakeSeatModel(VoiceRoomCMDMessageModel.VoiceRoomCMDUserOnSeatMessageModel voiceRoomCMDUserOnSeatMessageModel) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.action = true;
        baseLiveMessage.setToUserNickName(voiceRoomCMDUserOnSeatMessageModel.getNickName());
        baseLiveMessage.setToUserId(voiceRoomCMDUserOnSeatMessageModel.getUserId());
        baseLiveMessage.setFromUserId(voiceRoomCMDUserOnSeatMessageModel.getUserId());
        baseLiveMessage.setFromUserNickName(voiceRoomCMDUserOnSeatMessageModel.getNickName());
        baseLiveMessage.setFromUserAvatar(voiceRoomCMDUserOnSeatMessageModel.getSmallImg());
        baseLiveMessage.setOperatedUserImg(voiceRoomCMDUserOnSeatMessageModel.getSmallImg());
        baseLiveMessage.setLevelId(voiceRoomCMDUserOnSeatMessageModel.getLevelId().intValue());
        baseLiveMessage.setType(BaseLiveMessage.TYPE_CUSTOM_MSG);
        return new LiveMessageModel<>("LIVE_TAKE_SEAT", baseLiveMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createTextModel(String str, boolean z10, boolean z11) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.setContent(str);
        baseLiveMessage.setShowDanmu(z10 ? 1 : 0);
        baseLiveMessage.mvpDanmu = z11 ? 1 : 0;
        if (z11) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_bullet_chat);
        }
        return new LiveMessageModel<>("LIVE_CUSTOM_MSG", baseLiveMessage);
    }

    public static LiveMessageModel<BaseLiveMessage> createTobeMemberModel(String str, String str2, boolean z10, String str3, int i9) {
        BaseLiveMessage baseLiveMessage = new BaseLiveMessage();
        baseLiveMessage.action = z10;
        baseLiveMessage.setToUserNickName(str2);
        baseLiveMessage.setToUserId(str);
        baseLiveMessage.setFromUserId(str);
        baseLiveMessage.setFromUserNickName(str2);
        baseLiveMessage.setFromUserAvatar(str3);
        baseLiveMessage.setOperatedUserImg(str3);
        baseLiveMessage.setLevelId(i9);
        baseLiveMessage.setType(BaseLiveMessage.TYPE_CUSTOM_MSG);
        return new LiveMessageModel<>("LIVE_TOBE_MEMBER_USER", baseLiveMessage);
    }

    public static LiveMessageModel<LinkMicMessage> createVideoStatusChangeModel(boolean z10, String str, String str2, long j10) {
        LinkMicMessage linkMicMessage = new LinkMicMessage();
        linkMicMessage.action = z10;
        linkMicMessage.setToUserId(str);
        linkMicMessage.setServerTime(j10);
        linkMicMessage.setToUserNickName(str2);
        linkMicMessage.setType(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
        return new LiveMessageModel<>("LIVE_LINKMIC_VIDEO", linkMicMessage);
    }

    public static LiveMessageModel<VolumeMessage> createVolumeModel(double d10) {
        VolumeMessage volumeMessage = new VolumeMessage();
        volumeMessage.setAverageVolume(d10);
        return new LiveMessageModel<>("LIVE_VOLUME", volumeMessage);
    }

    @Nullable
    public static <T extends BaseLiveMessage> LiveMessageModel<T> parseModel(String str) {
        Type newParameterizedTypeWithOwner;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("cmd")) {
                String obj = jSONObject.get("cmd").toString();
                if (TextUtils.isEmpty(obj) || CustomMessage.C2C_SEND_GIFT_CMD.equals(obj) || CustomMessage.C2C_SEND_FSX1_CMD.equals(obj)) {
                    return null;
                }
                Type type = CLAZZ_MAP.get(obj);
                if (type == null) {
                    newParameterizedTypeWithOwner = DEFAULT_TYPE;
                } else {
                    newParameterizedTypeWithOwner = C$Gson$Types.newParameterizedTypeWithOwner(null, LiveMessageModel.class, type);
                }
                return (LiveMessageModel) BaseLiveRoomFragment.K5.fromJson(str, newParameterizedTypeWithOwner);
            }
        } catch (Exception e10) {
            LogUtils.e(LOG_TAG, "parseModel json error: ", e10);
        }
        return null;
    }

    public static LiveMessageModel<VolumeMessage> createVolumeModel(double d10, String str) {
        VolumeMessage volumeMessage = new VolumeMessage();
        volumeMessage.setAverageVolume(d10);
        volumeMessage.setFromUserId(str);
        return new LiveMessageModel<>("LIVE_VOLUME", volumeMessage);
    }
}
