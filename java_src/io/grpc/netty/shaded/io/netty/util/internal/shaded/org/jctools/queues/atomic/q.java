package io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
/* loaded from: classes5.dex */
abstract class q<E> extends o<E> {

    /* renamed from: f  reason: collision with root package name */
    private static final AtomicLongFieldUpdater<q> f45154f = AtomicLongFieldUpdater.newUpdater(q.class, com.huawei.hms.push.e.f27721a);

    /* renamed from: e  reason: collision with root package name */
    private volatile long f45155e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(int i9) {
        super(i9);
        this.f45155e = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long m() {
        return this.f45155e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n(long j10) {
        f45154f.lazySet(this, j10);
    }
}
