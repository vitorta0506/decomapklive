package vg;
/* loaded from: classes5.dex */
abstract class g<E> extends d<E> {

    /* renamed from: b  reason: collision with root package name */
    private static final long f59161b = wg.c.a(g.class, "producerIndex");

    /* renamed from: a  reason: collision with root package name */
    private volatile long f59162a;

    @Override // vg.j.a
    public final long d() {
        return this.f59162a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g(long j10, long j11) {
        return wg.c.f59503c.compareAndSwapLong(this, f59161b, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m(long j10) {
        wg.c.f59503c.putOrderedLong(this, f59161b, j10);
    }
}
