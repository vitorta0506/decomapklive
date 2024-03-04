package io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes5.dex */
abstract class e<E> extends g<E> {

    /* renamed from: f  reason: collision with root package name */
    private static final AtomicLongFieldUpdater<e> f45144f = AtomicLongFieldUpdater.newUpdater(e.class, com.huawei.hms.opendevice.c.f27627a);

    /* renamed from: c  reason: collision with root package name */
    private volatile long f45145c;

    /* renamed from: d  reason: collision with root package name */
    protected long f45146d;

    /* renamed from: e  reason: collision with root package name */
    protected AtomicReferenceArray<E> f45147e;

    @Override // vg.j.a
    public final long f() {
        return this.f45145c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long n() {
        return this.f45145c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void u(long j10) {
        f45144f.lazySet(this, j10);
    }
}
