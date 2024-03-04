package hh;
/* loaded from: classes5.dex */
final class e extends s {

    /* renamed from: a  reason: collision with root package name */
    private final fh.j f40774a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(fh.j jVar) {
        this.f40774a = jVar;
    }

    @Override // hh.s
    public fh.j b() {
        return this.f40774a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof s) {
            fh.j jVar = this.f40774a;
            fh.j b10 = ((s) obj).b();
            return jVar == null ? b10 == null : jVar.equals(b10);
        }
        return false;
    }

    public int hashCode() {
        fh.j jVar = this.f40774a;
        return (jVar == null ? 0 : jVar.hashCode()) ^ 1000003;
    }

    public String toString() {
        return "AuthenticatedMatcher{delegate=" + this.f40774a + "}";
    }
}
