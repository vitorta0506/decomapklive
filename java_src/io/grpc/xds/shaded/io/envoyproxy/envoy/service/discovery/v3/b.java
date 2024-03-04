package io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3;

import io.grpc.MethodDescriptor;
import io.grpc.stub.b;
import io.grpc.stub.e;
import io.grpc.stub.h;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile MethodDescriptor<DiscoveryRequest, DiscoveryResponse> f50116a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class a implements b.a<d> {
        a() {
        }

        @Override // io.grpc.stub.b.a
        /* renamed from: b */
        public d a(io.grpc.d dVar, io.grpc.c cVar) {
            return new d(dVar, cVar, null);
        }
    }

    /* renamed from: io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    private static abstract class AbstractC0500b {
        AbstractC0500b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static final class c extends AbstractC0500b {

        /* renamed from: a  reason: collision with root package name */
        private final String f50117a;

        c(String str) {
            this.f50117a = str;
        }
    }

    /* loaded from: classes6.dex */
    public static final class d extends io.grpc.stub.a<d> {
        /* synthetic */ d(io.grpc.d dVar, io.grpc.c cVar, a aVar) {
            this(dVar, cVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.stub.b
        /* renamed from: h */
        public d a(io.grpc.d dVar, io.grpc.c cVar) {
            return new d(dVar, cVar);
        }

        public h<DiscoveryRequest> i(h<DiscoveryResponse> hVar) {
            return e.a(c().i(b.a(), b()), hVar);
        }

        private d(io.grpc.d dVar, io.grpc.c cVar) {
            super(dVar, cVar);
        }
    }

    private b() {
    }

    public static MethodDescriptor<DiscoveryRequest, DiscoveryResponse> a() {
        MethodDescriptor<DiscoveryRequest, DiscoveryResponse> methodDescriptor = f50116a;
        if (methodDescriptor == null) {
            synchronized (b.class) {
                methodDescriptor = f50116a;
                if (methodDescriptor == null) {
                    methodDescriptor = MethodDescriptor.h().g(MethodDescriptor.MethodType.BIDI_STREAMING).b(MethodDescriptor.b("envoy.service.discovery.v3.AggregatedDiscoveryService", "StreamAggregatedResources")).e(true).c(zg.a.a(DiscoveryRequest.getDefaultInstance())).d(zg.a.a(DiscoveryResponse.getDefaultInstance())).f(new c("StreamAggregatedResources")).a();
                    f50116a = methodDescriptor;
                }
            }
        }
        return methodDescriptor;
    }

    public static d b(io.grpc.d dVar) {
        return (d) io.grpc.stub.a.f(new a(), dVar);
    }
}
