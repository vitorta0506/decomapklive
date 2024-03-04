package com.appsflyer.internal;
/* loaded from: classes.dex */
public final class AFf1xSDK {
    public static int AFInAppEventType;
    public static final Object AFKeystoreWrapper = new Object();
    public static int valueOf;
    public static int values;

    public static void AFInAppEventType(int[] iArr) {
        for (int i9 = 0; i9 < iArr.length / 2; i9++) {
            int i10 = iArr[i9];
            iArr[i9] = iArr[(iArr.length - i9) - 1];
            iArr[(iArr.length - i9) - 1] = i10;
        }
    }

    public static int AFKeystoreWrapper(int i9) {
        int[][] iArr = AFe1dSDK.AFKeystoreWrapper.values;
        return ((iArr[0][i9 >>> 24] + iArr[1][(i9 >>> 16) & 255]) ^ iArr[2][(i9 >>> 8) & 255]) + iArr[3][i9 & 255];
    }
}
