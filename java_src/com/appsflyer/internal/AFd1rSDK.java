package com.appsflyer.internal;

import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
/* loaded from: classes.dex */
public final class AFd1rSDK {
    private static int AFInAppEventParameterName = 0;
    private static long AFInAppEventType = 0;
    private static int AFKeystoreWrapper = 1;
    private static char valueOf = 22523;
    private static int values;

    @NonNull
    private static AFb1mSDK AFKeystoreWrapper(@NonNull AFb1sSDK aFb1sSDK, @Nullable String str, @NonNull String str2, @NonNull String str3) {
        String str4;
        if (str == null) {
            return new AFb1mSDK(aFb1sSDK.valueOf == AFe1sSDK.DEFAULT, AFe1rSDK.NA);
        }
        String intern = AFInAppEventType((char) (ViewConfiguration.getFadingEdgeLength() >> 16), "կ칺ʾ玴", "\u0000\u0000\u0000\u0000", ViewConfiguration.getDoubleTapTimeout() >> 16, "Ⓚᫌⴴ缻䫁▬\ueca2矬⅑蝖핾뤧\uec8aꉿ\ue164\udc6eꉅ\udc84긍랾脶碡衹㷻醐纱\uda70쎕砥\u2db7㦷咕䶟沽䆆瞈풶\ue988ࠥ䥱Ẁ戟몬퓋杠樽枛嫷醜៹읐\ue84d쯗㩍쾾켓\ue4d8յ网ﱓ黷⠳ⶓ米").intern();
        if (aFb1sSDK.valueOf == AFe1sSDK.CUSTOM) {
            str4 = new StringBuilder(str2).reverse().toString();
        } else {
            str4 = "";
            str3 = intern;
        }
        boolean equals = AFInAppEventType(new StringBuilder(str3).reverse().toString(), aFb1sSDK.AFInAppEventType, "android", "v1", str4).equals(str);
        return new AFb1mSDK(equals, equals ? AFe1rSDK.SUCCESS : AFe1rSDK.FAILURE);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0034  */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.appsflyer.internal.AFb1mSDK AFInAppEventType(@androidx.annotation.NonNull com.appsflyer.internal.AFb1sSDK r6, @androidx.annotation.Nullable java.lang.String r7, @androidx.annotation.NonNull java.lang.String r8, @androidx.annotation.NonNull java.lang.String r9) {
        /*
            r5 = this;
            r0 = 1
            r1 = 0
            if (r6 == 0) goto L6
            r2 = 1
            goto L7
        L6:
            r2 = 0
        L7:
            r3 = 0
            if (r2 == r0) goto Lb
            goto L29
        Lb:
            if (r8 == 0) goto L29
            int r2 = com.appsflyer.internal.AFd1rSDK.values
            int r2 = r2 + 43
            int r4 = r2 % 128
            com.appsflyer.internal.AFd1rSDK.AFKeystoreWrapper = r4
            int r2 = r2 % 2
            r4 = 37
            if (r2 != 0) goto L1e
            r2 = 37
            goto L20
        L1e:
            r2 = 76
        L20:
            if (r2 == r4) goto L26
            if (r9 == 0) goto L29
            r2 = 1
            goto L2a
        L26:
            throw r3     // Catch: java.lang.Throwable -> L27
        L27:
            r6 = move-exception
            throw r6
        L29:
            r2 = 0
        L2a:
            if (r2 != 0) goto L34
            com.appsflyer.internal.AFb1mSDK r6 = new com.appsflyer.internal.AFb1mSDK
            com.appsflyer.internal.AFe1rSDK r7 = com.appsflyer.internal.AFe1rSDK.INTERNAL_ERROR
            r6.<init>(r1, r7)
            return r6
        L34:
            com.appsflyer.internal.AFb1mSDK r6 = AFKeystoreWrapper(r6, r7, r8, r9)
            int r7 = com.appsflyer.internal.AFd1rSDK.values
            int r7 = r7 + 57
            int r8 = r7 % 128
            com.appsflyer.internal.AFd1rSDK.AFKeystoreWrapper = r8
            int r7 = r7 % 2
            if (r7 != 0) goto L45
            goto L46
        L45:
            r0 = 0
        L46:
            if (r0 != 0) goto L49
            return r6
        L49:
            throw r3     // Catch: java.lang.Throwable -> L4a
        L4a:
            r6 = move-exception
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1rSDK.AFInAppEventType(com.appsflyer.internal.AFb1sSDK, java.lang.String, java.lang.String, java.lang.String):com.appsflyer.internal.AFb1mSDK");
    }

    @VisibleForTesting
    private static String AFInAppEventType(String str, String str2, String str3, String str4, String str5) {
        int i9 = AFKeystoreWrapper + 47;
        values = i9 % 128;
        int i10 = i9 % 2;
        String AFInAppEventType2 = AFb1rSDK.AFInAppEventType(AFb1rSDK.AFInAppEventType(str2, str3, str4, str5, ""), str);
        if ((AFInAppEventType2.length() < 12 ? 'W' : 'I') != 'W') {
            return AFInAppEventType2.substring(0, 12);
        }
        int i11 = values;
        int i12 = i11 + 71;
        AFKeystoreWrapper = i12 % 128;
        if (!(i12 % 2 != 0)) {
            int i13 = 80 / 0;
        }
        int i14 = i11 + 109;
        AFKeystoreWrapper = i14 % 128;
        if (i14 % 2 == 0) {
            int i15 = 31 / 0;
            return AFInAppEventType2;
        }
        return AFInAppEventType2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r10 = r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String AFInAppEventType(char r6, java.lang.String r7, java.lang.String r8, int r9, java.lang.String r10) {
        /*
            if (r10 == 0) goto L6
            char[] r10 = r10.toCharArray()
        L6:
            char[] r10 = (char[]) r10
            if (r8 == 0) goto Le
            char[] r8 = r8.toCharArray()
        Le:
            char[] r8 = (char[]) r8
            if (r7 == 0) goto L16
            char[] r7 = r7.toCharArray()
        L16:
            char[] r7 = (char[]) r7
            java.lang.Object r0 = com.appsflyer.internal.AFf1ySDK.valueOf
            monitor-enter(r0)
            java.lang.Object r7 = r7.clone()     // Catch: java.lang.Throwable -> L87
            char[] r7 = (char[]) r7     // Catch: java.lang.Throwable -> L87
            java.lang.Object r8 = r8.clone()     // Catch: java.lang.Throwable -> L87
            char[] r8 = (char[]) r8     // Catch: java.lang.Throwable -> L87
            r1 = 0
            char r2 = r7[r1]     // Catch: java.lang.Throwable -> L87
            r6 = r6 ^ r2
            char r6 = (char) r6     // Catch: java.lang.Throwable -> L87
            r7[r1] = r6     // Catch: java.lang.Throwable -> L87
            r6 = 2
            char r2 = r8[r6]     // Catch: java.lang.Throwable -> L87
            char r9 = (char) r9     // Catch: java.lang.Throwable -> L87
            int r2 = r2 + r9
            char r9 = (char) r2     // Catch: java.lang.Throwable -> L87
            r8[r6] = r9     // Catch: java.lang.Throwable -> L87
            int r6 = r10.length     // Catch: java.lang.Throwable -> L87
            char[] r9 = new char[r6]     // Catch: java.lang.Throwable -> L87
            com.appsflyer.internal.AFf1ySDK.AFKeystoreWrapper = r1     // Catch: java.lang.Throwable -> L87
        L3b:
            int r1 = com.appsflyer.internal.AFf1ySDK.AFKeystoreWrapper     // Catch: java.lang.Throwable -> L87
            if (r1 >= r6) goto L80
            int r2 = r1 + 2
            int r2 = r2 % 4
            int r3 = r1 + 3
            int r3 = r3 % 4
            int r1 = r1 % 4
            char r1 = r7[r1]     // Catch: java.lang.Throwable -> L87
            int r1 = r1 * 32718
            char r4 = r8[r2]     // Catch: java.lang.Throwable -> L87
            int r1 = r1 + r4
            r4 = 65535(0xffff, float:9.1834E-41)
            int r1 = r1 % r4
            char r1 = (char) r1     // Catch: java.lang.Throwable -> L87
            com.appsflyer.internal.AFf1ySDK.AFInAppEventType = r1     // Catch: java.lang.Throwable -> L87
            char r5 = r7[r3]     // Catch: java.lang.Throwable -> L87
            int r5 = r5 * 32718
            char r2 = r8[r2]     // Catch: java.lang.Throwable -> L87
            int r5 = r5 + r2
            int r5 = r5 / r4
            char r2 = (char) r5     // Catch: java.lang.Throwable -> L87
            r8[r3] = r2     // Catch: java.lang.Throwable -> L87
            r7[r3] = r1     // Catch: java.lang.Throwable -> L87
            int r1 = com.appsflyer.internal.AFf1ySDK.AFKeystoreWrapper     // Catch: java.lang.Throwable -> L87
            char r2 = r10[r1]     // Catch: java.lang.Throwable -> L87
            char r3 = r7[r3]     // Catch: java.lang.Throwable -> L87
            r2 = r2 ^ r3
            long r2 = (long) r2     // Catch: java.lang.Throwable -> L87
            long r4 = com.appsflyer.internal.AFd1rSDK.AFInAppEventType     // Catch: java.lang.Throwable -> L87
            long r2 = r2 ^ r4
            int r4 = com.appsflyer.internal.AFd1rSDK.AFInAppEventParameterName     // Catch: java.lang.Throwable -> L87
            long r4 = (long) r4     // Catch: java.lang.Throwable -> L87
            long r2 = r2 ^ r4
            char r4 = com.appsflyer.internal.AFd1rSDK.valueOf     // Catch: java.lang.Throwable -> L87
            long r4 = (long) r4     // Catch: java.lang.Throwable -> L87
            long r2 = r2 ^ r4
            int r3 = (int) r2     // Catch: java.lang.Throwable -> L87
            char r2 = (char) r3     // Catch: java.lang.Throwable -> L87
            r9[r1] = r2     // Catch: java.lang.Throwable -> L87
            int r1 = r1 + 1
            com.appsflyer.internal.AFf1ySDK.AFKeystoreWrapper = r1     // Catch: java.lang.Throwable -> L87
            goto L3b
        L80:
            java.lang.String r6 = new java.lang.String     // Catch: java.lang.Throwable -> L87
            r6.<init>(r9)     // Catch: java.lang.Throwable -> L87
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L87
            return r6
        L87:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFd1rSDK.AFInAppEventType(char, java.lang.String, java.lang.String, int, java.lang.String):java.lang.String");
    }
}
