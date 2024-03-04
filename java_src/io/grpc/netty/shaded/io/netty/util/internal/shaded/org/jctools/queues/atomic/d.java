package io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes5.dex */
abstract class d<E> extends h<E> {

    /* renamed from: j  reason: collision with root package name */
    private static final AtomicLongFieldUpdater<d> f45140j = AtomicLongFieldUpdater.newUpdater(d.class, "g");

    /* renamed from: g  reason: collision with root package name */
    private volatile long f45141g;

    /* renamed from: h  reason: collision with root package name */
    protected long f45142h;

    /* renamed from: i  reason: collision with root package name */
    protected AtomicReferenceArray<E> f45143i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean x(long j10, long j11) {
        return f45140j.compareAndSet(this, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long y() {
        return this.f45141g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void z(long j10) {
        f45140j.lazySet(this, j10);
    }
}
