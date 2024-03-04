package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46673a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46674b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46675c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46676d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46677e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46678f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f46679g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f46680h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f46681i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f46682j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f46683k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f46684l;

    /* renamed from: m  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46685m = Descriptors.FileDescriptor.s(new String[]{"\n\u001fenvoy/api/v2/core/address.proto\u0012\u0011envoy.api.v2.core\u001a%envoy/api/v2/core/socket_option.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"5\n\u0004Pipe\u0012\u0015\n\u0004path\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012\u0016\n\u0004mode\u0018\u0002 \u0001(\rB\búB\u0005*\u0003\u0018ÿ\u0003\"\u0088\u0002\n\rSocketAddress\u0012E\n\bprotocol\u0018\u0001 \u0001(\u000e2).envoy.api.v2.core.SocketAddress.ProtocolB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u0018\n\u0007address\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012\u001f\n\nport_value\u0018\u0003 \u0001(\rB\túB\u0006*\u0004\u0018ÿÿ\u0003H\u0000\u0012\u0014\n\nnamed_port\u0018\u0004 \u0001(\tH\u0000\u0012\u0015\n\rresolver_name\u0018\u0005 \u0001(\t\u0012\u0013\n\u000bipv4_compat\u0018\u0006 \u0001(\b\"\u001c\n\bProtocol\u0012\u0007\n\u0003TCP\u0010\u0000\u0012\u0007\n\u0003UDP\u0010\u0001B\u0015\n\u000eport_specifier\u0012\u0003øB\u0001\"¶\u0001\n\fTcpKeepalive\u00126\n\u0010keepalive_probes\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00124\n\u000ekeepalive_time\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00128\n\u0012keepalive_interval\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\"·\u0001\n\nBindConfig\u0012B\n\u000esource_address\u0018\u0001 \u0001(\u000b2 .envoy.api.v2.core.SocketAddressB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012,\n\bfreebind\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u00127\n\u000esocket_options\u0018\u0003 \u0003(\u000b2\u001f.envoy.api.v2.core.SocketOption\"~\n\u0007Address\u0012:\n\u000esocket_address\u0018\u0001 \u0001(\u000b2 .envoy.api.v2.core.SocketAddressH\u0000\u0012'\n\u0004pipe\u0018\u0002 \u0001(\u000b2\u0017.envoy.api.v2.core.PipeH\u0000B\u000e\n\u0007address\u0012\u0003øB\u0001\"h\n\tCidrRange\u0012\u001f\n\u000eaddress_prefix\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012:\n\nprefix_len\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\búB\u0005*\u0003\u0018\u0080\u0001BU\n\u001fio.envoyproxy.envoy.api.v2.coreB\fAddressProtoP\u0001ò\u0098þ\u008f\u0005\u0016\u0012\u0014envoy.config.core.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{p0.a(), p3.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46673a = bVar;
        f46674b = new GeneratedMessageV3.e(bVar, new String[]{"Path", "Mode"});
        Descriptors.b bVar2 = a().m().get(1);
        f46675c = bVar2;
        f46676d = new GeneratedMessageV3.e(bVar2, new String[]{"Protocol", "Address", "PortValue", "NamedPort", "ResolverName", "Ipv4Compat", "PortSpecifier"});
        Descriptors.b bVar3 = a().m().get(2);
        f46677e = bVar3;
        f46678f = new GeneratedMessageV3.e(bVar3, new String[]{"KeepaliveProbes", "KeepaliveTime", "KeepaliveInterval"});
        Descriptors.b bVar4 = a().m().get(3);
        f46679g = bVar4;
        f46680h = new GeneratedMessageV3.e(bVar4, new String[]{"SourceAddress", "Freebind", "SocketOptions"});
        Descriptors.b bVar5 = a().m().get(4);
        f46681i = bVar5;
        f46682j = new GeneratedMessageV3.e(bVar5, new String[]{"SocketAddress", "Pipe", "Address"});
        Descriptors.b bVar6 = a().m().get(5);
        f46683k = bVar6;
        f46684l = new GeneratedMessageV3.e(bVar6, new String[]{"AddressPrefix", "PrefixLen"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46685m, k10);
        p0.a();
        p3.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46685m;
    }
}
