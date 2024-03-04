package eh;

import eh.j1;
import java.util.Objects;
/* loaded from: classes5.dex */
final class q extends j1.b {

    /* renamed from: a  reason: collision with root package name */
    private final Long f39101a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f39102b;

    /* renamed from: c  reason: collision with root package name */
    private final j1.c f39103c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(Long l10, boolean z10, j1.c cVar) {
        this.f39101a = l10;
        this.f39102b = z10;
        Objects.requireNonNull(cVar, "Null percent");
        this.f39103c = cVar;
    }

    @Override // eh.j1.b
    Long b() {
        return this.f39101a;
    }

    @Override // eh.j1.b
    boolean e() {
        return this.f39102b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j1.b) {
            j1.b bVar = (j1.b) obj;
            Long l10 = this.f39101a;
            if (l10 != null ? l10.equals(bVar.b()) : bVar.b() == null) {
                if (this.f39102b == bVar.e() && this.f39103c.equals(bVar.f())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // eh.j1.b
    j1.c f() {
        return this.f39103c;
    }

    public int hashCode() {
        Long l10 = this.f39101a;
        return (((((l10 == null ? 0 : l10.hashCode()) ^ 1000003) * 1000003) ^ (this.f39102b ? 1231 : 1237)) * 1000003) ^ this.f39103c.hashCode();
    }

    public String toString() {
        return "FaultDelay{delayNanos=" + this.f39101a + ", headerDelay=" + this.f39102b + ", percent=" + this.f39103c + "}";
    }
}
