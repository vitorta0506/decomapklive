package com.tencent.imsdk.relationship;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class ReceiveMessageOptInfo implements Serializable {
    private String userID;
    private int userReceiveMessageOpt;

    public int getC2CReceiveMessageOpt() {
        return this.userReceiveMessageOpt;
    }

    public String getUserID() {
        return this.userID;
    }

    public void setC2CReceiveMessageOpt(int i9) {
        this.userReceiveMessageOpt = i9;
    }

    public void setUserID(String str) {
        this.userID = str;
    }
}
