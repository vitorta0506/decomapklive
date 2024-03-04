package com.guochao.faceshow.aaspring.modulars.live.model;
/* loaded from: classes3.dex */
public class GroupDismissMessage extends BaseLiveMessage {
    private String groupId;

    public GroupDismissMessage(String str) {
        this.groupId = str;
        setRoomId(str);
    }

    public String getGroupId() {
        return this.groupId;
    }

    public void setGroupId(String str) {
        this.groupId = str;
    }
}
