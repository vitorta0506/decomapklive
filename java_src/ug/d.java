package ug;

import java.util.Comparator;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public abstract class d extends ug.a {

    /* renamed from: f  reason: collision with root package name */
    private static final Comparator<e0<?>> f58428f = new a();

    /* renamed from: g  reason: collision with root package name */
    static final Runnable f58429g = new b();

    /* renamed from: d  reason: collision with root package name */
    io.grpc.netty.shaded.io.netty.util.internal.v<e0<?>> f58430d;

    /* renamed from: e  reason: collision with root package name */
    long f58431e;

    /* loaded from: classes5.dex */
    static class a implements Comparator<e0<?>> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(e0<?> e0Var, e0<?> e0Var2) {
            return e0Var.compareTo(e0Var2);
        }
    }

    /* loaded from: classes5.dex */
    static class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d() {
    }

    private <V> d0<V> H(e0<V> e0Var) {
        if (Y()) {
            I(e0Var);
        } else {
            long x02 = e0Var.x0();
            if (m(x02)) {
                execute(e0Var);
            } else {
                d(e0Var);
                if (g(x02)) {
                    execute(f58429g);
                }
            }
        }
        return e0Var;
    }

    private void L(long j10, TimeUnit timeUnit) {
        K(j10, timeUnit);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static long u(long j10) {
        return e0.z0(j10);
    }

    private static boolean x(Queue<e0<?>> queue) {
        return queue == null || queue.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static long y() {
        return e0.B0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final e0<?> B() {
        io.grpc.netty.shaded.io.netty.util.internal.v<e0<?>> vVar = this.f58430d;
        if (vVar != null) {
            return vVar.peek();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Runnable F(long j10) {
        e0<?> B = B();
        if (B == null || B.x0() - j10 > 0) {
            return null;
        }
        this.f58430d.remove();
        B.D0();
        return B;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void G(e0<?> e0Var) {
        if (Y()) {
            J().g0(e0Var);
        } else {
            d(e0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void I(e0<?> e0Var) {
        io.grpc.netty.shaded.io.netty.util.internal.v<e0<?>> J = J();
        long j10 = this.f58431e + 1;
        this.f58431e = j10;
        J.add(e0Var.E0(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public io.grpc.netty.shaded.io.netty.util.internal.v<e0<?>> J() {
        if (this.f58430d == null) {
            this.f58430d = new io.grpc.netty.shaded.io.netty.util.internal.g(f58428f, 11);
        }
        return this.f58430d;
    }

    @Deprecated
    protected void K(long j10, TimeUnit timeUnit) {
    }

    protected boolean g(long j10) {
        return true;
    }

    protected boolean m(long j10) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void n() {
        io.grpc.netty.shaded.io.netty.util.internal.v<e0<?>> vVar = this.f58430d;
        if (x(vVar)) {
            return;
        }
        for (e0 e0Var : (e0[]) vVar.toArray(new e0[0])) {
            e0Var.v0(false);
        }
        vVar.B0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long z() {
        e0<?> B = B();
        if (B != null) {
            return B.x0();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(l lVar) {
        super(lVar);
    }

    @Override // ug.a, java.util.concurrent.ScheduledExecutorService
    public d0<?> scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(runnable, "command");
        io.grpc.netty.shaded.io.netty.util.internal.s.h(timeUnit, "unit");
        if (j10 >= 0) {
            if (j11 > 0) {
                L(j10, timeUnit);
                L(j11, timeUnit);
                return H(new e0(this, runnable, e0.y0(timeUnit.toNanos(j10)), timeUnit.toNanos(j11)));
            }
            throw new IllegalArgumentException(String.format("period: %d (expected: > 0)", Long.valueOf(j11)));
        }
        throw new IllegalArgumentException(String.format("initialDelay: %d (expected: >= 0)", Long.valueOf(j10)));
    }

    @Override // ug.a, java.util.concurrent.ScheduledExecutorService
    public d0<?> scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(runnable, "command");
        io.grpc.netty.shaded.io.netty.util.internal.s.h(timeUnit, "unit");
        if (j10 >= 0) {
            if (j11 > 0) {
                L(j10, timeUnit);
                L(j11, timeUnit);
                return H(new e0(this, runnable, e0.y0(timeUnit.toNanos(j10)), -timeUnit.toNanos(j11)));
            }
            throw new IllegalArgumentException(String.format("delay: %d (expected: > 0)", Long.valueOf(j11)));
        }
        throw new IllegalArgumentException(String.format("initialDelay: %d (expected: >= 0)", Long.valueOf(j10)));
    }

    @Override // ug.a, java.util.concurrent.ScheduledExecutorService
    public d0<?> schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(runnable, "command");
        io.grpc.netty.shaded.io.netty.util.internal.s.h(timeUnit, "unit");
        if (j10 < 0) {
            j10 = 0;
        }
        L(j10, timeUnit);
        return H(new e0(this, runnable, e0.y0(timeUnit.toNanos(j10))));
    }

    @Override // ug.a, java.util.concurrent.ScheduledExecutorService
    public <V> d0<V> schedule(Callable<V> callable, long j10, TimeUnit timeUnit) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(callable, "callable");
        io.grpc.netty.shaded.io.netty.util.internal.s.h(timeUnit, "unit");
        if (j10 < 0) {
            j10 = 0;
        }
        L(j10, timeUnit);
        return H(new e0<>(this, callable, e0.y0(timeUnit.toNanos(j10))));
    }
}
