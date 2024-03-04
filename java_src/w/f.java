package w;
/* loaded from: classes.dex */
class f extends l {

    /* renamed from: b  reason: collision with root package name */
    private int f59258b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(n nVar, int i9) {
        super(nVar);
        this.f59258b = i9;
    }

    @Override // w.l, w.n
    public boolean b(u.a aVar) {
        return super.b(aVar) && aVar.J() < aVar.c() - this.f59258b;
    }
}
