package com.guochao.faceshow.aaspring.modulars.live.game.model;

import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.LiveGamePollDetail;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveGameMessage;
import java.util.List;
/* loaded from: classes3.dex */
public class LiveGameUpdateMessage extends BaseLiveGameMessage {
    private List<LiveGamePollDetail> gameInfoList;

    public LiveGameUpdateMessage(LiveGameBean liveGameBean) {
        super(liveGameBean);
    }

    public List<LiveGamePollDetail> getGameInfoList() {
        return this.gameInfoList;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveGameMessage
    public boolean isValid() {
        List<LiveGamePollDetail> list = this.gameInfoList;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public void setGameInfoList(List<LiveGamePollDetail> list) {
        this.gameInfoList = list;
    }
}
