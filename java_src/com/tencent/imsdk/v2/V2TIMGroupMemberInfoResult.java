package com.tencent.imsdk.v2;

import com.tencent.imsdk.group.GroupMemberInfo;
import com.tencent.imsdk.group.GroupMemberInfoResult;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class V2TIMGroupMemberInfoResult implements Serializable {
    private long nextSeq;
    private List<V2TIMGroupMemberFullInfo> v2TIMGroupMemberFullInfoList = new ArrayList();

    public List<V2TIMGroupMemberFullInfo> getMemberInfoList() {
        return this.v2TIMGroupMemberFullInfoList;
    }

    public long getNextSeq() {
        return this.nextSeq;
    }

    public void setGroupMemberInfoResult(GroupMemberInfoResult groupMemberInfoResult) {
        this.nextSeq = groupMemberInfoResult.getNextSeq();
        this.v2TIMGroupMemberFullInfoList.clear();
        List<GroupMemberInfo> groupMemberInfoList = groupMemberInfoResult.getGroupMemberInfoList();
        for (int i9 = 0; i9 < groupMemberInfoList.size(); i9++) {
            V2TIMGroupMemberFullInfo v2TIMGroupMemberFullInfo = new V2TIMGroupMemberFullInfo();
            v2TIMGroupMemberFullInfo.setGroupMemberInfo(groupMemberInfoList.get(i9));
            this.v2TIMGroupMemberFullInfoList.add(v2TIMGroupMemberFullInfo);
        }
    }
}
