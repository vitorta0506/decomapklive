package com.google.android.gms.internal.recaptcha;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes2.dex */
public final class h2 {

    /* renamed from: a  reason: collision with root package name */
    private static Thread f8722a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile Handler f8723b;

    public static Handler a() {
        if (f8723b == null) {
            f8723b = new Handler(Looper.getMainLooper());
        }
        return f8723b;
    }

    public static boolean b() {
        if (f8722a == null) {
            f8722a = Looper.getMainLooper().getThread();
        }
        return Thread.currentThread() == f8722a;
    }
}
