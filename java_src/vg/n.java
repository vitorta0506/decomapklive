package vg;
/* loaded from: classes5.dex */
abstract class n<E> extends p<E> {

    /* renamed from: h  reason: collision with root package name */
    private static final long f59170h = wg.c.a(n.class, "consumerIndex");

    /* renamed from: g  reason: collision with root package name */
    private volatile long f59171g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(int i9) {
        super(i9);
    }

    @Override // vg.j.a
    public final long f() {
        return this.f59171g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long u() {
        return wg.c.f59503c.getLong(this, f59170h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void x(long j10) {
        wg.c.f59503c.putOrderedLong(this, f59170h, j10);
    }
}
