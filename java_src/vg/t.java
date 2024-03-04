package vg;
/* loaded from: classes5.dex */
abstract class t<E> extends r<E> {

    /* renamed from: f  reason: collision with root package name */
    private static final long f59174f = wg.c.a(t.class, "producerLimit");

    /* renamed from: e  reason: collision with root package name */
    private volatile long f59175e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(int i9) {
        super(i9);
        this.f59175e = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long m() {
        return this.f59175e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n(long j10) {
        wg.c.f59503c.putOrderedLong(this, f59174f, j10);
    }
}
