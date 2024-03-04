package eh;

import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext;
import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.UpstreamTlsContext;
/* loaded from: classes5.dex */
public final class i1 extends b1 {
    public i1(CommonTlsContext commonTlsContext) {
        super(commonTlsContext);
    }

    public static i1 a(UpstreamTlsContext upstreamTlsContext) {
        return new i1(upstreamTlsContext.getCommonTlsContext());
    }

    public String toString() {
        return "UpstreamTlsContext{commonTlsContext=" + this.f38696a + '}';
    }
}
