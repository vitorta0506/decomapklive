package w;
/* loaded from: classes.dex */
class j extends l {

    /* renamed from: b  reason: collision with root package name */
    private int f59260b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(n nVar, int i9) {
        super(nVar);
        this.f59260b = i9;
    }

    @Override // w.l, w.n
    public boolean b(u.a aVar) {
        return super.b(aVar) && aVar.H() < aVar.l() - this.f59260b;
    }
}
