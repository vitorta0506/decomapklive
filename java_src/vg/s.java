package vg;
/* loaded from: classes5.dex */
abstract class s<E> extends o<E> {

    /* renamed from: d  reason: collision with root package name */
    private static final long f59172d = wg.c.a(s.class, "producerIndex");

    /* renamed from: c  reason: collision with root package name */
    private volatile long f59173c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(int i9) {
        super(i9);
    }

    @Override // vg.j.a
    public final long d() {
        return this.f59173c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g(long j10, long j11) {
        return wg.c.f59503c.compareAndSwapLong(this, f59172d, j10, j11);
    }
}
