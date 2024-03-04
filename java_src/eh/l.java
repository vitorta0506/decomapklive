package eh;

import java.util.Objects;
/* loaded from: classes5.dex */
final class l extends f1 {

    /* renamed from: a  reason: collision with root package name */
    private final String f38849a;

    /* renamed from: b  reason: collision with root package name */
    private final g1 f38850b;

    /* renamed from: c  reason: collision with root package name */
    private final n1 f38851c;

    /* renamed from: d  reason: collision with root package name */
    private final ih.f f38852d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(String str, g1 g1Var, n1 n1Var, ih.f fVar) {
        Objects.requireNonNull(str, "Null name");
        this.f38849a = str;
        Objects.requireNonNull(g1Var, "Null filterChainMatch");
        this.f38850b = g1Var;
        Objects.requireNonNull(n1Var, "Null httpConnectionManager");
        this.f38851c = n1Var;
        this.f38852d = fVar;
    }

    @Override // eh.f1
    g1 b() {
        return this.f38850b;
    }

    @Override // eh.f1
    n1 c() {
        return this.f38851c;
    }

    @Override // eh.f1
    String d() {
        return this.f38849a;
    }

    @Override // eh.f1
    ih.f e() {
        return this.f38852d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f1) {
            f1 f1Var = (f1) obj;
            if (this.f38849a.equals(f1Var.d()) && this.f38850b.equals(f1Var.b()) && this.f38851c.equals(f1Var.c())) {
                ih.f fVar = this.f38852d;
                if (fVar == null) {
                    if (f1Var.e() == null) {
                        return true;
                    }
                } else if (fVar.equals(f1Var.e())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = (((((this.f38849a.hashCode() ^ 1000003) * 1000003) ^ this.f38850b.hashCode()) * 1000003) ^ this.f38851c.hashCode()) * 1000003;
        ih.f fVar = this.f38852d;
        return hashCode ^ (fVar == null ? 0 : fVar.hashCode());
    }

    public String toString() {
        return "FilterChain{name=" + this.f38849a + ", filterChainMatch=" + this.f38850b + ", httpConnectionManager=" + this.f38851c + ", sslContextProviderSupplier=" + this.f38852d + "}";
    }
}
