package com.meizu.cloud.pushsdk.d.b.a;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static ExecutorService f28559a = null;

    /* renamed from: b  reason: collision with root package name */
    private static int f28560b = 2;

    public static ExecutorService a() {
        synchronized (b.class) {
            if (f28559a == null) {
                f28559a = Executors.newScheduledThreadPool(f28560b);
            }
        }
        return f28559a;
    }

    public static Future a(Callable callable) {
        return a().submit(callable);
    }

    public static void a(int i9) {
        f28560b = i9;
    }

    public static void a(Runnable runnable) {
        a().execute(runnable);
    }
}
