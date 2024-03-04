package com.tencent.imsdk.offlinePush;
/* loaded from: classes4.dex */
public class OfflinePushToken {
    private int businessID;
    private int deviceBrand;
    private String deviceToken;
    private int isTPNSToken;

    public void setBusinessID(int i9) {
        this.businessID = i9;
    }

    public void setDeviceBrand(int i9) {
        this.deviceBrand = i9;
    }

    public void setDeviceToken(String str) {
        this.deviceToken = str;
    }

    public void setIsTPNSToken(boolean z10) {
        this.isTPNSToken = z10 ? 1 : 0;
    }
}
