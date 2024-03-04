package eh;

import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class e1 extends b1 {

    /* renamed from: b  reason: collision with root package name */
    private final boolean f38735b;

    public e1(CommonTlsContext commonTlsContext, boolean z10) {
        super(commonTlsContext);
        this.f38735b = z10;
    }

    public static e1 a(DownstreamTlsContext downstreamTlsContext) {
        return new e1(downstreamTlsContext.getCommonTlsContext(), downstreamTlsContext.hasRequireClientCertificate());
    }

    @Override // eh.b1
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && e1.class == obj.getClass() && super.equals(obj) && this.f38735b == ((e1) obj).f38735b;
    }

    @Override // eh.b1
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), Boolean.valueOf(this.f38735b));
    }

    public String toString() {
        return "DownstreamTlsContext{commonTlsContext=" + this.f38696a + ", requireClientCertificate=" + this.f38735b + '}';
    }
}
