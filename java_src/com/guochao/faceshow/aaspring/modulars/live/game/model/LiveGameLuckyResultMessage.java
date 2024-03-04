package com.guochao.faceshow.aaspring.modulars.live.game.model;

import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.LiveGameUserInfo;
import com.guochao.faceshow.aaspring.beans.LuckyNumberStartGameBean;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveGameMessage;
/* loaded from: classes3.dex */
public class LiveGameLuckyResultMessage extends BaseLiveGameMessage {
    private LiveGameUserInfo liveGameUserInfo;
    private LuckyNumberStartGameBean luckyNumberStartGameBean;

    public LiveGameLuckyResultMessage(LiveGameBean liveGameBean) {
        super(liveGameBean);
    }

    public LuckyNumberStartGameBean getLiveGameStartBean() {
        return this.luckyNumberStartGameBean;
    }

    public LiveGameUserInfo getLiveGameUserInfo() {
        return this.liveGameUserInfo;
    }

    public LuckyNumberStartGameBean getLuckyNumberStartGameBean() {
        return this.luckyNumberStartGameBean;
    }

    public LiveGameUserInfo getWinner() {
        return this.liveGameUserInfo;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveGameMessage
    public boolean isValid() {
        return true;
    }

    public void setLiveGameUserInfo(LiveGameUserInfo liveGameUserInfo) {
        this.liveGameUserInfo = liveGameUserInfo;
    }

    public void setLuckyNumberStartGameBean(LuckyNumberStartGameBean luckyNumberStartGameBean) {
        this.luckyNumberStartGameBean = luckyNumberStartGameBean;
    }

    public void setWinner(LiveGameUserInfo liveGameUserInfo) {
        this.liveGameUserInfo = liveGameUserInfo;
    }
}
