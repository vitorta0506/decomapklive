package eh;

import java.util.Objects;
/* loaded from: classes5.dex */
final class i extends y0 {

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.x f38790a;

    /* renamed from: b  reason: collision with root package name */
    private final int f38791b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f38792c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(io.grpc.x xVar, int i9, boolean z10) {
        Objects.requireNonNull(xVar, "Null eag");
        this.f38790a = xVar;
        this.f38791b = i9;
        this.f38792c = z10;
    }

    @Override // eh.y0
    io.grpc.x b() {
        return this.f38790a;
    }

    @Override // eh.y0
    boolean c() {
        return this.f38792c;
    }

    @Override // eh.y0
    int d() {
        return this.f38791b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof y0) {
            y0 y0Var = (y0) obj;
            return this.f38790a.equals(y0Var.b()) && this.f38791b == y0Var.d() && this.f38792c == y0Var.c();
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f38790a.hashCode() ^ 1000003) * 1000003) ^ this.f38791b) * 1000003) ^ (this.f38792c ? 1231 : 1237);
    }

    public String toString() {
        return "LbEndpoint{eag=" + this.f38790a + ", loadBalancingWeight=" + this.f38791b + ", isHealthy=" + this.f38792c + "}";
    }
}
