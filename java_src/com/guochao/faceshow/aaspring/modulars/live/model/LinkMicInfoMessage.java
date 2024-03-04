package com.guochao.faceshow.aaspring.modulars.live.model;

import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import java.util.List;
/* loaded from: classes3.dex */
public class LinkMicInfoMessage extends BaseLiveMessage {
    private List<LiveInfoMatchBean> matchList;

    public List<LiveInfoMatchBean> getMatchList() {
        return this.matchList;
    }

    public void setMatchList(List<LiveInfoMatchBean> list) {
        this.matchList = list;
    }
}
