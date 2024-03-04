package com.tencent.tmediacodec.f;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Handler f34626a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private static final ExecutorService f34627b = Executors.newCachedThreadPool();

    /* renamed from: c  reason: collision with root package name */
    private static final HandlerThread f34628c;

    /* renamed from: d  reason: collision with root package name */
    private static final Handler f34629d;

    static {
        HandlerThread handlerThread = new HandlerThread("tmediacodec-sub");
        f34628c = handlerThread;
        handlerThread.start();
        f34629d = new Handler(handlerThread.getLooper());
    }

    public static void a(@NonNull Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            f34627b.execute(runnable);
        } else {
            runnable.run();
        }
    }

    public static void b(@NonNull Runnable runnable) {
        f34627b.execute(runnable);
    }

    public static void c(@NonNull Runnable runnable) {
        f34629d.post(runnable);
    }
}
