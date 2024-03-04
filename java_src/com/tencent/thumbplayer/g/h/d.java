package com.tencent.thumbplayer.g.h;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Handler f34110a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private static final ExecutorService f34111b = Executors.newCachedThreadPool();

    /* renamed from: c  reason: collision with root package name */
    private static final HandlerThread f34112c;

    /* renamed from: d  reason: collision with root package name */
    private static Handler f34113d;

    static {
        HandlerThread handlerThread = new HandlerThread("tmediacodec-sub");
        f34112c = handlerThread;
        handlerThread.start();
        f34113d = new Handler(handlerThread.getLooper());
    }

    public static void a(@NonNull Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            f34111b.execute(runnable);
        } else {
            runnable.run();
        }
    }

    public static void b(@NonNull Runnable runnable) {
        f34113d.post(runnable);
    }
}
