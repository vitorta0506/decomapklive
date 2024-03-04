package io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.d;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50056a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50057b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50058c = Descriptors.FileDescriptor.s(new String[]{"\n$envoy/service/discovery/v2/ads.proto\u0012\u001aenvoy.service.discovery.v2\u001a\u001cenvoy/api/v2/discovery.proto\u001a\u001dudpa/annotations/status.proto\"\n\n\bAdsDummy2í\u0001\n\u001aAggregatedDiscoveryService\u0012b\n\u0019StreamAggregatedResources\u0012\u001e.envoy.api.v2.DiscoveryRequest\u001a\u001f.envoy.api.v2.DiscoveryResponse\"\u0000(\u00010\u0001\u0012k\n\u0018DeltaAggregatedResources\u0012#.envoy.api.v2.DeltaDiscoveryRequest\u001a$.envoy.api.v2.DeltaDiscoveryResponse\"\u0000(\u00010\u0001BA\n(io.envoyproxy.envoy.service.discovery.v2B\bAdsProtoP\u0001\u0088\u0001\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{d.a(), Status.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50056a = bVar;
        f50057b = new GeneratedMessageV3.e(bVar, new String[0]);
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        Descriptors.FileDescriptor.u(f50058c, k10);
        d.a();
        Status.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f50058c;
    }
}
