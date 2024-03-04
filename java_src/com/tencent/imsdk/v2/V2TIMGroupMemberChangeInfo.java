package com.tencent.imsdk.v2;

import com.tencent.imsdk.group.GroupMemberInfoChangeItem;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class V2TIMGroupMemberChangeInfo implements Serializable {
    private GroupMemberInfoChangeItem groupMemberInfoChangeItem = new GroupMemberInfoChangeItem();

    GroupMemberInfoChangeItem getGroupMemberInfoChangeItem() {
        return this.groupMemberInfoChangeItem;
    }

    public long getMuteTime() {
        return this.groupMemberInfoChangeItem.getShutUpTime();
    }

    public String getUserID() {
        return this.groupMemberInfoChangeItem.getUserID();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setGroupMemberInfoChangeItem(GroupMemberInfoChangeItem groupMemberInfoChangeItem) {
        this.groupMemberInfoChangeItem = groupMemberInfoChangeItem;
    }
}
