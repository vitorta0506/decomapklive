package v;
/* loaded from: classes.dex */
class b extends s {

    /* renamed from: b  reason: collision with root package name */
    private s.a f58586b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(s.a aVar, h hVar) {
        super(hVar);
        this.f58586b = aVar;
    }

    @Override // v.s, v.h
    public boolean a(u.a aVar) {
        return super.a(aVar) || this.f58586b.a(aVar.A());
    }
}
