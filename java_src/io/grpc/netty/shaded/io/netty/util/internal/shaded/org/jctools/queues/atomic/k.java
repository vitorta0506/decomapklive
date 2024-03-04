package io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
/* loaded from: classes5.dex */
abstract class k<E> extends m<E> {

    /* renamed from: h  reason: collision with root package name */
    private static final AtomicLongFieldUpdater<k> f45150h = AtomicLongFieldUpdater.newUpdater(k.class, "g");

    /* renamed from: g  reason: collision with root package name */
    private volatile long f45151g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(int i9) {
        super(i9);
    }

    @Override // vg.j.a
    public final long f() {
        return this.f45151g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long u() {
        return this.f45151g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void x(long j10) {
        f45150h.lazySet(this, j10);
    }
}
