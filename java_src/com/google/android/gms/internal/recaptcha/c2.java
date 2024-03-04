package com.google.android.gms.internal.recaptcha;

import android.os.Build;
import android.os.UserManager;
import androidx.annotation.GuardedBy;
/* loaded from: classes2.dex */
public final class c2 {
    @GuardedBy("DirectBootUtils.class")

    /* renamed from: a  reason: collision with root package name */
    private static UserManager f8545a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f8546b = !b();

    private c2() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x003d, code lost:
        if (r3.isUserRunning(android.os.Process.myUserHandle()) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003f, code lost:
        r7 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r7) {
        /*
            boolean r0 = b()
            r1 = 1
            if (r0 == 0) goto L5e
            boolean r0 = com.google.android.gms.internal.recaptcha.c2.f8546b
            if (r0 == 0) goto Lc
            goto L5e
        Lc:
            java.lang.Class<com.google.android.gms.internal.recaptcha.c2> r0 = com.google.android.gms.internal.recaptcha.c2.class
            monitor-enter(r0)
            boolean r2 = com.google.android.gms.internal.recaptcha.c2.f8546b     // Catch: java.lang.Throwable -> L5b
            if (r2 == 0) goto L15
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5b
            goto L5e
        L15:
            r2 = 1
        L16:
            r3 = 2
            r4 = 0
            r5 = 0
            if (r2 > r3) goto L4e
            android.os.UserManager r3 = com.google.android.gms.internal.recaptcha.c2.f8545a     // Catch: java.lang.Throwable -> L5b
            if (r3 != 0) goto L29
            java.lang.Class<android.os.UserManager> r3 = android.os.UserManager.class
            java.lang.Object r3 = r7.getSystemService(r3)     // Catch: java.lang.Throwable -> L5b
            android.os.UserManager r3 = (android.os.UserManager) r3     // Catch: java.lang.Throwable -> L5b
            com.google.android.gms.internal.recaptcha.c2.f8545a = r3     // Catch: java.lang.Throwable -> L5b
        L29:
            android.os.UserManager r3 = com.google.android.gms.internal.recaptcha.c2.f8545a     // Catch: java.lang.Throwable -> L5b
            if (r3 != 0) goto L2f
            r7 = 1
            goto L53
        L2f:
            boolean r6 = r3.isUserUnlocked()     // Catch: java.lang.NullPointerException -> L41 java.lang.Throwable -> L5b
            if (r6 != 0) goto L3f
            android.os.UserHandle r6 = android.os.Process.myUserHandle()     // Catch: java.lang.NullPointerException -> L41 java.lang.Throwable -> L5b
            boolean r7 = r3.isUserRunning(r6)     // Catch: java.lang.NullPointerException -> L41 java.lang.Throwable -> L5b
            if (r7 != 0) goto L4e
        L3f:
            r7 = 1
            goto L4f
        L41:
            r3 = move-exception
            java.lang.String r5 = "DirectBootUtils"
            java.lang.String r6 = "Failed to check if user is unlocked."
            android.util.Log.w(r5, r6, r3)     // Catch: java.lang.Throwable -> L5b
            com.google.android.gms.internal.recaptcha.c2.f8545a = r4     // Catch: java.lang.Throwable -> L5b
            int r2 = r2 + 1
            goto L16
        L4e:
            r7 = 0
        L4f:
            if (r7 == 0) goto L53
            com.google.android.gms.internal.recaptcha.c2.f8545a = r4     // Catch: java.lang.Throwable -> L5b
        L53:
            if (r7 == 0) goto L57
            com.google.android.gms.internal.recaptcha.c2.f8546b = r1     // Catch: java.lang.Throwable -> L5b
        L57:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5b
            if (r7 != 0) goto L5e
            return r5
        L5b:
            r7 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5b
            throw r7
        L5e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.recaptcha.c2.a(android.content.Context):boolean");
    }

    public static boolean b() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
