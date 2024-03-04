package com.guochao.faceshow.aaspring.modulars.live.game.model;

import com.guochao.faceshow.aaspring.beans.LiveGameBean;
/* loaded from: classes3.dex */
public class LiveGameSwitchSeatMessage extends LiveGameJoinMessage {
    private int fromPosition;

    public LiveGameSwitchSeatMessage(LiveGameBean liveGameBean) {
        super(liveGameBean);
    }

    public int getFromPosition() {
        return this.fromPosition;
    }

    public void setFromPosition(int i9) {
        this.fromPosition = i9;
    }
}
