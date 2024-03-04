package com.tencent.imsdk.v2;

import com.tencent.imsdk.relationship.ReceiveMessageOptInfo;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class V2TIMReceiveMessageOptInfo implements Serializable {
    private ReceiveMessageOptInfo ReceiveMessageOptInfo = new ReceiveMessageOptInfo();

    public int getC2CReceiveMessageOpt() {
        int c2CReceiveMessageOpt = this.ReceiveMessageOptInfo.getC2CReceiveMessageOpt();
        if (c2CReceiveMessageOpt == 1) {
            return 0;
        }
        if (c2CReceiveMessageOpt == 2) {
            return 1;
        }
        return c2CReceiveMessageOpt == 3 ? 2 : 0;
    }

    public String getUserID() {
        return this.ReceiveMessageOptInfo.getUserID();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setC2CReceiveMessageOpt(int i9) {
        this.ReceiveMessageOptInfo.setC2CReceiveMessageOpt(i9);
    }

    public void setUserID(String str) {
        this.ReceiveMessageOptInfo.setUserID(str);
    }
}
