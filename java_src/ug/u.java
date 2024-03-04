package ug;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import ug.k;
/* loaded from: classes5.dex */
public abstract class u extends b {

    /* renamed from: a  reason: collision with root package name */
    private final j[] f58510a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<j> f58511b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicInteger f58512c;

    /* renamed from: d  reason: collision with root package name */
    private final x<?> f58513d;

    /* renamed from: e  reason: collision with root package name */
    private final k.a f58514e;

    /* loaded from: classes5.dex */
    class a implements r {
        a() {
        }

        @Override // ug.r
        public void e(q<Object> qVar) throws Exception {
            if (u.this.f58512c.incrementAndGet() == u.this.f58510a.length) {
                u.this.f58513d.m0(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public u(int i9, ThreadFactory threadFactory, Object... objArr) {
        this(i9, threadFactory == null ? null : new g0(threadFactory), objArr);
    }

    @Override // ug.l
    public q<?> T() {
        return this.f58513d;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
        j[] jVarArr;
        long nanoTime;
        long nanoTime2 = System.nanoTime() + timeUnit.toNanos(j10);
        loop0: for (j jVar : this.f58510a) {
            do {
                nanoTime = nanoTime2 - System.nanoTime();
                if (nanoTime <= 0) {
                    break loop0;
                }
            } while (!jVar.awaitTermination(nanoTime, TimeUnit.NANOSECONDS));
        }
        return isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        for (j jVar : this.f58510a) {
            if (!jVar.isShutdown()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        for (j jVar : this.f58510a) {
            if (!jVar.isTerminated()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.Iterable
    public Iterator<j> iterator() {
        return this.f58511b.iterator();
    }

    protected abstract j m(Executor executor, Object... objArr) throws Exception;

    protected abstract ThreadFactory n();

    @Override // ug.l, io.grpc.netty.shaded.io.netty.channel.m0
    public j next() {
        return this.f58514e.next();
    }

    @Override // ug.b, ug.l
    @Deprecated
    public void shutdown() {
        for (j jVar : this.f58510a) {
            jVar.shutdown();
        }
    }

    @Override // ug.l
    public q<?> z0(long j10, long j11, TimeUnit timeUnit) {
        for (j jVar : this.f58510a) {
            jVar.z0(j10, j11, timeUnit);
        }
        return T();
    }

    protected u(int i9, Executor executor, Object... objArr) {
        this(i9, executor, f.f58438a, objArr);
    }

    protected u(int i9, Executor executor, k kVar, Object... objArr) {
        this.f58512c = new AtomicInteger();
        this.f58513d = new h(s.f58497q);
        io.grpc.netty.shaded.io.netty.util.internal.s.l(i9, "nThreads");
        executor = executor == null ? new g0(n()) : executor;
        this.f58510a = new j[i9];
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            try {
                try {
                    this.f58510a[i11] = m(executor, objArr);
                } catch (Exception e10) {
                    throw new IllegalStateException("failed to create a child event loop", e10);
                }
            } catch (Throwable th2) {
                for (int i12 = 0; i12 < i11; i12++) {
                    this.f58510a[i12].l0();
                }
                while (i10 < i11) {
                    j jVar = this.f58510a[i10];
                    while (!jVar.isTerminated()) {
                        try {
                            jVar.awaitTermination(2147483647L, TimeUnit.SECONDS);
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw th2;
                        }
                    }
                    i10++;
                }
                throw th2;
            }
        }
        this.f58514e = kVar.a(this.f58510a);
        a aVar = new a();
        j[] jVarArr = this.f58510a;
        int length = jVarArr.length;
        while (i10 < length) {
            jVarArr[i10].T().c(aVar);
            i10++;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(this.f58510a.length);
        Collections.addAll(linkedHashSet, this.f58510a);
        this.f58511b = Collections.unmodifiableSet(linkedHashSet);
    }
}
