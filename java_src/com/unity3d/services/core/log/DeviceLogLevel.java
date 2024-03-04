package com.unity3d.services.core.log;
/* loaded from: classes4.dex */
public class DeviceLogLevel {
    private static final String LOG_TAG = "UnityAds";
    private String _receivingMethodName;

    public DeviceLogLevel(String str) {
        this._receivingMethodName = str;
    }

    public String getLogTag() {
        return LOG_TAG;
    }

    public String getReceivingMethodName() {
        return this._receivingMethodName;
    }
}
