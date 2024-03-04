package vg;
/* loaded from: classes5.dex */
abstract class v<E> extends a<E> {

    /* renamed from: m  reason: collision with root package name */
    protected final long f59176m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(int i9, int i10) {
        super(i9);
        wg.b.a(i10, 4, "maxCapacity");
        wg.b.b(wg.a.c(i9), wg.a.c(i10), "initialCapacity");
        this.f59176m = wg.a.c(i10) << 1;
    }
}
