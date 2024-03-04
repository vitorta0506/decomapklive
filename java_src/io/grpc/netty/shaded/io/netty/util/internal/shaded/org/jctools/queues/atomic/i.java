package io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
/* loaded from: classes5.dex */
abstract class i<E> extends f<E> {

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicLongFieldUpdater<i> f45148b = AtomicLongFieldUpdater.newUpdater(i.class, "a");

    /* renamed from: a  reason: collision with root package name */
    private volatile long f45149a;

    @Override // vg.j.a
    public final long d() {
        return this.f45149a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g(long j10, long j11) {
        return f45148b.compareAndSet(this, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m(long j10) {
        f45148b.lazySet(this, j10);
    }
}
