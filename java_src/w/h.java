package w;
/* loaded from: classes.dex */
class h extends l {

    /* renamed from: b  reason: collision with root package name */
    private int f59259b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(n nVar, int i9) {
        super(nVar);
        this.f59259b = i9;
    }

    @Override // w.l, w.n
    public boolean b(u.a aVar) {
        return super.b(aVar) && aVar.I() > aVar.q() + this.f59259b;
    }
}
