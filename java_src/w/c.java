package w;
/* loaded from: classes.dex */
class c extends l implements u.j {

    /* renamed from: b  reason: collision with root package name */
    private int f59254b;

    /* renamed from: c  reason: collision with root package name */
    private int f59255c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(n nVar, int i9) {
        super(nVar);
        this.f59254b = i9;
    }

    @Override // u.j
    public void a(u.h hVar) {
        if (super.b((u.a) hVar)) {
            this.f59255c++;
        }
    }

    @Override // w.l, w.n
    public boolean b(u.a aVar) {
        aVar.s(this);
        return super.b(aVar) && this.f59255c >= this.f59254b;
    }
}
