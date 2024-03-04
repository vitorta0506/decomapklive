package com.guochao.faceshow.aaspring.modulars.live.game.model;

import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.LiveGameUserInfo;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveGameMessage;
/* loaded from: classes3.dex */
public class LiveGameJoinMessage extends BaseLiveGameMessage {
    private LiveGameUserInfo liveGameUserInfo;
    private int position;

    public LiveGameJoinMessage(LiveGameBean liveGameBean) {
        super(liveGameBean);
    }

    public LiveGameUserInfo getLiveGameUserInfo() {
        return this.liveGameUserInfo;
    }

    public int getPosition() {
        return this.position;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveGameMessage
    public boolean isValid() {
        return true;
    }

    public void setLiveGameUserInfo(LiveGameUserInfo liveGameUserInfo) {
        this.liveGameUserInfo = liveGameUserInfo;
    }

    public void setPosition(int i9) {
        this.position = i9;
    }
}
