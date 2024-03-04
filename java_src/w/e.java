package w;
/* loaded from: classes.dex */
class e implements n {

    /* renamed from: a  reason: collision with root package name */
    private boolean f59257a;

    @Override // w.n
    public boolean b(u.a aVar) {
        boolean z10 = this.f59257a || aVar.K() >= aVar.n();
        this.f59257a = z10;
        return z10;
    }
}
