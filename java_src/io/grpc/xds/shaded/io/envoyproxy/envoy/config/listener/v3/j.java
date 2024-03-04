package io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.d1;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Security;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48852a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48853b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48854c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48855d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48856e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48857f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48858g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48859h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f48860i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f48861j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f48862k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f48863l;

    /* renamed from: m  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48864m = Descriptors.FileDescriptor.s(new String[]{"\n'envoy/config/listener/v3/listener.proto\u0012\u0018envoy.config.listener.v3\u001a)envoy/config/accesslog/v3/accesslog.proto\u001a\"envoy/config/core/v3/address.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a(envoy/config/core/v3/socket_option.proto\u001a+envoy/config/listener/v3/api_listener.proto\u001a2envoy/config/listener/v3/listener_components.proto\u001a2envoy/config/listener/v3/udp_listener_config.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\"xds/core/v3/collection_entry.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001fudpa/annotations/security.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"C\n\u0012ListenerCollection\u0012-\n\u0007entries\u0018\u0001 \u0003(\u000b2\u001c.xds.core.v3.CollectionEntry\"Ò\u0010\n\bListener\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00128\n\u0007address\u0018\u0002 \u0001(\u000b2\u001d.envoy.config.core.v3.AddressB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0013\n\u000bstat_prefix\u0018\u001c \u0001(\t\u0012<\n\rfilter_chains\u0018\u0003 \u0003(\u000b2%.envoy.config.listener.v3.FilterChain\u00124\n\u0010use_original_dst\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012C\n\u0014default_filter_chain\u0018\u0019 \u0001(\u000b2%.envoy.config.listener.v3.FilterChain\u0012P\n!per_connection_buffer_limit_bytes\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007\u008a\u0093·*\u0002\b\u0001\u00120\n\bmetadata\u0018\u0006 \u0001(\u000b2\u001e.envoy.config.core.v3.Metadata\u0012S\n\rdeprecated_v1\u0018\u0007 \u0001(\u000b2/.envoy.config.listener.v3.Listener.DeprecatedV1B\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012@\n\ndrain_type\u0018\b \u0001(\u000e2,.envoy.config.listener.v3.Listener.DrainType\u0012B\n\u0010listener_filters\u0018\t \u0003(\u000b2(.envoy.config.listener.v3.ListenerFilter\u0012;\n\u0018listener_filters_timeout\u0018\u000f \u0001(\u000b2\u0019.google.protobuf.Duration\u0012,\n$continue_on_listener_filters_timeout\u0018\u0011 \u0001(\b\u0012/\n\u000btransparent\u0018\n \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012,\n\bfreebind\u0018\u000b \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012:\n\u000esocket_options\u0018\r \u0003(\u000b2\".envoy.config.core.v3.SocketOption\u0012@\n\u001atcp_fast_open_queue_length\u0018\f \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012A\n\u0011traffic_direction\u0018\u0010 \u0001(\u000e2&.envoy.config.core.v3.TrafficDirection\u0012H\n\u0013udp_listener_config\u0018\u0012 \u0001(\u000b2+.envoy.config.listener.v3.UdpListenerConfig\u0012;\n\fapi_listener\u0018\u0013 \u0001(\u000b2%.envoy.config.listener.v3.ApiListener\u0012]\n\u0019connection_balance_config\u0018\u0014 \u0001(\u000b2:.envoy.config.listener.v3.Listener.ConnectionBalanceConfig\u0012\u001f\n\nreuse_port\u0018\u0015 \u0001(\bB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u00125\n\u0011enable_reuse_port\u0018\u001d \u0001(\u000b2\u001a.google.protobuf.BoolValue\u00128\n\naccess_log\u0018\u0016 \u0003(\u000b2$.envoy.config.accesslog.v3.AccessLog\u00126\n\u0010tcp_backlog_size\u0018\u0018 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00120\n\fbind_to_port\u0018\u001a \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012V\n\u0011internal_listener\u0018\u001b \u0001(\u000b29.envoy.config.listener.v3.Listener.InternalListenerConfigH\u0000\u001ak\n\fDeprecatedV1\u00120\n\fbind_to_port\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.BoolValue:)\u009aÅ\u0088\u001e$\n\"envoy.api.v2.Listener.DeprecatedV1\u001a\u0099\u0002\n\u0017ConnectionBalanceConfig\u0012`\n\rexact_balance\u0018\u0001 \u0001(\u000b2G.envoy.config.listener.v3.Listener.ConnectionBalanceConfig.ExactBalanceH\u0000\u001aQ\n\fExactBalance:A\u009aÅ\u0088\u001e<\n:envoy.api.v2.Listener.ConnectionBalanceConfig.ExactBalance:4\u009aÅ\u0088\u001e/\n-envoy.api.v2.Listener.ConnectionBalanceConfigB\u0013\n\fbalance_type\u0012\u0003øB\u0001\u001a\u0018\n\u0016InternalListenerConfig\")\n\tDrainType\u0012\u000b\n\u0007DEFAULT\u0010\u0000\u0012\u000f\n\u000bMODIFY_ONLY\u0010\u0001:\u001c\u009aÅ\u0088\u001e\u0017\n\u0015envoy.api.v2.ListenerB\u0014\n\u0012listener_specifierJ\u0004\b\u000e\u0010\u000fJ\u0004\b\u0017\u0010\u0018BA\n&io.envoyproxy.envoy.config.listener.v3B\rListenerProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.c.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a(), d1.a(), b.a(), f.a(), n.a(), w.a(), p3.a(), io.grpc.xds.shaded.com.github.xds.core.v3.d.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Security.c(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48852a = bVar;
        f48853b = new GeneratedMessageV3.e(bVar, new String[]{"Entries"});
        Descriptors.b bVar2 = a().m().get(1);
        f48854c = bVar2;
        f48855d = new GeneratedMessageV3.e(bVar2, new String[]{"Name", "Address", "StatPrefix", "FilterChains", "UseOriginalDst", "DefaultFilterChain", "PerConnectionBufferLimitBytes", "Metadata", "DeprecatedV1", "DrainType", "ListenerFilters", "ListenerFiltersTimeout", "ContinueOnListenerFiltersTimeout", "Transparent", "Freebind", "SocketOptions", "TcpFastOpenQueueLength", "TrafficDirection", "UdpListenerConfig", "ApiListener", "ConnectionBalanceConfig", "ReusePort", "EnableReusePort", "AccessLog", "TcpBacklogSize", "BindToPort", "InternalListener", "ListenerSpecifier"});
        Descriptors.b bVar3 = bVar2.o().get(0);
        f48856e = bVar3;
        f48857f = new GeneratedMessageV3.e(bVar3, new String[]{"BindToPort"});
        Descriptors.b bVar4 = bVar2.o().get(1);
        f48858g = bVar4;
        f48859h = new GeneratedMessageV3.e(bVar4, new String[]{"ExactBalance", "BalanceType"});
        Descriptors.b bVar5 = bVar4.o().get(0);
        f48860i = bVar5;
        f48861j = new GeneratedMessageV3.e(bVar5, new String[0]);
        Descriptors.b bVar6 = bVar2.o().get(2);
        f48862k = bVar6;
        f48863l = new GeneratedMessageV3.e(bVar6, new String[0]);
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45758b);
        k10.f(Status.f50839a);
        k10.f(Security.f50833a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48864m, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.accesslog.v3.c.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a();
        d1.a();
        b.a();
        f.a();
        n.a();
        w.a();
        p3.a();
        io.grpc.xds.shaded.com.github.xds.core.v3.d.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Security.c();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48864m;
    }
}
