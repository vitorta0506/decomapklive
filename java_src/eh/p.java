package eh;

import eh.j1;
import io.grpc.Status;
import java.util.Objects;
/* loaded from: classes5.dex */
final class p extends j1.a {

    /* renamed from: a  reason: collision with root package name */
    private final Status f39046a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f39047b;

    /* renamed from: c  reason: collision with root package name */
    private final j1.c f39048c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Status status, boolean z10, j1.c cVar) {
        this.f39046a = status;
        this.f39047b = z10;
        Objects.requireNonNull(cVar, "Null percent");
        this.f39048c = cVar;
    }

    @Override // eh.j1.a
    boolean d() {
        return this.f39047b;
    }

    @Override // eh.j1.a
    j1.c e() {
        return this.f39048c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j1.a) {
            j1.a aVar = (j1.a) obj;
            Status status = this.f39046a;
            if (status != null ? status.equals(aVar.f()) : aVar.f() == null) {
                if (this.f39047b == aVar.d() && this.f39048c.equals(aVar.e())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // eh.j1.a
    Status f() {
        return this.f39046a;
    }

    public int hashCode() {
        Status status = this.f39046a;
        return (((((status == null ? 0 : status.hashCode()) ^ 1000003) * 1000003) ^ (this.f39047b ? 1231 : 1237)) * 1000003) ^ this.f39048c.hashCode();
    }

    public String toString() {
        return "FaultAbort{status=" + this.f39046a + ", headerAbort=" + this.f39047b + ", percent=" + this.f39048c + "}";
    }
}
