package com.appsflyer.internal;
/* loaded from: classes.dex */
public class AFc1wSDK {
    public final long AFInAppEventParameterName;

    public AFc1wSDK(long j10) {
        this.AFInAppEventParameterName = j10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.AFInAppEventParameterName == ((AFc1wSDK) obj).AFInAppEventParameterName;
    }

    public int hashCode() {
        long j10 = this.AFInAppEventParameterName;
        return (int) (j10 ^ (j10 >>> 32));
    }
}
