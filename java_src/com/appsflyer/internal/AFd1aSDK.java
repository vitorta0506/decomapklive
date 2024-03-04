package com.appsflyer.internal;
/* loaded from: classes.dex */
public final class AFd1aSDK extends AFa1tSDK {
    public AFd1aSDK() {
        super(null, null, Boolean.TRUE, null);
    }

    @Override // com.appsflyer.internal.AFa1tSDK
    public final AFc1lSDK AFInAppEventParameterName() {
        return AFc1lSDK.ADREVENUE;
    }

    @Override // com.appsflyer.internal.AFa1tSDK
    public final AFa1tSDK AFKeystoreWrapper(String str) {
        return super.AFKeystoreWrapper(AFInAppEventType(str));
    }
}
