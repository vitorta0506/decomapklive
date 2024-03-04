package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.v2;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46990a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46991b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46992c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46993d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46994e = Descriptors.FileDescriptor.s(new String[]{"\n/envoy/api/v2/listener/udp_listener_config.proto\u0012\u0015envoy.api.v2.listener\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\"\u009a\u0001\n\u0011UdpListenerConfig\u0012\u0019\n\u0011udp_listener_name\u0018\u0001 \u0001(\t\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_type\"\u001c\n\u001aActiveRawUdpListenerConfigB\u009b\u0001\n#io.envoyproxy.envoy.api.v2.listenerB\u0016UdpListenerConfigProtoP\u0001ª\u0002\u0017Envoy.Api.V2.ListenerNSê\u0002\u0017Envoy.Api.V2.ListenerNSò\u0098þ\u008f\u0005\u001a\u0012\u0018envoy.config.listener.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.protobuf.g.a(), v2.a(), Migrate.g(), Status.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46990a = bVar;
        f46991b = new GeneratedMessageV3.e(bVar, new String[]{"UdpListenerName", "Config", "TypedConfig", "ConfigType"});
        Descriptors.b bVar2 = a().m().get(1);
        f46992c = bVar2;
        f46993d = new GeneratedMessageV3.e(bVar2, new String[0]);
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        Descriptors.FileDescriptor.u(f46994e, k10);
        com.google.protobuf.g.a();
        v2.a();
        Migrate.g();
        Status.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f46994e;
    }
}
