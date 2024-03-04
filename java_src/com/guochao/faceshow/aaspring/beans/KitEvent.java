package com.guochao.faceshow.aaspring.beans;
/* loaded from: classes3.dex */
public class KitEvent {
    private String isAttention;
    private boolean isKit;
    private String roomId;

    public KitEvent(String str, boolean z10, String str2) {
        this.roomId = str;
        this.isKit = z10;
        this.isAttention = str2;
    }

    public String getIsAttention() {
        return this.isAttention;
    }

    public String getRoomId() {
        return this.roomId;
    }

    public boolean isKit() {
        return this.isKit;
    }

    public void setIsAttention(String str) {
        this.isAttention = str;
    }

    public void setKit(boolean z10) {
        this.isKit = z10;
    }

    public void setRoomId(String str) {
        this.roomId = str;
    }
}
