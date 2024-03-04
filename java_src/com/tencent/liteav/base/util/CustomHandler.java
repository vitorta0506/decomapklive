package com.tencent.liteav.base.util;

import android.os.Handler;
import android.os.Looper;
import android.os.MessageQueue;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class CustomHandler extends Handler {

    /* renamed from: b  reason: collision with root package name */
    private static final long f30983b = TimeUnit.SECONDS.toMillis(30);

    /* renamed from: a  reason: collision with root package name */
    private final String f30984a;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f30985c;

    /* renamed from: d  reason: collision with root package name */
    private Runnable f30986d;

    public CustomHandler(Looper looper) {
        this(looper, null);
    }

    public final boolean a(Runnable runnable) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        boolean post = post(b.a(runnable, countDownLatch));
        if (post) {
            try {
                countDownLatch.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        return post;
    }

    public CustomHandler(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        this.f30985c = new Handler(Looper.getMainLooper());
        this.f30986d = new Runnable() { // from class: com.tencent.liteav.base.util.CustomHandler.1
            @Override // java.lang.Runnable
            public final void run() {
                LiteavLog.e(CustomHandler.this.f30984a, "quit looper failed.");
            }
        };
        String str = "TXCHandler_" + hashCode();
        this.f30984a = str;
        LiteavLog.i(str, "[" + Thread.currentThread().getName() + "]");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(Runnable runnable, CountDownLatch countDownLatch) {
        runnable.run();
        countDownLatch.countDown();
    }

    public final boolean a(Runnable runnable, long j10) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        boolean post = post(c.a(runnable, countDownLatch));
        if (post) {
            try {
                countDownLatch.await(j10, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        return post;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(Runnable runnable, CountDownLatch countDownLatch) {
        runnable.run();
        countDownLatch.countDown();
    }

    public final boolean a(Runnable runnable, int i9) {
        if (getLooper().getThread().isAlive()) {
            if (Looper.myLooper() == getLooper() && i9 == 0) {
                runnable.run();
                return true;
            } else if (i9 == 0) {
                return post(runnable);
            } else {
                return postDelayed(runnable, i9);
            }
        }
        return false;
    }

    public final void a() {
        post(e.a(this, d.a(this)));
        this.f30985c.postDelayed(this.f30986d, f30983b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean a(CustomHandler customHandler) {
        LiteavLog.i(customHandler.f30984a, "queue idle handle.");
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 18) {
            customHandler.getLooper().quitSafely();
        } else {
            customHandler.getLooper().quit();
        }
        customHandler.f30985c.removeCallbacks(customHandler.f30986d);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(CustomHandler customHandler, MessageQueue.IdleHandler idleHandler) {
        if (customHandler.getLooper() == Looper.getMainLooper()) {
            LiteavLog.e(customHandler.f30984a, "try to quitLooper main looper!");
            return;
        }
        LiteavLog.i(customHandler.f30984a, "add idle handle.");
        Looper.myQueue().addIdleHandler(idleHandler);
    }
}
