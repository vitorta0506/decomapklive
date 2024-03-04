package com.guochao.faceshow.aaspring.modulars.live.model;

import com.guochao.faceshow.aaspring.beans.LiveGameBean;
/* loaded from: classes3.dex */
public class BaseLiveGameMessage extends BaseLiveMessage {
    private LiveGameBean liveGameBean;
    private String roundId;

    public BaseLiveGameMessage(LiveGameBean liveGameBean) {
        this.liveGameBean = liveGameBean;
    }

    public LiveGameBean getLiveGameBean() {
        return this.liveGameBean;
    }

    public String getRoundId() {
        return this.roundId;
    }

    public boolean isValid() {
        LiveGameBean liveGameBean = this.liveGameBean;
        return liveGameBean != null && liveGameBean.getAndroidVersion() <= 2828;
    }

    public void setLiveGameBean(LiveGameBean liveGameBean) {
        this.liveGameBean = liveGameBean;
    }

    public void setRoundId(String str) {
        this.roundId = str;
    }
}
