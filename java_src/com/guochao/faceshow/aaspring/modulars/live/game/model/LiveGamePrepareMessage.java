package com.guochao.faceshow.aaspring.modulars.live.game.model;

import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.LiveGameUserInfo;
import com.guochao.faceshow.aaspring.modulars.live.game.LiveGameConfig;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveGameMessage;
/* loaded from: classes3.dex */
public class LiveGamePrepareMessage extends BaseLiveGameMessage {
    private LiveGameConfig liveGameConfig;
    private LiveGameUserInfo liveGameUserInfo;

    public LiveGamePrepareMessage(LiveGameBean liveGameBean) {
        super(liveGameBean);
    }

    public LiveGameConfig getLiveGameConfig() {
        this.liveGameConfig.i(getRoundId());
        return this.liveGameConfig;
    }

    public LiveGameUserInfo getLiveGameUserInfo() {
        return this.liveGameUserInfo;
    }

    public void setLiveGameConfig(LiveGameConfig liveGameConfig) {
        this.liveGameConfig = liveGameConfig;
    }

    public void setLiveGameUserInfo(LiveGameUserInfo liveGameUserInfo) {
        this.liveGameUserInfo = liveGameUserInfo;
    }
}
