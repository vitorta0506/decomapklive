package m5;

import io.grpc.Status;
import java.util.Objects;
/* loaded from: classes2.dex */
final class b extends f0 {

    /* renamed from: a  reason: collision with root package name */
    private final Status.Code f54793a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Status.Code code) {
        Objects.requireNonNull(code, "Null transportCode");
        this.f54793a = code;
    }

    @Override // m5.f0
    public Status.Code a() {
        return this.f54793a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0) {
            return this.f54793a.equals(((f0) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.f54793a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "GrpcStatusCode{transportCode=" + this.f54793a + "}";
    }
}
