package eh;

import eh.l1;
import io.grpc.n0;
import java.util.concurrent.ScheduledExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public enum d2 implements l1, l1.a, l1.d {
    INSTANCE;
    

    /* renamed from: b  reason: collision with root package name */
    static final l1.b f38726b = new l1.b() { // from class: eh.d2.a
        @Override // eh.l1.b
        public String a() {
            return "type.googleapis.com/envoy.extensions.filters.http.router.v3.Router";
        }

        public String toString() {
            return "ROUTER_CONFIG";
        }
    };

    @Override // eh.l1
    public String[] a() {
        return new String[]{"type.googleapis.com/envoy.extensions.filters.http.router.v3.Router"};
    }

    @Override // eh.l1.a
    public io.grpc.h b(l1.b bVar, l1.b bVar2, n0.f fVar, ScheduledExecutorService scheduledExecutorService) {
        return null;
    }

    @Override // eh.l1
    public w0<? extends l1.b> c(com.google.protobuf.l1 l1Var) {
        return w0.b("Router Filter should not have override config");
    }

    @Override // eh.l1
    public w0<? extends l1.b> d(com.google.protobuf.l1 l1Var) {
        return w0.a(f38726b);
    }
}
