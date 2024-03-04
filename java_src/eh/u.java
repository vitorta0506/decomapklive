package eh;
/* loaded from: classes5.dex */
final class u extends x1 {

    /* renamed from: a  reason: collision with root package name */
    private final hh.q f39343a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(hh.q qVar) {
        this.f39343a = qVar;
    }

    @Override // eh.x1
    hh.q b() {
        return this.f39343a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof x1) {
            hh.q qVar = this.f39343a;
            hh.q b10 = ((x1) obj).b();
            return qVar == null ? b10 == null : qVar.equals(b10);
        }
        return false;
    }

    public int hashCode() {
        hh.q qVar = this.f39343a;
        return (qVar == null ? 0 : qVar.hashCode()) ^ 1000003;
    }

    public String toString() {
        return "RbacConfig{authConfig=" + this.f39343a + "}";
    }
}
