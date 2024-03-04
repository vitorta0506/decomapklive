package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48169a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48170b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48171c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48172d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48173e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48174f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48175g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48176h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f48177i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f48178j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f48179k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f48180l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f48181m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f48182n;

    /* renamed from: o  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48183o = Descriptors.FileDescriptor.s(new String[]{"\n\"envoy/config/core/v3/address.proto\u0012\u0014envoy.config.core.v3\u001a(envoy/config/core/v3/socket_option.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"T\n\u0004Pipe\u0012\u0015\n\u0004path\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012\u0016\n\u0004mode\u0018\u0002 \u0001(\rB\búB\u0005*\u0003\u0018ÿ\u0003:\u001d\u009aÅ\u0088\u001e\u0018\n\u0016envoy.api.v2.core.Pipe\"U\n\u0014EnvoyInternalAddress\u0012\u001e\n\u0014server_listener_name\u0018\u0001 \u0001(\tH\u0000B\u001d\n\u0016address_name_specifier\u0012\u0003øB\u0001\"³\u0002\n\rSocketAddress\u0012H\n\bprotocol\u0018\u0001 \u0001(\u000e2,.envoy.config.core.v3.SocketAddress.ProtocolB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u0018\n\u0007address\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012\u001f\n\nport_value\u0018\u0003 \u0001(\rB\túB\u0006*\u0004\u0018ÿÿ\u0003H\u0000\u0012\u0014\n\nnamed_port\u0018\u0004 \u0001(\tH\u0000\u0012\u0015\n\rresolver_name\u0018\u0005 \u0001(\t\u0012\u0013\n\u000bipv4_compat\u0018\u0006 \u0001(\b\"\u001c\n\bProtocol\u0012\u0007\n\u0003TCP\u0010\u0000\u0012\u0007\n\u0003UDP\u0010\u0001:&\u009aÅ\u0088\u001e!\n\u001fenvoy.api.v2.core.SocketAddressB\u0015\n\u000eport_specifier\u0012\u0003øB\u0001\"Ý\u0001\n\fTcpKeepalive\u00126\n\u0010keepalive_probes\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00124\n\u000ekeepalive_time\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00128\n\u0012keepalive_interval\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32Value:%\u009aÅ\u0088\u001e \n\u001eenvoy.api.v2.core.TcpKeepalive\"â\u0001\n\nBindConfig\u0012E\n\u000esource_address\u0018\u0001 \u0001(\u000b2#.envoy.config.core.v3.SocketAddressB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012,\n\bfreebind\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012:\n\u000esocket_options\u0018\u0003 \u0003(\u000b2\".envoy.config.core.v3.SocketOption:#\u009aÅ\u0088\u001e\u001e\n\u001cenvoy.api.v2.core.BindConfig\"ô\u0001\n\u0007Address\u0012=\n\u000esocket_address\u0018\u0001 \u0001(\u000b2#.envoy.config.core.v3.SocketAddressH\u0000\u0012*\n\u0004pipe\u0018\u0002 \u0001(\u000b2\u001a.envoy.config.core.v3.PipeH\u0000\u0012L\n\u0016envoy_internal_address\u0018\u0003 \u0001(\u000b2*.envoy.config.core.v3.EnvoyInternalAddressH\u0000: \u009aÅ\u0088\u001e\u001b\n\u0019envoy.api.v2.core.AddressB\u000e\n\u0007address\u0012\u0003øB\u0001\"\u008c\u0001\n\tCidrRange\u0012\u001f\n\u000eaddress_prefix\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012:\n\nprefix_len\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\búB\u0005*\u0003\u0018\u0080\u0001:\"\u009aÅ\u0088\u001e\u001d\n\u001benvoy.api.v2.core.CidrRangeB<\n\"io.envoyproxy.envoy.config.core.v3B\fAddressProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{d1.a(), p3.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48169a = bVar;
        f48170b = new GeneratedMessageV3.e(bVar, new String[]{"Path", "Mode"});
        Descriptors.b bVar2 = a().m().get(1);
        f48171c = bVar2;
        f48172d = new GeneratedMessageV3.e(bVar2, new String[]{"ServerListenerName", "AddressNameSpecifier"});
        Descriptors.b bVar3 = a().m().get(2);
        f48173e = bVar3;
        f48174f = new GeneratedMessageV3.e(bVar3, new String[]{"Protocol", "Address", "PortValue", "NamedPort", "ResolverName", "Ipv4Compat", "PortSpecifier"});
        Descriptors.b bVar4 = a().m().get(3);
        f48175g = bVar4;
        f48176h = new GeneratedMessageV3.e(bVar4, new String[]{"KeepaliveProbes", "KeepaliveTime", "KeepaliveInterval"});
        Descriptors.b bVar5 = a().m().get(4);
        f48177i = bVar5;
        f48178j = new GeneratedMessageV3.e(bVar5, new String[]{"SourceAddress", "Freebind", "SocketOptions"});
        Descriptors.b bVar6 = a().m().get(5);
        f48179k = bVar6;
        f48180l = new GeneratedMessageV3.e(bVar6, new String[]{"SocketAddress", "Pipe", "EnvoyInternalAddress", "Address"});
        Descriptors.b bVar7 = a().m().get(6);
        f48181m = bVar7;
        f48182n = new GeneratedMessageV3.e(bVar7, new String[]{"AddressPrefix", "PrefixLen"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48183o, k10);
        d1.a();
        p3.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48183o;
    }
}
