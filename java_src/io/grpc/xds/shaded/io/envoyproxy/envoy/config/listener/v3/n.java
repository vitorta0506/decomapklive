package io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.k1;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48868a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48869b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48870c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48871d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48872e = Descriptors.FileDescriptor.s(new String[]{"\n2envoy/config/listener/v3/udp_listener_config.proto\u0012\u0018envoy.config.listener.v3\u001a,envoy/config/core/v3/udp_socket_config.proto\u001a*envoy/config/listener/v3/quic_config.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\"÷\u0001\n\u0011UdpListenerConfig\u0012G\n\u0018downstream_socket_config\u0018\u0005 \u0001(\u000b2%.envoy.config.core.v3.UdpSocketConfig\u0012C\n\fquic_options\u0018\u0007 \u0001(\u000b2-.envoy.config.listener.v3.QuicProtocolOptions:.\u009aÅ\u0088\u001e)\n'envoy.api.v2.listener.UdpListenerConfigJ\u0004\b\u0001\u0010\u0002J\u0004\b\u0002\u0010\u0003J\u0004\b\u0003\u0010\u0004J\u0004\b\u0004\u0010\u0005J\u0004\b\u0006\u0010\u0007R\u0006config\"U\n\u001aActiveRawUdpListenerConfig:7\u009aÅ\u0088\u001e2\n0envoy.api.v2.listener.ActiveRawUdpListenerConfigBJ\n&io.envoyproxy.envoy.config.listener.v3B\u0016UdpListenerConfigProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{k1.a(), k.a(), Status.c(), Versioning.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48868a = bVar;
        f48869b = new GeneratedMessageV3.e(bVar, new String[]{"DownstreamSocketConfig", "QuicOptions"});
        Descriptors.b bVar2 = a().m().get(1);
        f48870c = bVar2;
        f48871d = new GeneratedMessageV3.e(bVar2, new String[0]);
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        Descriptors.FileDescriptor.u(f48872e, k10);
        k1.a();
        k.a();
        Status.c();
        Versioning.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f48872e;
    }
}
