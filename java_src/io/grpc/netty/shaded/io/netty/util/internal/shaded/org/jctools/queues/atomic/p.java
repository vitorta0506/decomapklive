package io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
/* loaded from: classes5.dex */
abstract class p<E> extends l<E> {

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicLongFieldUpdater<p> f45152d = AtomicLongFieldUpdater.newUpdater(p.class, com.huawei.hms.opendevice.c.f27627a);

    /* renamed from: c  reason: collision with root package name */
    private volatile long f45153c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(int i9) {
        super(i9);
    }

    @Override // vg.j.a
    public final long d() {
        return this.f45153c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g(long j10, long j11) {
        return f45152d.compareAndSet(this, j10, j11);
    }
}
