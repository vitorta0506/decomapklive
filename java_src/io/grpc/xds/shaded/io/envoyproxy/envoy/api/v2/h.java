package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.p0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes5.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46906a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46907b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46908c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46909d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46910e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46911f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f46912g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f46913h;

    /* renamed from: i  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46914i = Descriptors.FileDescriptor.s(new String[]{"\n\u001benvoy/api/v2/listener.proto\u0012\fenvoy.api.v2\u001a\u001fenvoy/api/v2/core/address.proto\u001a\u001cenvoy/api/v2/core/base.proto\u001a%envoy/api/v2/core/socket_option.proto\u001a/envoy/api/v2/listener/listener_components.proto\u001a/envoy/api/v2/listener/udp_listener_config.proto\u001a0envoy/config/filter/accesslog/v2/accesslog.proto\u001a+envoy/config/listener/v2/api_listener.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"ª\u000b\n\bListener\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00125\n\u0007address\u0018\u0002 \u0001(\u000b2\u001a.envoy.api.v2.core.AddressB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u00129\n\rfilter_chains\u0018\u0003 \u0003(\u000b2\".envoy.api.v2.listener.FilterChain\u00128\n\u0010use_original_dst\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValueB\u0002\u0018\u0001\u0012G\n!per_connection_buffer_limit_bytes\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012-\n\bmetadata\u0018\u0006 \u0001(\u000b2\u001b.envoy.api.v2.core.Metadata\u0012:\n\rdeprecated_v1\u0018\u0007 \u0001(\u000b2#.envoy.api.v2.Listener.DeprecatedV1\u00124\n\ndrain_type\u0018\b \u0001(\u000e2 .envoy.api.v2.Listener.DrainType\u0012?\n\u0010listener_filters\u0018\t \u0003(\u000b2%.envoy.api.v2.listener.ListenerFilter\u0012;\n\u0018listener_filters_timeout\u0018\u000f \u0001(\u000b2\u0019.google.protobuf.Duration\u0012,\n$continue_on_listener_filters_timeout\u0018\u0011 \u0001(\b\u0012/\n\u000btransparent\u0018\n \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012,\n\bfreebind\u0018\u000b \u0001(\u000b2\u001a.google.protobuf.BoolValue\u00127\n\u000esocket_options\u0018\r \u0003(\u000b2\u001f.envoy.api.v2.core.SocketOption\u0012@\n\u001atcp_fast_open_queue_length\u0018\f \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012>\n\u0011traffic_direction\u0018\u0010 \u0001(\u000e2#.envoy.api.v2.core.TrafficDirection\u0012E\n\u0013udp_listener_config\u0018\u0012 \u0001(\u000b2(.envoy.api.v2.listener.UdpListenerConfig\u0012;\n\fapi_listener\u0018\u0013 \u0001(\u000b2%.envoy.config.listener.v2.ApiListener\u0012Q\n\u0019connection_balance_config\u0018\u0014 \u0001(\u000b2..envoy.api.v2.Listener.ConnectionBalanceConfig\u0012\u0012\n\nreuse_port\u0018\u0015 \u0001(\b\u0012?\n\naccess_log\u0018\u0016 \u0003(\u000b2+.envoy.config.filter.accesslog.v2.AccessLog\u001a@\n\fDeprecatedV1\u00120\n\fbind_to_port\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u001a\u0094\u0001\n\u0017ConnectionBalanceConfig\u0012T\n\rexact_balance\u0018\u0001 \u0001(\u000b2;.envoy.api.v2.Listener.ConnectionBalanceConfig.ExactBalanceH\u0000\u001a\u000e\n\fExactBalanceB\u0013\n\fbalance_type\u0012\u0003øB\u0001\")\n\tDrainType\u0012\u000b\n\u0007DEFAULT\u0010\u0000\u0012\u000f\n\u000bMODIFY_ONLY\u0010\u0001J\u0004\b\u000e\u0010\u000fBU\n\u001aio.envoyproxy.envoy.api.v2B\rListenerProtoP\u0001ò\u0098þ\u008f\u0005\u001a\u0012\u0018envoy.config.listener.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a(), p0.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.d.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.h.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.c.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v2.b.a(), w.a(), p3.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46906a = bVar;
        f46907b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "Address", "FilterChains", "UseOriginalDst", "PerConnectionBufferLimitBytes", "Metadata", "DeprecatedV1", "DrainType", "ListenerFilters", "ListenerFiltersTimeout", "ContinueOnListenerFiltersTimeout", "Transparent", "Freebind", "SocketOptions", "TcpFastOpenQueueLength", "TrafficDirection", "UdpListenerConfig", "ApiListener", "ConnectionBalanceConfig", "ReusePort", "AccessLog"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f46908c = bVar2;
        f46909d = new GeneratedMessageV3.e(bVar2, new String[]{"BindToPort"});
        Descriptors.b bVar3 = bVar.o().get(1);
        f46910e = bVar3;
        f46911f = new GeneratedMessageV3.e(bVar3, new String[]{"ExactBalance", "BalanceType"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f46912g = bVar4;
        f46913h = new GeneratedMessageV3.e(bVar4, new String[0]);
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46914i, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a();
        p0.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.d.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.listener.h.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.accesslog.v2.c.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v2.b.a();
        w.a();
        p3.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46914i;
    }
}
