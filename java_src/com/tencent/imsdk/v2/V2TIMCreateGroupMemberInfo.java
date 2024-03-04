package com.tencent.imsdk.v2;

import java.io.Serializable;
import java.util.Map;
/* loaded from: classes4.dex */
public class V2TIMCreateGroupMemberInfo implements Serializable {
    private Map<String, byte[]> customInfo;
    private int role = 0;
    private String userID;

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRole() {
        return this.role;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getUserID() {
        return this.userID;
    }

    public void setRole(int i9) {
        if (i9 == 200) {
            i9 = 0;
        }
        this.role = i9;
    }

    public void setUserID(String str) {
        this.userID = str;
    }
}
