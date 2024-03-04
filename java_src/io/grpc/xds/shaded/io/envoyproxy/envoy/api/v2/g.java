package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes5.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46903a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46904b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46905c = Descriptors.FileDescriptor.s(new String[]{"\n\u0016envoy/api/v2/lds.proto\u0012\fenvoy.api.v2\u001a\u001cenvoy/api/v2/discovery.proto\u001a\u001cgoogle/api/annotations.proto\u001a envoy/annotations/resource.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u001benvoy/api/v2/listener.proto\"\n\n\bLdsDummy2ó\u0002\n\u0018ListenerDiscoveryService\u0012a\n\u000eDeltaListeners\u0012#.envoy.api.v2.DeltaDiscoveryRequest\u001a$.envoy.api.v2.DeltaDiscoveryResponse\"\u0000(\u00010\u0001\u0012X\n\u000fStreamListeners\u0012\u001e.envoy.api.v2.DiscoveryRequest\u001a\u001f.envoy.api.v2.DiscoveryResponse\"\u0000(\u00010\u0001\u0012{\n\u000eFetchListeners\u0012\u001e.envoy.api.v2.DiscoveryRequest\u001a\u001f.envoy.api.v2.DiscoveryResponse\"(\u0082Óä\u0093\u0002\u0019\"\u0017/v2/discovery:listeners\u0082Óä\u0093\u0002\u0003:\u0001*\u001a\u001d\u008a¤\u0096ó\u0007\u0017\n\u0015envoy.api.v2.ListenerBT\n\u001aio.envoyproxy.envoy.api.v2B\bLdsProtoP\u0001\u0088\u0001\u0001ò\u0098þ\u008f\u0005\u001b\u0012\u0019envoy.service.listener.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001P\u0005b\u0006proto3"}, new Descriptors.FileDescriptor[]{d.a(), com.google.api.b.a(), io.grpc.xds.shaded.envoy.annotations.Resource.c(), Migrate.g(), Status.c(), h.a()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46903a = bVar;
        f46904b = new GeneratedMessageV3.e(bVar, new String[0]);
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.Resource.f45752a);
        k10.f(com.google.api.b.f10941a);
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        Descriptors.FileDescriptor.u(f46905c, k10);
        d.a();
        com.google.api.b.a();
        io.grpc.xds.shaded.envoy.annotations.Resource.c();
        Migrate.g();
        Status.c();
        h.a();
    }

    public static Descriptors.FileDescriptor a() {
        return f46905c;
    }
}
