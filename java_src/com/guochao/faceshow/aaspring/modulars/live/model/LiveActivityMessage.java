package com.guochao.faceshow.aaspring.modulars.live.model;

import com.guochao.faceshow.aaspring.beans.ActivityGift;
import java.util.List;
/* loaded from: classes3.dex */
public class LiveActivityMessage extends BaseLiveMessage {
    private List<ActivityGift> appActivityGiftList;
    private List<ActivityGift> otherAppActivityGiftList;

    public List<ActivityGift> getAppActivityGiftList() {
        return this.appActivityGiftList;
    }

    public List<ActivityGift> getOtherAppActivityGiftList() {
        return this.otherAppActivityGiftList;
    }

    public void setAppActivityGiftList(List<ActivityGift> list) {
        this.appActivityGiftList = list;
    }

    public void setOtherAppActivityGiftList(List<ActivityGift> list) {
        this.otherAppActivityGiftList = list;
    }
}
