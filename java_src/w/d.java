package w;
/* loaded from: classes.dex */
class d extends l {

    /* renamed from: b  reason: collision with root package name */
    private int f59256b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(n nVar, int i9) {
        super(nVar);
        this.f59256b = i9;
    }

    @Override // w.l, w.n
    public boolean b(u.a aVar) {
        return super.b(aVar) && aVar.K() > aVar.n() + this.f59256b;
    }
}
