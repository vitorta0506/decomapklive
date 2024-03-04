package ug;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
public final class s extends d implements v {

    /* renamed from: o  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f58495o = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(s.class);

    /* renamed from: p  reason: collision with root package name */
    private static final long f58496p = TimeUnit.SECONDS.toNanos(1);

    /* renamed from: q  reason: collision with root package name */
    public static final s f58497q = new s();

    /* renamed from: h  reason: collision with root package name */
    final BlockingQueue<Runnable> f58498h = new LinkedBlockingQueue();

    /* renamed from: i  reason: collision with root package name */
    final e0<Void> f58499i;

    /* renamed from: j  reason: collision with root package name */
    final ThreadFactory f58500j;

    /* renamed from: k  reason: collision with root package name */
    private final c f58501k;

    /* renamed from: l  reason: collision with root package name */
    private final AtomicBoolean f58502l;

    /* renamed from: m  reason: collision with root package name */
    volatile Thread f58503m;

    /* renamed from: n  reason: collision with root package name */
    private final q<?> f58504n;

    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements PrivilegedAction<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Thread f58506a;

        b(Thread thread) {
            this.f58506a = thread;
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public Void run() {
            this.f58506a.setContextClassLoader(null);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public final class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                Runnable R = s.this.R();
                if (R != null) {
                    try {
                        R.run();
                    } catch (Throwable th2) {
                        s.f58495o.warn("Unexpected exception from the global event executor: ", th2);
                    }
                    if (R != s.this.f58499i) {
                        continue;
                    }
                }
                s sVar = s.this;
                io.grpc.netty.shaded.io.netty.util.internal.v<e0<?>> vVar = sVar.f58430d;
                if (sVar.f58498h.isEmpty() && (vVar == null || vVar.size() == 1)) {
                    s.this.f58502l.compareAndSet(true, false);
                    if (s.this.f58498h.isEmpty() || !s.this.f58502l.compareAndSet(false, true)) {
                        return;
                    }
                }
            }
        }
    }

    private s() {
        Callable callable = Executors.callable(new a(), null);
        long j10 = f58496p;
        e0<Void> e0Var = new e0<>(this, callable, e0.y0(j10), -j10);
        this.f58499i = e0Var;
        this.f58501k = new c();
        this.f58502l = new AtomicBoolean();
        this.f58504n = new m(this, new UnsupportedOperationException());
        J().add(e0Var);
        this.f58500j = io.grpc.netty.shaded.io.netty.util.internal.d0.d(new i(i.b(s.class), false, 5, null), this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void O(Runnable runnable) {
        this.f58498h.add(io.grpc.netty.shaded.io.netty.util.internal.s.h(runnable, "task"));
    }

    private void P() {
        long y10 = d.y();
        Runnable F = F(y10);
        while (F != null) {
            this.f58498h.add(F);
            F = F(y10);
        }
    }

    private void Q() {
        if (this.f58502l.compareAndSet(false, true)) {
            Thread newThread = this.f58500j.newThread(this.f58501k);
            AccessController.doPrivileged(new b(newThread));
            this.f58503m = newThread;
            newThread.start();
        }
    }

    @Override // ug.j
    public boolean L0(Thread thread) {
        return thread == this.f58503m;
    }

    Runnable R() {
        Runnable runnable;
        BlockingQueue<Runnable> blockingQueue = this.f58498h;
        do {
            e0<?> B = B();
            runnable = null;
            if (B == null) {
                try {
                    return blockingQueue.take();
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            long A0 = B.A0();
            if (A0 > 0) {
                try {
                    runnable = blockingQueue.poll(A0, TimeUnit.NANOSECONDS);
                } catch (InterruptedException unused2) {
                    return null;
                }
            }
            if (runnable == null) {
                P();
                runnable = blockingQueue.poll();
                continue;
            }
        } while (runnable == null);
        return runnable;
    }

    @Override // ug.l
    public q<?> T() {
        return this.f58504n;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j10, TimeUnit timeUnit) {
        return false;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        O((Runnable) io.grpc.netty.shaded.io.netty.util.internal.s.h(runnable, "task"));
        if (Y()) {
            return;
        }
        Q();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return false;
    }

    @Override // ug.a, java.util.concurrent.ExecutorService, ug.l
    @Deprecated
    public void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // ug.l
    public q<?> z0(long j10, long j11, TimeUnit timeUnit) {
        return T();
    }
}
