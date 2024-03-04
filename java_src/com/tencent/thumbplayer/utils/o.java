package com.tencent.thumbplayer.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private static volatile HandlerThread f34485a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile Handler f34486b;

    /* renamed from: c  reason: collision with root package name */
    private static int f34487c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile ExecutorService f34488d;

    /* renamed from: e  reason: collision with root package name */
    private static volatile ExecutorService f34489e;

    /* renamed from: f  reason: collision with root package name */
    private static volatile ScheduledExecutorService f34490f;

    /* renamed from: g  reason: collision with root package name */
    private static volatile o f34491g;

    private o() {
    }

    public static o a() {
        if (f34491g == null) {
            synchronized (o.class) {
                if (f34491g == null) {
                    f34491g = new o();
                }
            }
        }
        return f34491g;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027 A[Catch: all -> 0x003a, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0010, B:11:0x001f, B:13:0x0027, B:14:0x0038, B:8:0x0014, B:10:0x001c), top: B:19:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void f() {
        /*
            java.lang.Class<com.tencent.thumbplayer.utils.o> r0 = com.tencent.thumbplayer.utils.o.class
            monitor-enter(r0)
            android.os.HandlerThread r1 = com.tencent.thumbplayer.utils.o.f34485a     // Catch: java.lang.Throwable -> L3a
            if (r1 != 0) goto L14
            android.os.HandlerThread r1 = new android.os.HandlerThread     // Catch: java.lang.Throwable -> L3a
            java.lang.String r2 = "TP-ShareThreadPool"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L3a
            com.tencent.thumbplayer.utils.o.f34485a = r1     // Catch: java.lang.Throwable -> L3a
        L10:
            r1.start()     // Catch: java.lang.Throwable -> L3a
            goto L1f
        L14:
            android.os.HandlerThread r1 = com.tencent.thumbplayer.utils.o.f34485a     // Catch: java.lang.Throwable -> L3a
            boolean r1 = r1.isAlive()     // Catch: java.lang.Throwable -> L3a
            if (r1 != 0) goto L1f
            android.os.HandlerThread r1 = com.tencent.thumbplayer.utils.o.f34485a     // Catch: java.lang.Throwable -> L3a
            goto L10
        L1f:
            android.os.HandlerThread r1 = com.tencent.thumbplayer.utils.o.f34485a     // Catch: java.lang.Throwable -> L3a
            android.os.Looper r1 = r1.getLooper()     // Catch: java.lang.Throwable -> L3a
            if (r1 != 0) goto L38
            android.os.HandlerThread r1 = com.tencent.thumbplayer.utils.o.f34485a     // Catch: java.lang.Throwable -> L3a
            r1.quit()     // Catch: java.lang.Throwable -> L3a
            android.os.HandlerThread r1 = new android.os.HandlerThread     // Catch: java.lang.Throwable -> L3a
            java.lang.String r2 = "TP-ShareThreadPool"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L3a
            com.tencent.thumbplayer.utils.o.f34485a = r1     // Catch: java.lang.Throwable -> L3a
            r1.start()     // Catch: java.lang.Throwable -> L3a
        L38:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3a
            return
        L3a:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3a
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.utils.o.f():void");
    }

    public HandlerThread a(String str) {
        return a(str, 0);
    }

    public HandlerThread a(String str, int i9) {
        i9 = (i9 >= 19 || i9 <= -19) ? 0 : 0;
        if (TextUtils.isEmpty(str)) {
            str = "TP-HandlerThread";
        }
        HandlerThread handlerThread = new HandlerThread(str, i9);
        handlerThread.start();
        return handlerThread;
    }

    public void a(HandlerThread handlerThread, Handler handler) {
        if (handlerThread == null) {
            return;
        }
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        if (!handlerThread.equals(f34485a)) {
            handlerThread.quit();
            return;
        }
        synchronized (o.class) {
            f34487c--;
            TPLogUtil.i("TPPlayer[TPThreadPool]", "handlerThread recycle mShareThreadCount:" + f34487c);
        }
    }

    public HandlerThread b() {
        HandlerThread handlerThread;
        f();
        synchronized (o.class) {
            f34487c++;
            TPLogUtil.i("TPPlayer[TPThreadPool]", "handlerThread obtainShareThread mShareThreadCount:" + f34487c);
            handlerThread = f34485a;
        }
        return handlerThread;
    }

    public ExecutorService c() {
        if (f34488d == null) {
            synchronized (o.class) {
                if (f34488d == null) {
                    f34488d = Executors.newSingleThreadExecutor();
                }
            }
        }
        return f34488d;
    }

    public ExecutorService d() {
        if (f34489e == null) {
            synchronized (o.class) {
                if (f34489e == null) {
                    f34489e = p.a(4, 20);
                }
            }
        }
        return f34489e;
    }

    public ScheduledExecutorService e() {
        if (f34490f == null) {
            synchronized (o.class) {
                if (f34490f == null) {
                    f34490f = Executors.newScheduledThreadPool(4);
                }
            }
        }
        return f34490f;
    }
}
