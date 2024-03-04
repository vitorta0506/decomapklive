package com.guochao.faceshow.aaspring.modulars.live.model;

import com.guochao.faceshow.aaspring.modulars.live.model.LiveLuckyUserUpdateMessage;
import com.guochao.faceshow.bean.UserBean;
/* loaded from: classes3.dex */
public class LiveLuckyWinMessage extends BaseLiveMessage {
    private LiveLuckyUserUpdateMessage.GameInfo gameInfo;
    private int winDiamondNum;

    public static LiveLuckyWinMessage from(UserBean userBean, int i9, String str, String str2, int i10) {
        LiveLuckyWinMessage liveLuckyWinMessage = new LiveLuckyWinMessage();
        if (userBean != null) {
            liveLuckyWinMessage.setFromUserNickName(userBean.getUserName());
            liveLuckyWinMessage.setLevelId(userBean.getLevel());
            liveLuckyWinMessage.setFromUserId(userBean.getUserId());
            liveLuckyWinMessage.setFromUserAvatar(userBean.getAvatarUrl());
        }
        LiveLuckyUserUpdateMessage.GameInfo gameInfo = new LiveLuckyUserUpdateMessage.GameInfo();
        liveLuckyWinMessage.gameInfo = gameInfo;
        gameInfo.setFlag(i10);
        liveLuckyWinMessage.setToUserId(str);
        liveLuckyWinMessage.setToUserNickName(str2);
        liveLuckyWinMessage.setServerTime(System.currentTimeMillis());
        liveLuckyWinMessage.setChatDate(Long.valueOf(System.currentTimeMillis()));
        liveLuckyWinMessage.setWinDiamondNum(i9);
        return liveLuckyWinMessage;
    }

    public int getFlag() {
        LiveLuckyUserUpdateMessage.GameInfo gameInfo = this.gameInfo;
        if (gameInfo == null) {
            return 0;
        }
        return gameInfo.getFlag();
    }

    public int getWinDiamondNum() {
        return this.winDiamondNum;
    }

    public void setWinDiamondNum(int i9) {
        this.winDiamondNum = i9;
    }
}
