package com.tencent.imsdk.group;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class GroupMemberInfoResult implements Serializable {
    private List<GroupMemberInfo> groupMemberInfoList;
    private long nextSeq;

    public List<GroupMemberInfo> getGroupMemberInfoList() {
        return this.groupMemberInfoList;
    }

    public long getNextSeq() {
        return this.nextSeq;
    }

    public void setGroupMemberInfoList(List<GroupMemberInfo> list) {
        this.groupMemberInfoList = list;
    }

    public void setNextSeq(long j10) {
        this.nextSeq = j10;
    }
}
