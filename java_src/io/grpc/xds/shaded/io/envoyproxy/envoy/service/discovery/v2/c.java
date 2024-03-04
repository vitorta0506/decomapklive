package io.grpc.xds.shaded.io.envoyproxy.envoy.service.discovery.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.envoy.annotations.Resource;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.d;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50061a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50062b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50063c = Descriptors.FileDescriptor.s(new String[]{"\n$envoy/service/discovery/v2/sds.proto\u0012\u001aenvoy.service.discovery.v2\u001a\u001cenvoy/api/v2/discovery.proto\u001a\u001cgoogle/api/annotations.proto\u001a envoy/annotations/resource.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\"\n\n\bSdsDummy2ì\u0002\n\u0016SecretDiscoveryService\u0012_\n\fDeltaSecrets\u0012#.envoy.api.v2.DeltaDiscoveryRequest\u001a$.envoy.api.v2.DeltaDiscoveryResponse\"\u0000(\u00010\u0001\u0012V\n\rStreamSecrets\u0012\u001e.envoy.api.v2.DiscoveryRequest\u001a\u001f.envoy.api.v2.DiscoveryResponse\"\u0000(\u00010\u0001\u0012w\n\fFetchSecrets\u0012\u001e.envoy.api.v2.DiscoveryRequest\u001a\u001f.envoy.api.v2.DiscoveryResponse\"&\u0082Óä\u0093\u0002\u0017\"\u0015/v2/discovery:secrets\u0082Óä\u0093\u0002\u0003:\u0001*\u001a \u008a¤\u0096ó\u0007\u001a\n\u0018envoy.api.v2.auth.SecretB`\n(io.envoyproxy.envoy.service.discovery.v2B\bSdsProtoP\u0001\u0088\u0001\u0001ò\u0098þ\u008f\u0005\u0019\u0012\u0017envoy.service.secret.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{d.a(), com.google.api.b.a(), Resource.c(), Migrate.g(), Status.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50061a = bVar;
        f50062b = new GeneratedMessageV3.e(bVar, new String[0]);
        d0 k10 = d0.k();
        k10.f(Resource.f45752a);
        k10.f(com.google.api.b.f10941a);
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        Descriptors.FileDescriptor.u(f50063c, k10);
        d.a();
        com.google.api.b.a();
        Resource.c();
        Migrate.g();
        Status.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f50063c;
    }
}
