package com.guochao.faceshow.aaspring.beans;

import com.google.gson.Gson;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.model.AudienceListInfoMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveActivityMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.PkUser;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class LiveInfoResult extends AudienceListInfoMessage {
    private List<ActivityGift> appActivityGiftList;
    private int code;
    private List<LiveGamePollDetail> gameInfoList;
    private List<LiveGamePollDetail> gameInfoListV2;
    private int isMusicActivity;
    private List<LiveInfoMatchBean> matchList;
    private Integer nowHourCountryRank;
    private Integer nowHourRank;
    private List<ActivityGift> otherAppActivityGiftList;

    /* renamed from: pk  reason: collision with root package name */
    private PkUser f16311pk;
    private Integer preHourCountryRank;
    private Integer preHourRank;

    public List<ActivityGift> getAppActivityGiftList() {
        return this.appActivityGiftList;
    }

    public AudienceListInfoMessage getAudienceInfoMessage() {
        Gson gson = BaseLiveRoomFragment.K5;
        AudienceListInfoMessage audienceListInfoMessage = (AudienceListInfoMessage) gson.fromJson(gson.toJson(this), (Class<Object>) AudienceListInfoMessage.class);
        int length = gson.toJson(audienceListInfoMessage).getBytes().length;
        while (length >= 7500) {
            ArrayList arrayList = new ArrayList(audienceListInfoMessage.getAudienceList());
            if (arrayList.size() <= 0) {
                break;
            }
            length -= BaseLiveRoomFragment.K5.toJson(arrayList.remove(arrayList.size() - 1)).getBytes().length;
            audienceListInfoMessage.setAudienceList(arrayList);
        }
        return audienceListInfoMessage;
    }

    public int getCode() {
        return this.code;
    }

    public List<ActivityGift> getFullScreenActivityGiftList() {
        List<ActivityGift> list = this.otherAppActivityGiftList;
        return list == null ? new ArrayList() : list;
    }

    public List<LiveGamePollDetail> getGameInfoList() {
        List<LiveGamePollDetail> list = this.gameInfoList;
        return list == null ? new ArrayList() : list;
    }

    public List<LiveGamePollDetail> getGameInfoListV2() {
        List<LiveGamePollDetail> list = this.gameInfoListV2;
        return list == null ? new ArrayList() : list;
    }

    public int getIsMusicActivity() {
        if (i.u().s().getBlackShow() == 1) {
            return this.isMusicActivity;
        }
        return 0;
    }

    public LiveActivityMessage getLiveActivityMessage() {
        LiveActivityMessage liveActivityMessage = new LiveActivityMessage();
        liveActivityMessage.setAppActivityGiftList(this.appActivityGiftList);
        liveActivityMessage.setServerTime(getServerTime());
        return liveActivityMessage;
    }

    public LiveActivityMessage getLiveFullScreenActivityMessage() {
        LiveActivityMessage liveActivityMessage = new LiveActivityMessage();
        List<ActivityGift> list = this.otherAppActivityGiftList;
        if (list == null) {
            list = new ArrayList<>();
        }
        liveActivityMessage.setOtherAppActivityGiftList(list);
        liveActivityMessage.setServerTime(getServerTime());
        return liveActivityMessage;
    }

    public List<LiveInfoMatchBean> getMatchList() {
        return this.matchList;
    }

    public int getNowHourCountryRank() {
        Integer num = this.nowHourCountryRank;
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public int getNowHourRank() {
        Integer num = this.nowHourRank;
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public PkUser getPk() {
        return this.f16311pk;
    }

    public int getPreHourCountryRank() {
        Integer num = this.preHourCountryRank;
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public int getPreHourRank() {
        Integer num = this.preHourRank;
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public LiveInfoResult getTopInfoMessage() {
        LiveInfoResult liveInfoResult = new LiveInfoResult();
        ArrayList arrayList = new ArrayList();
        List<ActivityGift> list = this.appActivityGiftList;
        if (list != null) {
            for (ActivityGift activityGift : list) {
                ActivityGift activityGift2 = new ActivityGift();
                ArrayList arrayList2 = new ArrayList();
                if (activityGift.getAppActivityGiftEntityList() != null) {
                    for (ActivityGiftEntity activityGiftEntity : activityGift.getAppActivityGiftEntityList()) {
                        ActivityGiftEntity activityGiftEntity2 = new ActivityGiftEntity();
                        activityGiftEntity2.setDuringNum(activityGiftEntity.getDuringNum());
                        activityGiftEntity2.setGiftId(activityGiftEntity.getGiftId());
                        activityGiftEntity2.setGiftUrl(activityGiftEntity.getGiftUrl());
                        activityGiftEntity2.setRank(activityGiftEntity.getRank());
                        arrayList2.add(activityGiftEntity2);
                    }
                }
                activityGift2.setAppActivityGiftEntityList(arrayList2);
                activityGift2.setId(String.valueOf(activityGift.getId()));
                arrayList.add(activityGift2);
            }
        }
        liveInfoResult.setAppActivityGiftList(arrayList);
        ArrayList arrayList3 = new ArrayList();
        if (getAudienceList() != null) {
            for (AudienceInformation audienceInformation : getAudienceList()) {
                AudienceInformation audienceInformation2 = new AudienceInformation();
                audienceInformation2.setAvatar(audienceInformation.getAvatar());
                audienceInformation2.setImg(audienceInformation.getImg());
                audienceInformation2.setType(String.valueOf(audienceInformation.getType()));
                audienceInformation2.setUserId(String.valueOf(audienceInformation.getUserId()));
                arrayList3.add(audienceInformation2);
            }
        }
        liveInfoResult.setAudienceList(arrayList3);
        liveInfoResult.setFcoin(getFcoin());
        liveInfoResult.setLikeNum(String.valueOf(getLikeNum()));
        liveInfoResult.setOnlineNum(getOnlineNum());
        return liveInfoResult;
    }

    public void setAppActivityGiftList(List<ActivityGift> list) {
        this.appActivityGiftList = list;
    }

    public void setCode(int i9) {
        this.code = i9;
    }

    public void setFullScreenActivityGiftList(List<ActivityGift> list) {
        this.otherAppActivityGiftList = list;
    }

    public void setGameInfoList(List<LiveGamePollDetail> list) {
        this.gameInfoList = list;
    }

    public void setGameInfoListV2(List<LiveGamePollDetail> list) {
        this.gameInfoListV2 = list;
    }

    public void setIsMusicActivity(int i9) {
        this.isMusicActivity = i9;
    }

    public void setMatchList(List<LiveInfoMatchBean> list) {
        this.matchList = list;
    }

    public void setNowHourCountryRank(int i9) {
        this.nowHourCountryRank = Integer.valueOf(i9);
    }

    public void setNowHourRank(int i9) {
        this.nowHourRank = Integer.valueOf(i9);
    }

    public void setPk(PkUser pkUser) {
        this.f16311pk = pkUser;
    }

    public void setPreHourCountryRank(Integer num) {
        this.preHourCountryRank = num;
    }

    public void setPreHourRank(Integer num) {
        this.preHourRank = num;
    }
}
