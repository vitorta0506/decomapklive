package com.guochao.faceshow.aaspring.modulars.live.model;

import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
/* loaded from: classes3.dex */
public class LinkMicMessage extends BaseLiveMessage {
    private String age;
    private LiveInfoMatchBean mLiveInfoMatchBean;
    private String sex;
    private String streamId;

    public String getAge() {
        return this.age;
    }

    public LiveInfoMatchBean getLiveInfoMatchBean() {
        return this.mLiveInfoMatchBean;
    }

    public String getSex() {
        return this.sex;
    }

    public String getStreamId() {
        return this.streamId;
    }

    public void setAge(String str) {
        this.age = str;
    }

    public void setLiveInfoMatchBean(LiveInfoMatchBean liveInfoMatchBean) {
        this.mLiveInfoMatchBean = liveInfoMatchBean;
    }

    public void setSex(String str) {
        this.sex = str;
    }

    public void setStreamId(String str) {
        this.streamId = str;
    }
}
