package com.tencent.imsdk.relationship;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class FriendCheckResult implements Serializable {
    private int relationType;
    private int resultCode;
    private String resultInfo;
    private String userID;

    public int getRelationType() {
        return this.relationType;
    }

    public int getResultCode() {
        return this.resultCode;
    }

    public String getResultInfo() {
        return this.resultInfo;
    }

    public String getUserID() {
        return this.userID;
    }
}
