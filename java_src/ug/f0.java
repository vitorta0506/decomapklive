package ug;

import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes5.dex */
public abstract class f0 extends d implements v {

    /* renamed from: h  reason: collision with root package name */
    private final Queue<Runnable> f58446h;

    /* renamed from: i  reason: collision with root package name */
    private volatile Thread f58447i;

    /* renamed from: j  reason: collision with root package name */
    private volatile h0 f58448j;

    /* renamed from: k  reason: collision with root package name */
    private final Executor f58449k;

    /* renamed from: l  reason: collision with root package name */
    private volatile boolean f58450l;

    /* renamed from: m  reason: collision with root package name */
    private final CountDownLatch f58451m;

    /* renamed from: n  reason: collision with root package name */
    private final Set<Runnable> f58452n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f58453o;

    /* renamed from: p  reason: collision with root package name */
    private final int f58454p;

    /* renamed from: q  reason: collision with root package name */
    private final b0 f58455q;

    /* renamed from: r  reason: collision with root package name */
    private long f58456r;

    /* renamed from: s  reason: collision with root package name */
    private volatile int f58457s;

    /* renamed from: t  reason: collision with root package name */
    private volatile long f58458t;

    /* renamed from: u  reason: collision with root package name */
    private volatile long f58459u;

    /* renamed from: v  reason: collision with root package name */
    private long f58460v;

    /* renamed from: w  reason: collision with root package name */
    private final x<?> f58461w;

    /* renamed from: x  reason: collision with root package name */
    static final int f58443x = Math.max(16, io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.eventexecutor.maxPendingTasks", Integer.MAX_VALUE));

    /* renamed from: y  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f58444y = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(f0.class);

    /* renamed from: z  reason: collision with root package name */
    private static final Runnable f58445z = new a();
    private static final AtomicIntegerFieldUpdater<f0> A = AtomicIntegerFieldUpdater.newUpdater(f0.class, NotifyType.SOUND);
    private static final AtomicReferenceFieldUpdater<f0, h0> B = AtomicReferenceFieldUpdater.newUpdater(f0.class, h0.class, "j");
    private static final long C = TimeUnit.SECONDS.toNanos(1);

    /* loaded from: classes5.dex */
    static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {
        b() {
        }

        /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
            jadx.core.utils.exceptions.JadxRuntimeException: CFG modification limit reached, blocks count: 272
            	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:59)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
            */
        @Override // java.lang.Runnable
        public void run() {
            /*
                Method dump skipped, instructions count: 1190
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: ug.f0.b.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public f0(l lVar, Executor executor, boolean z10, Queue<Runnable> queue, b0 b0Var) {
        super(lVar);
        this.f58451m = new CountDownLatch(1);
        this.f58452n = new LinkedHashSet();
        this.f58457s = 1;
        this.f58461w = new h(s.f58497q);
        this.f58453o = z10;
        this.f58454p = f58443x;
        this.f58449k = io.grpc.netty.shaded.io.netty.util.internal.d0.c(executor, this);
        this.f58446h = (Queue) io.grpc.netty.shaded.io.netty.util.internal.s.h(queue, "taskQueue");
        this.f58455q = (b0) io.grpc.netty.shaded.io.netty.util.internal.s.h(b0Var, "rejectedHandler");
    }

    protected static void A0() {
        throw new RejectedExecutionException("event executor terminated");
    }

    static /* synthetic */ Thread M(f0 f0Var) {
        return f0Var.f58447i;
    }

    static /* synthetic */ Thread N(f0 f0Var, Thread thread) {
        f0Var.f58447i = thread;
        return thread;
    }

    static /* synthetic */ boolean O(f0 f0Var) {
        return f0Var.f58450l;
    }

    static /* synthetic */ io.grpc.netty.shaded.io.netty.util.internal.logging.b P() {
        return f58444y;
    }

    static /* synthetic */ int Q(f0 f0Var) {
        return f0Var.f58457s;
    }

    private boolean Q0() {
        boolean z10 = false;
        while (!this.f58452n.isEmpty()) {
            ArrayList<Runnable> arrayList = new ArrayList(this.f58452n);
            this.f58452n.clear();
            for (Runnable runnable : arrayList) {
                try {
                    runnable.run();
                } finally {
                    z10 = true;
                }
                z10 = true;
            }
        }
        if (z10) {
            this.f58456r = e0.B0();
        }
        return z10;
    }

    static /* synthetic */ AtomicIntegerFieldUpdater R() {
        return A;
    }

    private void R0() {
        if (this.f58457s == 1 && A.compareAndSet(this, 1, 2)) {
            try {
                m0();
            } catch (Throwable th2) {
                A.compareAndSet(this, 2, 1);
                throw th2;
            }
        }
    }

    static /* synthetic */ long S(f0 f0Var) {
        return f0Var.f58460v;
    }

    private void S0(String str) {
        if (Y()) {
            throw new RejectedExecutionException("Calling " + str + " from within the EventLoop is not allowed");
        }
    }

    static /* synthetic */ CountDownLatch a0(f0 f0Var) {
        return f0Var.f58451m;
    }

    static /* synthetic */ x b0(f0 f0Var) {
        return f0Var.f58461w;
    }

    private void m0() {
        this.f58449k.execute(new b());
    }

    private boolean o0(int i9) {
        if (i9 == 1) {
            try {
                m0();
                return false;
            } catch (Throwable th2) {
                A.set(this, 5);
                this.f58461w.z(th2);
                if (!(th2 instanceof Exception)) {
                    io.grpc.netty.shaded.io.netty.util.internal.t.R0(th2);
                }
                return true;
            }
        }
        return false;
    }

    private void p0(Runnable runnable, boolean z10) {
        boolean Y = Y();
        c0(runnable);
        if (!Y) {
            R0();
            if (isShutdown()) {
                boolean z11 = false;
                try {
                    z11 = E0(runnable);
                } catch (UnsupportedOperationException unused) {
                }
                if (z11) {
                    A0();
                }
            }
        }
        if (this.f58453o || !z10) {
            return;
        }
        Y0(Y);
    }

    private boolean q0() {
        Runnable F;
        io.grpc.netty.shaded.io.netty.util.internal.v<e0<?>> vVar = this.f58430d;
        if (vVar == null || vVar.isEmpty()) {
            return true;
        }
        long y10 = d.y();
        do {
            F = F(y10);
            if (F == null) {
                return true;
            }
        } while (this.f58446h.offer(F));
        this.f58430d.add((e0) F);
        return false;
    }

    protected static Runnable y0(Queue<Runnable> queue) {
        Runnable poll;
        do {
            poll = queue.poll();
        } while (poll == d.f58429g);
        return poll;
    }

    protected final void C0(Runnable runnable) {
        this.f58455q.a(runnable, this);
    }

    protected boolean E0(Runnable runnable) {
        return this.f58446h.remove(io.grpc.netty.shaded.io.netty.util.internal.s.h(runnable, "task"));
    }

    protected abstract void F0();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean G0() {
        boolean q02;
        boolean z10 = false;
        do {
            q02 = q0();
            if (P0(this.f58446h)) {
                z10 = true;
                continue;
            }
        } while (!q02);
        if (z10) {
            this.f58456r = e0.B0();
        }
        e0();
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean H0(long j10) {
        long B0;
        q0();
        Runnable w02 = w0();
        if (w02 == null) {
            e0();
            return false;
        }
        long B02 = j10 > 0 ? e0.B0() + j10 : 0L;
        long j11 = 0;
        while (true) {
            ug.a.f(w02);
            j11++;
            if ((63 & j11) == 0) {
                B0 = e0.B0();
                if (B0 >= B02) {
                    break;
                }
            }
            w02 = w0();
            if (w02 == null) {
                B0 = e0.B0();
                break;
            }
        }
        e0();
        this.f58456r = B0;
        return true;
    }

    @Override // ug.j
    public boolean L0(Thread thread) {
        return thread == this.f58447i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean P0(Queue<Runnable> queue) {
        Runnable y02 = y0(queue);
        if (y02 == null) {
            return false;
        }
        do {
            ug.a.f(y02);
            y02 = y0(queue);
        } while (y02 != null);
        return true;
    }

    @Override // ug.l
    public q<?> T() {
        return this.f58461w;
    }

    protected void T0() {
        this.f58456r = e0.B0();
    }

    protected boolean X0(Runnable runnable) {
        return true;
    }

    protected void Y0(boolean z10) {
        if (z10) {
            return;
        }
        this.f58446h.offer(d.f58429g);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(timeUnit, "unit");
        if (!Y()) {
            this.f58451m.await(j10, timeUnit);
            return isTerminated();
        }
        throw new IllegalStateException("cannot await termination of the current thread");
    }

    protected void c0(Runnable runnable) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(runnable, "task");
        if (v0(runnable)) {
            return;
        }
        C0(runnable);
    }

    @Override // ug.a
    public void d(Runnable runnable) {
        p0((Runnable) io.grpc.netty.shaded.io.netty.util.internal.s.h(runnable, "task"), false);
    }

    protected void e0() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(runnable, "task");
        p0(runnable, X0(runnable));
    }

    protected void f0() {
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        S0("invokeAll");
        return super.invokeAll(collection);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        S0("invokeAny");
        return (T) super.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f58457s >= 4;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f58457s == 5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean k0() {
        if (u0()) {
            if (Y()) {
                n();
                if (this.f58460v == 0) {
                    this.f58460v = e0.B0();
                }
                if (!G0() && !Q0()) {
                    long B0 = e0.B0();
                    if (isShutdown() || B0 - this.f58460v > this.f58459u || B0 - this.f58456r > this.f58458t) {
                        return true;
                    }
                    this.f58446h.offer(d.f58429g);
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException unused) {
                    }
                    return false;
                } else if (isShutdown() || this.f58458t == 0) {
                    return true;
                } else {
                    this.f58446h.offer(d.f58429g);
                    return false;
                }
            }
            throw new IllegalStateException("must be invoked from an event loop");
        }
        return false;
    }

    final int n0() {
        int i9 = 0;
        while (true) {
            Runnable poll = this.f58446h.poll();
            if (poll == null) {
                return i9;
            }
            if (d.f58429g != poll) {
                i9++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean s0() {
        return !this.f58446h.isEmpty();
    }

    @Override // ug.a, java.util.concurrent.ExecutorService, ug.l
    @Deprecated
    public void shutdown() {
        if (isShutdown()) {
            return;
        }
        boolean Y = Y();
        while (!u0()) {
            int i9 = this.f58457s;
            int i10 = 4;
            boolean z10 = true;
            if (!Y && i9 != 1 && i9 != 2 && i9 != 3) {
                z10 = false;
                i10 = i9;
            }
            if (A.compareAndSet(this, i9, i10)) {
                if (!o0(i9) && z10) {
                    this.f58446h.offer(d.f58429g);
                    if (this.f58453o) {
                        return;
                    }
                    Y0(Y);
                    return;
                }
                return;
            }
        }
    }

    public boolean u0() {
        return this.f58457s >= 3;
    }

    final boolean v0(Runnable runnable) {
        if (isShutdown()) {
            A0();
        }
        return this.f58446h.offer(runnable);
    }

    protected Runnable w0() {
        return y0(this.f58446h);
    }

    @Override // ug.l
    public q<?> z0(long j10, long j11, TimeUnit timeUnit) {
        io.grpc.netty.shaded.io.netty.util.internal.s.o(j10, "quietPeriod");
        if (j11 >= j10) {
            io.grpc.netty.shaded.io.netty.util.internal.s.h(timeUnit, "unit");
            if (u0()) {
                return T();
            }
            boolean Y = Y();
            while (!u0()) {
                int i9 = this.f58457s;
                int i10 = 3;
                boolean z10 = true;
                if (!Y && i9 != 1 && i9 != 2) {
                    z10 = false;
                    i10 = i9;
                }
                if (A.compareAndSet(this, i9, i10)) {
                    this.f58458t = timeUnit.toNanos(j10);
                    this.f58459u = timeUnit.toNanos(j11);
                    if (o0(i9)) {
                        return this.f58461w;
                    }
                    if (z10) {
                        this.f58446h.offer(d.f58429g);
                        if (!this.f58453o) {
                            Y0(Y);
                        }
                    }
                    return T();
                }
            }
            return T();
        }
        throw new IllegalArgumentException("timeout: " + j11 + " (expected >= quietPeriod (" + j10 + "))");
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException {
        S0("invokeAll");
        return super.invokeAll(collection, j10, timeUnit);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        S0("invokeAny");
        return (T) super.invokeAny(collection, j10, timeUnit);
    }
}
