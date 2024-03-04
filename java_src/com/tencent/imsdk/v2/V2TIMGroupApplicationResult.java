package com.tencent.imsdk.v2;

import com.tencent.imsdk.group.GroupApplication;
import com.tencent.imsdk.group.GroupApplicationResult;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class V2TIMGroupApplicationResult implements Serializable {
    private int unreadCount = 0;
    private long reportedTimestamp = 0;
    private List<V2TIMGroupApplication> v2TIMGroupApplicationList = new ArrayList();

    public List<V2TIMGroupApplication> getGroupApplicationList() {
        return this.v2TIMGroupApplicationList;
    }

    public int getUnreadCount() {
        return this.unreadCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setGroupApplicationResult(GroupApplicationResult groupApplicationResult) {
        this.unreadCount = (int) groupApplicationResult.getUnreadCount();
        this.v2TIMGroupApplicationList.clear();
        List<GroupApplication> groupApplicationList = groupApplicationResult.getGroupApplicationList();
        if (groupApplicationList != null) {
            for (int i9 = 0; i9 < groupApplicationList.size(); i9++) {
                V2TIMGroupApplication v2TIMGroupApplication = new V2TIMGroupApplication();
                v2TIMGroupApplication.setGroupApplication(groupApplicationList.get(i9));
                this.v2TIMGroupApplicationList.add(v2TIMGroupApplication);
            }
        }
    }

    void setReportedTimestamp(long j10) {
        this.reportedTimestamp = j10;
    }

    void setUnreadCount(int i9) {
        this.unreadCount = i9;
    }
}
