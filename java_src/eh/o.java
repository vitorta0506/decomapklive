package eh;

import eh.j1;
/* loaded from: classes5.dex */
final class o extends j1 {

    /* renamed from: a  reason: collision with root package name */
    private final j1.b f38996a;

    /* renamed from: b  reason: collision with root package name */
    private final j1.a f38997b;

    /* renamed from: c  reason: collision with root package name */
    private final Integer f38998c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(j1.b bVar, j1.a aVar, Integer num) {
        this.f38996a = bVar;
        this.f38997b = aVar;
        this.f38998c = num;
    }

    @Override // eh.j1
    j1.a c() {
        return this.f38997b;
    }

    @Override // eh.j1
    j1.b d() {
        return this.f38996a;
    }

    @Override // eh.j1
    Integer e() {
        return this.f38998c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j1) {
            j1 j1Var = (j1) obj;
            j1.b bVar = this.f38996a;
            if (bVar != null ? bVar.equals(j1Var.d()) : j1Var.d() == null) {
                j1.a aVar = this.f38997b;
                if (aVar != null ? aVar.equals(j1Var.c()) : j1Var.c() == null) {
                    Integer num = this.f38998c;
                    if (num == null) {
                        if (j1Var.e() == null) {
                            return true;
                        }
                    } else if (num.equals(j1Var.e())) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        j1.b bVar = this.f38996a;
        int hashCode = ((bVar == null ? 0 : bVar.hashCode()) ^ 1000003) * 1000003;
        j1.a aVar = this.f38997b;
        int hashCode2 = (hashCode ^ (aVar == null ? 0 : aVar.hashCode())) * 1000003;
        Integer num = this.f38998c;
        return hashCode2 ^ (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "FaultConfig{faultDelay=" + this.f38996a + ", faultAbort=" + this.f38997b + ", maxActiveFaults=" + this.f38998c + "}";
    }
}
