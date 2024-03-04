package io.grpc.netty.shaded.io.netty.util.internal.shaded.org.jctools.queues.atomic;
/* loaded from: classes5.dex */
abstract class s<E> extends c<E> {

    /* renamed from: m  reason: collision with root package name */
    protected final long f45156m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(int i9, int i10) {
        super(i9);
        wg.b.a(i10, 4, "maxCapacity");
        wg.b.b(wg.a.c(i9), wg.a.c(i10), "initialCapacity");
        this.f45156m = wg.a.c(i10) << 1;
    }
}
