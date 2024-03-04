package ug;

import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class e0<V> extends a0<V> implements d0<V>, io.grpc.netty.shaded.io.netty.util.internal.w {

    /* renamed from: v  reason: collision with root package name */
    private static final long f58433v = System.nanoTime();

    /* renamed from: r  reason: collision with root package name */
    private long f58434r;

    /* renamed from: s  reason: collision with root package name */
    private long f58435s;

    /* renamed from: t  reason: collision with root package name */
    private final long f58436t;

    /* renamed from: u  reason: collision with root package name */
    private int f58437u;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(d dVar, Runnable runnable, long j10) {
        super(dVar, runnable);
        this.f58437u = -1;
        this.f58435s = j10;
        this.f58436t = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long B0() {
        return System.nanoTime() - f58433v;
    }

    private d C0() {
        return (d) v();
    }

    private static long F0(long j10) {
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalArgumentException("period: 0 (expected: != 0)");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long y0(long j10) {
        long B0 = B0() + j10;
        if (B0 < 0) {
            return Long.MAX_VALUE;
        }
        return B0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long z0(long j10) {
        if (j10 == 0) {
            return 0L;
        }
        return Math.max(0L, j10 - B0());
    }

    public long A0() {
        return z0(x0());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D0() {
        if (this.f58436t == 0) {
            this.f58435s = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0<V> E0(long j10) {
        if (this.f58434r == 0) {
            this.f58434r = j10;
        }
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.w
    public int b(io.grpc.netty.shaded.io.netty.util.internal.g<?> gVar) {
        return this.f58437u;
    }

    @Override // ug.a0, ug.h, ug.q, java.util.concurrent.Future
    public boolean cancel(boolean z10) {
        boolean cancel = super.cancel(z10);
        if (cancel) {
            C0().G(this);
        }
        return cancel;
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(TimeUnit timeUnit) {
        return timeUnit.convert(A0(), TimeUnit.NANOSECONDS);
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.w
    public void h(io.grpc.netty.shaded.io.netty.util.internal.g<?> gVar, int i9) {
        this.f58437u = i9;
    }

    @Override // ug.a0, ug.h
    protected StringBuilder j0() {
        StringBuilder j02 = super.j0();
        j02.setCharAt(j02.length() - 1, ',');
        j02.append(" deadline: ");
        j02.append(this.f58435s);
        j02.append(", period: ");
        j02.append(this.f58436t);
        j02.append(')');
        return j02;
    }

    @Override // ug.a0, java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        try {
            if (A0() > 0) {
                if (isCancelled()) {
                    C0().J().g0(this);
                } else {
                    C0().I(this);
                }
            } else if (this.f58436t == 0) {
                if (u0()) {
                    t0(n0());
                }
            } else if (isCancelled()) {
            } else {
                n0();
                if (v().isShutdown()) {
                    return;
                }
                long j10 = this.f58436t;
                if (j10 > 0) {
                    this.f58435s += j10;
                } else {
                    this.f58435s = B0() - this.f58436t;
                }
                if (isCancelled()) {
                    return;
                }
                C0().J().add(this);
            }
        } catch (Throwable th2) {
            r0(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ug.h
    public j v() {
        return super.v();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean v0(boolean z10) {
        return super.cancel(z10);
    }

    @Override // java.lang.Comparable
    /* renamed from: w0 */
    public int compareTo(Delayed delayed) {
        if (this == delayed) {
            return 0;
        }
        e0 e0Var = (e0) delayed;
        int i9 = ((x0() - e0Var.x0()) > 0L ? 1 : ((x0() - e0Var.x0()) == 0L ? 0 : -1));
        if (i9 < 0) {
            return -1;
        }
        return (i9 <= 0 && this.f58434r < e0Var.f58434r) ? -1 : 1;
    }

    public long x0() {
        return this.f58435s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(d dVar, Runnable runnable, long j10, long j11) {
        super(dVar, runnable);
        this.f58437u = -1;
        this.f58435s = j10;
        this.f58436t = F0(j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(d dVar, Callable<V> callable, long j10, long j11) {
        super(dVar, callable);
        this.f58437u = -1;
        this.f58435s = j10;
        this.f58436t = F0(j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(d dVar, Callable<V> callable, long j10) {
        super(dVar, callable);
        this.f58437u = -1;
        this.f58435s = j10;
        this.f58436t = 0L;
    }
}
