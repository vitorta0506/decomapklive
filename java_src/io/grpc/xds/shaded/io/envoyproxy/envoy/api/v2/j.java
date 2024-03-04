package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes5.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46915a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46916b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46917c = Descriptors.FileDescriptor.s(new String[]{"\n\u0016envoy/api/v2/rds.proto\u0012\fenvoy.api.v2\u001a\u001cenvoy/api/v2/discovery.proto\u001a\u001cgoogle/api/annotations.proto\u001a envoy/annotations/resource.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0018envoy/api/v2/route.proto\"\n\n\bRdsDummy2î\u0002\n\u0015RouteDiscoveryService\u0012U\n\fStreamRoutes\u0012\u001e.envoy.api.v2.DiscoveryRequest\u001a\u001f.envoy.api.v2.DiscoveryResponse\"\u0000(\u00010\u0001\u0012^\n\u000bDeltaRoutes\u0012#.envoy.api.v2.DeltaDiscoveryRequest\u001a$.envoy.api.v2.DeltaDiscoveryResponse\"\u0000(\u00010\u0001\u0012u\n\u000bFetchRoutes\u0012\u001e.envoy.api.v2.DiscoveryRequest\u001a\u001f.envoy.api.v2.DiscoveryResponse\"%\u0082Óä\u0093\u0002\u0016\"\u0014/v2/discovery:routes\u0082Óä\u0093\u0002\u0003:\u0001*\u001a'\u008a¤\u0096ó\u0007!\n\u001fenvoy.api.v2.RouteConfiguration2«\u0001\n\u001bVirtualHostDiscoveryService\u0012d\n\u0011DeltaVirtualHosts\u0012#.envoy.api.v2.DeltaDiscoveryRequest\u001a$.envoy.api.v2.DeltaDiscoveryResponse\"\u0000(\u00010\u0001\u001a&\u008a¤\u0096ó\u0007 \n\u001eenvoy.api.v2.route.VirtualHostBQ\n\u001aio.envoyproxy.envoy.api.v2B\bRdsProtoP\u0001\u0088\u0001\u0001ò\u0098þ\u008f\u0005\u0018\u0012\u0016envoy.service.route.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001P\u0005b\u0006proto3"}, new Descriptors.FileDescriptor[]{d.a(), com.google.api.b.a(), io.grpc.xds.shaded.envoy.annotations.Resource.c(), Migrate.g(), Status.c(), m.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46915a = bVar;
        f46916b = new GeneratedMessageV3.e(bVar, new String[0]);
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.Resource.f45752a);
        k10.f(com.google.api.b.f10941a);
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        Descriptors.FileDescriptor.u(f46917c, k10);
        d.a();
        com.google.api.b.a();
        io.grpc.xds.shaded.envoy.annotations.Resource.c();
        Migrate.g();
        Status.c();
        m.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f46917c;
    }
}
