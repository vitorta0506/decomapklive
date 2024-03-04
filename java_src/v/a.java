package v;
/* loaded from: classes.dex */
class a extends s {

    /* renamed from: b  reason: collision with root package name */
    private i f58585b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(i iVar, h hVar) {
        super(hVar);
        this.f58585b = iVar;
    }

    @Override // v.s, v.h
    public boolean a(u.a aVar) {
        return super.a(aVar) || this.f58585b.a(aVar.A());
    }
}
