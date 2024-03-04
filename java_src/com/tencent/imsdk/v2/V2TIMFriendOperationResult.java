package com.tencent.imsdk.v2;

import com.tencent.imsdk.relationship.FriendOperationResult;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class V2TIMFriendOperationResult implements Serializable {
    private FriendOperationResult friendOperationResult;

    public int getResultCode() {
        return this.friendOperationResult.getResultCode();
    }

    public String getResultInfo() {
        return this.friendOperationResult.getResultInfo();
    }

    public String getUserID() {
        return this.friendOperationResult.getUserID();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setFriendOperationResult(FriendOperationResult friendOperationResult) {
        this.friendOperationResult = friendOperationResult;
    }
}
