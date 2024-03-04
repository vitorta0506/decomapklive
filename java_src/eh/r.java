package eh;

import eh.j1;
import java.util.Objects;
/* loaded from: classes5.dex */
final class r extends j1.c {

    /* renamed from: a  reason: collision with root package name */
    private final int f39133a;

    /* renamed from: b  reason: collision with root package name */
    private final j1.c.a f39134b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(int i9, j1.c.a aVar) {
        this.f39133a = i9;
        Objects.requireNonNull(aVar, "Null denominatorType");
        this.f39134b = aVar;
    }

    @Override // eh.j1.c
    j1.c.a b() {
        return this.f39134b;
    }

    @Override // eh.j1.c
    int c() {
        return this.f39133a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j1.c) {
            j1.c cVar = (j1.c) obj;
            return this.f39133a == cVar.c() && this.f39134b.equals(cVar.b());
        }
        return false;
    }

    public int hashCode() {
        return ((this.f39133a ^ 1000003) * 1000003) ^ this.f39134b.hashCode();
    }

    public String toString() {
        return "FractionalPercent{numerator=" + this.f39133a + ", denominatorType=" + this.f39134b + "}";
    }
}
