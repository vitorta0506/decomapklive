package vg;
/* loaded from: classes5.dex */
abstract class c<E> extends e<E> {

    /* renamed from: f  reason: collision with root package name */
    private static final long f59157f = wg.c.a(c.class, "consumerIndex");

    /* renamed from: c  reason: collision with root package name */
    private volatile long f59158c;

    /* renamed from: d  reason: collision with root package name */
    protected long f59159d;

    /* renamed from: e  reason: collision with root package name */
    protected E[] f59160e;

    @Override // vg.j.a
    public final long f() {
        return this.f59158c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long n() {
        return wg.c.f59503c.getLong(this, f59157f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void u(long j10) {
        wg.c.f59503c.putOrderedLong(this, f59157f, j10);
    }
}
