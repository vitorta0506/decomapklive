package com.tencent.liteav.base.util;

import android.os.Looper;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final ThreadPoolExecutor f31008a;

    /* renamed from: b  reason: collision with root package name */
    final CustomHandler f31009b;

    /* renamed from: c  reason: collision with root package name */
    final Map<Runnable, a> f31010c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        final Runnable f31011a;

        /* renamed from: b  reason: collision with root package name */
        final Runnable f31012b = o.a(this);

        /* renamed from: c  reason: collision with root package name */
        final long f31013c;

        public a(Runnable runnable, long j10) {
            this.f31011a = n.a(this, runnable);
            this.f31013c = j10;
        }
    }

    public j() {
        this(60);
    }

    public final void a(int i9) {
        this.f31008a.setKeepAliveTime(i9, TimeUnit.SECONDS);
    }

    public final void b(Runnable runnable) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f31008a.execute(l.a(runnable, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    public final void c(Runnable runnable) {
        a remove;
        if (runnable == null) {
            return;
        }
        this.f31008a.remove(runnable);
        synchronized (this) {
            remove = this.f31010c.remove(runnable);
        }
        if (remove != null) {
            j.this.f31009b.removeCallbacks(remove.f31012b);
            j.this.f31008a.remove(remove.f31011a);
        }
    }

    public j(int i9) {
        this(i9, "SequenceTaskRunner_");
    }

    public final void a(Runnable runnable) {
        this.f31008a.execute(runnable);
    }

    public j(int i9, String str) {
        this.f31008a = new ThreadPoolExecutor(0, 1, i9, TimeUnit.SECONDS, new LinkedBlockingQueue(), k.a(str));
        this.f31009b = new CustomHandler(Looper.getMainLooper());
        this.f31010c = new HashMap();
    }

    public final void a(Runnable runnable, long j10) {
        a aVar = new a(runnable, j10);
        synchronized (this) {
            this.f31010c.put(runnable, aVar);
        }
        j.this.f31009b.postDelayed(aVar.f31012b, aVar.f31013c);
    }
}
