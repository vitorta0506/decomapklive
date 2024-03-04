package vg;
/* loaded from: classes5.dex */
abstract class b<E> extends f<E> {

    /* renamed from: j  reason: collision with root package name */
    private static final long f59153j = wg.c.a(b.class, "producerLimit");

    /* renamed from: g  reason: collision with root package name */
    private volatile long f59154g;

    /* renamed from: h  reason: collision with root package name */
    protected long f59155h;

    /* renamed from: i  reason: collision with root package name */
    protected E[] f59156i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean x(long j10, long j11) {
        return wg.c.f59503c.compareAndSwapLong(this, f59153j, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long y() {
        return this.f59154g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void z(long j10) {
        wg.c.f59503c.putOrderedLong(this, f59153j, j10);
    }
}
