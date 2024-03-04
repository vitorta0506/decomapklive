package cn.jiguang.ax;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private final int f2217a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadPoolExecutor f2218b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f2219c;

    /* renamed from: e  reason: collision with root package name */
    private final cn.jiguang.ax.a<Object> f2221e;

    /* renamed from: g  reason: collision with root package name */
    private Object f2223g;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f2220d = new AtomicBoolean(true);

    /* renamed from: f  reason: collision with root package name */
    private volatile long f2222f = 0;

    /* renamed from: h  reason: collision with root package name */
    private CountDownLatch f2224h = new CountDownLatch(1);

    /* loaded from: classes.dex */
    static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final ExecutorService f2226a;

        a(ExecutorService executorService) {
            super(p.c());
            this.f2226a = executorService;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                if (this.f2226a.isShutdown()) {
                    cn.jiguang.as.d.g("Step", "executor is shutdown");
                } else {
                    this.f2226a.submit((Callable) message.obj);
                }
            } catch (Throwable th2) {
                cn.jiguang.as.d.i("Step", "handleMessage e:" + th2);
            }
        }
    }

    public p(int i9, int i10, cn.jiguang.ax.a<Object> aVar, String str) {
        this.f2217a = i10;
        this.f2221e = aVar;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i9, i9, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new cn.jiguang.bg.c(str)) { // from class: cn.jiguang.ax.p.1
            /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
                if (r1.f2225a.f2219c.hasMessages(233) == false) goto L9;
             */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0025 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
            @Override // java.util.concurrent.ThreadPoolExecutor
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected void afterExecute(java.lang.Runnable r2, java.lang.Throwable r3) {
                /*
                    r1 = this;
                    r2 = 1
                    int r3 = r1.getActiveCount()     // Catch: java.lang.Throwable -> L22
                    if (r3 > r2) goto L20
                    java.util.concurrent.BlockingQueue r3 = r1.getQueue()     // Catch: java.lang.Throwable -> L22
                    boolean r3 = r3.isEmpty()     // Catch: java.lang.Throwable -> L22
                    if (r3 == 0) goto L20
                    cn.jiguang.ax.p r3 = cn.jiguang.ax.p.this     // Catch: java.lang.Throwable -> L22
                    android.os.Handler r3 = cn.jiguang.ax.p.a(r3)     // Catch: java.lang.Throwable -> L22
                    r0 = 233(0xe9, float:3.27E-43)
                    boolean r3 = r3.hasMessages(r0)     // Catch: java.lang.Throwable -> L22
                    if (r3 != 0) goto L20
                    goto L22
                L20:
                    r3 = 0
                    goto L23
                L22:
                    r3 = 1
                L23:
                    if (r3 == 0) goto L37
                    cn.jiguang.ax.p r3 = cn.jiguang.ax.p.this     // Catch: java.lang.Throwable -> L37
                    java.util.concurrent.atomic.AtomicBoolean r3 = cn.jiguang.ax.p.b(r3)     // Catch: java.lang.Throwable -> L37
                    r3.set(r2)     // Catch: java.lang.Throwable -> L37
                    cn.jiguang.ax.p r2 = cn.jiguang.ax.p.this     // Catch: java.lang.Throwable -> L37
                    java.util.concurrent.CountDownLatch r2 = cn.jiguang.ax.p.c(r2)     // Catch: java.lang.Throwable -> L37
                    r2.countDown()     // Catch: java.lang.Throwable -> L37
                L37:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.ax.p.AnonymousClass1.afterExecute(java.lang.Runnable, java.lang.Throwable):void");
            }
        };
        this.f2218b = threadPoolExecutor;
        this.f2219c = new a(threadPoolExecutor);
    }

    private synchronized long b(long j10) {
        long j11 = this.f2222f + j10;
        long uptimeMillis = SystemClock.uptimeMillis();
        if (j11 < uptimeMillis) {
            this.f2222f = uptimeMillis;
            return -1L;
        }
        this.f2222f = j11;
        return j11;
    }

    static /* synthetic */ Looper c() {
        return d();
    }

    private static Looper d() {
        HandlerThread handlerThread = new HandlerThread("jg_step_thread") { // from class: cn.jiguang.ax.p.2
            @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    super.run();
                } catch (Throwable unused) {
                }
            }
        };
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        return looper == null ? Looper.getMainLooper() : looper;
    }

    public synchronized Object a(long j10) {
        if (a()) {
            return this.f2223g;
        } else if (this.f2220d.get()) {
            return null;
        } else {
            try {
                if (j10 != -1) {
                    this.f2224h.await(j10, TimeUnit.MILLISECONDS);
                } else {
                    this.f2224h.await();
                }
            } catch (InterruptedException unused) {
            }
            if (this.f2224h.getCount() == 0) {
                this.f2224h = new CountDownLatch(1);
            }
            return this.f2223g;
        }
    }

    public void a(Object obj) {
        if (a() || obj == null) {
            return;
        }
        this.f2223g = obj;
        this.f2224h.countDown();
        cn.jiguang.ax.a<Object> aVar = this.f2221e;
        if (aVar != null) {
            aVar.a(obj);
        }
        a(true);
        cn.jiguang.as.d.c("Step", "done!");
    }

    public void a(Callable<?> callable) {
        try {
            long b10 = b(this.f2217a);
            if (b10 < 0) {
                this.f2218b.submit(callable);
            } else {
                Message obtain = Message.obtain();
                obtain.what = 233;
                obtain.obj = callable;
                this.f2219c.sendMessageAtTime(obtain, b10);
            }
            this.f2220d.set(false);
        } catch (Throwable unused) {
        }
    }

    public void a(boolean z10) {
        this.f2219c.removeMessages(233);
        if (!this.f2218b.isShutdown()) {
            if (z10) {
                this.f2218b.shutdownNow();
            } else {
                this.f2218b.shutdown();
            }
        }
        try {
            this.f2219c.getLooper().quit();
        } catch (Throwable unused) {
        }
        cn.jiguang.as.d.c("Step", "StepParallelScheduler stop !");
    }

    public boolean a() {
        return this.f2223g != null;
    }

    public void b() {
        try {
            ThreadPoolExecutor threadPoolExecutor = this.f2218b;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.getQueue().clear();
                this.f2219c.removeMessages(233);
            }
        } catch (Throwable th2) {
            Log.w("Step", "clean executor e:" + th2);
        }
    }
}
