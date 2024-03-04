package v;
/* loaded from: classes.dex */
public class o extends s {

    /* renamed from: b  reason: collision with root package name */
    private int f58592b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(int i9, h hVar) {
        super(hVar);
        this.f58592b = i9;
    }

    @Override // v.s, v.h
    public boolean a(u.a aVar) {
        return super.a(aVar) || aVar.F() >= this.f58592b;
    }
}
