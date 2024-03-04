package eh;

import eh.p2;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class i0 extends p2.g {

    /* renamed from: a  reason: collision with root package name */
    private final n1 f38793a;

    /* renamed from: b  reason: collision with root package name */
    private final h1 f38794b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i0(n1 n1Var, h1 h1Var) {
        this.f38793a = n1Var;
        this.f38794b = h1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2.g
    public n1 c() {
        return this.f38793a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // eh.p2.g
    public h1 d() {
        return this.f38794b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p2.g) {
            p2.g gVar = (p2.g) obj;
            n1 n1Var = this.f38793a;
            if (n1Var != null ? n1Var.equals(gVar.c()) : gVar.c() == null) {
                h1 h1Var = this.f38794b;
                if (h1Var == null) {
                    if (gVar.d() == null) {
                        return true;
                    }
                } else if (h1Var.equals(gVar.d())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        n1 n1Var = this.f38793a;
        int hashCode = ((n1Var == null ? 0 : n1Var.hashCode()) ^ 1000003) * 1000003;
        h1 h1Var = this.f38794b;
        return hashCode ^ (h1Var != null ? h1Var.hashCode() : 0);
    }

    public String toString() {
        return "LdsUpdate{httpConnectionManager=" + this.f38793a + ", listener=" + this.f38794b + "}";
    }
}
