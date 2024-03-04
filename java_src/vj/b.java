package vj;
/* loaded from: classes7.dex */
public class b extends a {

    /* renamed from: b  reason: collision with root package name */
    private c f59179b;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(boolean z10, c cVar) {
        super(z10);
        this.f59179b = cVar;
    }

    public c b() {
        return this.f59179b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            c cVar = this.f59179b;
            c b10 = ((b) obj).b();
            return cVar == null ? b10 == null : cVar.equals(b10);
        }
        return false;
    }

    public int hashCode() {
        int i9 = !a();
        c cVar = this.f59179b;
        return cVar != null ? i9 ^ cVar.hashCode() : i9;
    }
}
