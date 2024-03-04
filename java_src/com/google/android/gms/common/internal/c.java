package com.google.android.gms.common.internal;

import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
/* loaded from: classes2.dex */
public final class c {
    public static void a(@NonNull String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        String valueOf = String.valueOf(Thread.currentThread());
        String valueOf2 = String.valueOf(Looper.getMainLooper().getThread());
        Log.e("Asserts", "checkMainThread: current thread " + valueOf + " IS NOT the main thread " + valueOf2 + "!");
        throw new IllegalStateException(str);
    }

    public static void b(@NonNull String str) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            return;
        }
        String valueOf = String.valueOf(Thread.currentThread());
        String valueOf2 = String.valueOf(Looper.getMainLooper().getThread());
        Log.e("Asserts", "checkNotMainThread: current thread " + valueOf + " IS the main thread " + valueOf2 + "!");
        throw new IllegalStateException(str);
    }

    public static void c(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("null reference");
        }
    }
}
