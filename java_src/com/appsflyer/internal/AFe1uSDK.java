package com.appsflyer.internal;
/* loaded from: classes.dex */
public final class AFe1uSDK extends AFa1tSDK {
    @Override // com.appsflyer.internal.AFa1tSDK
    public final AFc1lSDK AFInAppEventParameterName() {
        if (this.AFLogger == 1) {
            return AFc1lSDK.CONVERSION;
        }
        return AFc1lSDK.LAUNCH;
    }
}
