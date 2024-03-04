package eh;

import io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext;
import java.util.Objects;
/* loaded from: classes5.dex */
public abstract class b1 {

    /* renamed from: a  reason: collision with root package name */
    protected final CommonTlsContext f38696a;

    /* JADX INFO: Access modifiers changed from: protected */
    public b1(CommonTlsContext commonTlsContext) {
        this.f38696a = commonTlsContext;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b1) {
            return Objects.equals(this.f38696a, ((b1) obj).f38696a);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.f38696a);
    }
}
