package com.guochao.faceshow.aaspring.modulars.live.model;

import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.beans.JoinGameUser;
import com.guochao.faceshow.aaspring.beans.LiveGameCancelBean;
import com.guochao.faceshow.aaspring.beans.LiveGamePollDetail;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.bean.UserBean;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* loaded from: classes3.dex */
public class LiveLuckyUserUpdateMessage extends BaseLiveMessage {
    private GameInfo gameInfo;
    private String roundId;

    public static LiveLuckyUserUpdateMessage from(UserBean userBean, List<JoinGameUser> list, int i9, int i10, long j10, String str, int i11, int i12, int i13) {
        return from(userBean, list, i9, i10, j10, str, 0, null, i11, i12, i13);
    }

    @Nullable
    public GameInfo getGameInfo() {
        return this.gameInfo;
    }

    public String getRoundId() {
        return this.roundId;
    }

    public void setGameInfo(GameInfo gameInfo) {
        this.gameInfo = gameInfo;
    }

    public void setRoundId(String str) {
        this.roundId = str;
    }

    public static LiveLuckyUserUpdateMessage from(UserBean userBean, List<LiveGameCancelBean> list, long j10, String str, int i9) {
        return from(userBean, null, 0, 0, j10, str, 0, list, 0, 0, i9);
    }

    public static LiveLuckyUserUpdateMessage from(UserBean userBean, @Nullable List<JoinGameUser> list, int i9, int i10, long j10, String str, int i11, List<LiveGameCancelBean> list2, int i12, int i13, int i14) {
        LiveLuckyUserUpdateMessage liveLuckyUserUpdateMessage = new LiveLuckyUserUpdateMessage();
        if (userBean != null) {
            liveLuckyUserUpdateMessage.setFromUserNickName(userBean.getUserName());
            liveLuckyUserUpdateMessage.setLevelId(userBean.getLevel());
            liveLuckyUserUpdateMessage.setFromUserId(userBean.getUserId());
            liveLuckyUserUpdateMessage.setFromUserAvatar(userBean.getAvatarUrl());
        }
        liveLuckyUserUpdateMessage.setServerTime(System.currentTimeMillis() + i.u().s().getServerTimeDiff());
        liveLuckyUserUpdateMessage.setChatDate(Long.valueOf(System.currentTimeMillis() + i.u().s().getServerTimeDiff()));
        GameInfo gameInfo = new GameInfo();
        gameInfo.setFlag(i14);
        gameInfo.setLuckyUsers(list, i12, i13);
        gameInfo.setConfUserNum(i9);
        gameInfo.setDiamondNum(i10);
        gameInfo.setRemoveCount(i11);
        gameInfo.setGameInfoId(j10);
        gameInfo.setRoundId(str);
        if (list2 != null && !list2.isEmpty()) {
            gameInfo.setLuckyUsers(list2);
        }
        gameInfo.setConfDiamondNum(i12);
        liveLuckyUserUpdateMessage.setRoundId(str);
        liveLuckyUserUpdateMessage.setGameInfo(gameInfo);
        return liveLuckyUserUpdateMessage;
    }

    /* loaded from: classes3.dex */
    public static class GameInfo {
        private int confDiamondNum;
        private int confUserNum;
        private int diamondNum;
        private int flag;
        private long gameInfoId;
        private List<LiveGamePollDetail.LiveGameRoundDetail> luckyUsers;
        private int removeCount;
        private String roundId;

        public int getConfDiamondNum() {
            return this.confDiamondNum;
        }

        public int getConfUserNum() {
            return this.confUserNum;
        }

        public int getDiamondNum() {
            return this.diamondNum;
        }

        public int getFlag() {
            return this.flag;
        }

        public long getGameInfoId() {
            return this.gameInfoId;
        }

        public List<LiveGamePollDetail.LiveGameRoundDetail> getLuckyUsers() {
            if (this.luckyUsers == null) {
                return new ArrayList();
            }
            return new ArrayList(this.luckyUsers);
        }

        public int getRemoveCount() {
            return this.removeCount;
        }

        public String getRoundId() {
            return this.roundId;
        }

        public void setConfDiamondNum(int i9) {
            this.confDiamondNum = i9;
        }

        public void setConfUserNum(int i9) {
            this.confUserNum = i9;
        }

        public void setDiamondNum(int i9) {
            this.diamondNum = i9;
        }

        public void setFlag(int i9) {
            this.flag = i9;
        }

        public void setGameInfoId(long j10) {
            this.gameInfoId = j10;
        }

        public void setLuckyUsers(@Nullable List<JoinGameUser> list, int i9, int i10) {
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (JoinGameUser joinGameUser : list) {
                LiveGamePollDetail.LiveGameRoundDetail liveGameRoundDetail = new LiveGamePollDetail.LiveGameRoundDetail();
                liveGameRoundDetail.setLogo(joinGameUser.getAvatarUrl());
                liveGameRoundDetail.setNickName(joinGameUser.getUserName());
                liveGameRoundDetail.setRemovePosition(joinGameUser.getRemovePosition());
                liveGameRoundDetail.setConfDiamondNum(i9);
                liveGameRoundDetail.setDiamond(i10);
                try {
                    liveGameRoundDetail.setUserId(Long.parseLong(joinGameUser.getCurrentUserId()));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                arrayList.add(liveGameRoundDetail);
            }
            this.luckyUsers = arrayList;
        }

        public void setRemoveCount(int i9) {
            this.removeCount = i9;
        }

        public void setRoundId(String str) {
            this.roundId = str;
        }

        public void setLuckyUsers(@Nullable List<LiveGameCancelBean> list) {
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (LiveGameCancelBean liveGameCancelBean : list) {
                LiveGamePollDetail.LiveGameRoundDetail liveGameRoundDetail = new LiveGamePollDetail.LiveGameRoundDetail();
                liveGameRoundDetail.setUserId(liveGameCancelBean.getUserId());
                liveGameRoundDetail.setBackDiamond(liveGameCancelBean.getBackDiamond());
                arrayList.add(liveGameRoundDetail);
            }
            this.luckyUsers = arrayList;
        }
    }
}
