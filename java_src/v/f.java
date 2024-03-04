package v;
/* loaded from: classes.dex */
class f extends s {

    /* renamed from: b  reason: collision with root package name */
    private i f58591b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(i iVar, h hVar) {
        super(hVar);
        this.f58591b = iVar;
    }

    @Override // v.s, v.h
    public boolean a(u.a aVar) {
        if (super.a(aVar)) {
            return true;
        }
        return aVar.A() != 0 && this.f58591b.a(aVar.A() - 1);
    }
}
