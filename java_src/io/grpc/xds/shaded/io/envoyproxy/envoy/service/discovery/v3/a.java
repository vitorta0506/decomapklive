package io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50113a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50114b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50115c = Descriptors.FileDescriptor.s(new String[]{"\n$envoy/service/discovery/v3/ads.proto\u0012\u001aenvoy.service.discovery.v3\u001a*envoy/service/discovery/v3/discovery.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\"6\n\bAdsDummy:*\u009aÅ\u0088\u001e%\n#envoy.service.discovery.v2.AdsDummy2¦\u0002\n\u001aAggregatedDiscoveryService\u0012~\n\u0019StreamAggregatedResources\u0012,.envoy.service.discovery.v3.DiscoveryRequest\u001a-.envoy.service.discovery.v3.DiscoveryResponse\"\u0000(\u00010\u0001\u0012\u0087\u0001\n\u0018DeltaAggregatedResources\u00121.envoy.service.discovery.v3.DeltaDiscoveryRequest\u001a2.envoy.service.discovery.v3.DeltaDiscoveryResponse\"\u0000(\u00010\u0001BA\n(io.envoyproxy.envoy.service.discovery.v3B\bAdsProtoP\u0001\u0088\u0001\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{c.a(), Status.c(), Versioning.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50113a = bVar;
        f50114b = new GeneratedMessageV3.e(bVar, new String[0]);
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        Descriptors.FileDescriptor.u(f50115c, k10);
        c.a();
        Status.c();
        Versioning.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f50115c;
    }
}
