package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.p3;
import com.google.protobuf.v2;
import com.tencent.liteav.txcplayer.ext.host.EngineConst;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class b0 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48184a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48185b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48186c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48187d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48188e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48189f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48190g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48191h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f48192i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f48193j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f48194k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f48195l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f48196m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f48197n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f48198o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f48199p;

    /* renamed from: q  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48200q = Descriptors.FileDescriptor.s(new String[]{"\n'envoy/config/core/v3/health_check.proto\u0012\u0014envoy.config.core.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a/envoy/config/core/v3/event_service_config.proto\u001a\"envoy/type/matcher/v3/string.proto\u001a\u0018envoy/type/v3/http.proto\u001a\u0019envoy/type/v3/range.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"Ë\u0016\n\u000bHealthCheck\u00126\n\u0007timeout\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.DurationB\núB\u0007ª\u0001\u0004\b\u0001*\u0000\u00127\n\binterval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\núB\u0007ª\u0001\u0004\b\u0001*\u0000\u00121\n\u000einitial_jitter\u0018\u0014 \u0001(\u000b2\u0019.google.protobuf.Duration\u00122\n\u000finterval_jitter\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\u001f\n\u0017interval_jitter_percent\u0018\u0012 \u0001(\r\u0012C\n\u0013unhealthy_threshold\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012A\n\u0011healthy_threshold\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012.\n\balt_port\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00124\n\u0010reuse_connection\u0018\u0007 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012N\n\u0011http_health_check\u0018\b \u0001(\u000b21.envoy.config.core.v3.HealthCheck.HttpHealthCheckH\u0000\u0012L\n\u0010tcp_health_check\u0018\t \u0001(\u000b20.envoy.config.core.v3.HealthCheck.TcpHealthCheckH\u0000\u0012N\n\u0011grpc_health_check\u0018\u000b \u0001(\u000b21.envoy.config.core.v3.HealthCheck.GrpcHealthCheckH\u0000\u0012R\n\u0013custom_health_check\u0018\r \u0001(\u000b23.envoy.config.core.v3.HealthCheck.CustomHealthCheckH\u0000\u0012@\n\u0013no_traffic_interval\u0018\f \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012H\n\u001bno_traffic_healthy_interval\u0018\u0018 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012?\n\u0012unhealthy_interval\u0018\u000e \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012D\n\u0017unhealthy_edge_interval\u0018\u000f \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012B\n\u0015healthy_edge_interval\u0018\u0010 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012\u0016\n\u000eevent_log_path\u0018\u0011 \u0001(\t\u0012?\n\revent_service\u0018\u0016 \u0001(\u000b2(.envoy.config.core.v3.EventServiceConfig\u0012(\n always_log_health_check_failures\u0018\u0013 \u0001(\b\u0012A\n\u000btls_options\u0018\u0015 \u0001(\u000b2,.envoy.config.core.v3.HealthCheck.TlsOptions\u0012@\n\u001ftransport_socket_match_criteria\u0018\u0017 \u0001(\u000b2\u0017.google.protobuf.Struct\u001ar\n\u0007Payload\u0012\u0017\n\u0004text\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001H\u0000\u0012\u0010\n\u0006binary\u0018\u0002 \u0001(\fH\u0000:,\u009aÅ\u0088\u001e'\n%envoy.api.v2.core.HealthCheck.PayloadB\u000e\n\u0007payload\u0012\u0003øB\u0001\u001aá\u0004\n\u000fHttpHealthCheck\u0012\u0019\n\u0004host\u0018\u0001 \u0001(\tB\u000búB\br\u0006À\u0001\u0002È\u0001\u0000\u0012\u001b\n\u0004path\u0018\u0002 \u0001(\tB\rúB\nr\b\u0010\u0001À\u0001\u0002È\u0001\u0000\u00127\n\u0004send\u0018\u0003 \u0001(\u000b2).envoy.config.core.v3.HealthCheck.Payload\u0012:\n\u0007receive\u0018\u0004 \u0001(\u000b2).envoy.config.core.v3.HealthCheck.Payload\u0012R\n\u0016request_headers_to_add\u0018\u0006 \u0003(\u000b2'.envoy.config.core.v3.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u00123\n\u0019request_headers_to_remove\u0018\b \u0003(\tB\u0010úB\r\u0092\u0001\n\"\br\u0006À\u0001\u0001È\u0001\u0000\u00124\n\u0011expected_statuses\u0018\t \u0003(\u000b2\u0019.envoy.type.v3.Int64Range\u0012C\n\u0011codec_client_type\u0018\n \u0001(\u000e2\u001e.envoy.type.v3.CodecClientTypeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012B\n\u0014service_name_matcher\u0018\u000b \u0001(\u000b2$.envoy.type.matcher.v3.StringMatcher:4\u009aÅ\u0088\u001e/\n-envoy.api.v2.core.HealthCheck.HttpHealthCheckJ\u0004\b\u0005\u0010\u0006J\u0004\b\u0007\u0010\bR\fservice_nameR\tuse_http2\u001aº\u0001\n\u000eTcpHealthCheck\u00127\n\u0004send\u0018\u0001 \u0001(\u000b2).envoy.config.core.v3.HealthCheck.Payload\u0012:\n\u0007receive\u0018\u0002 \u0003(\u000b2).envoy.config.core.v3.HealthCheck.Payload:3\u009aÅ\u0088\u001e.\n,envoy.api.v2.core.HealthCheck.TcpHealthCheck\u001aV\n\u0010RedisHealthCheck\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t:5\u009aÅ\u0088\u001e0\n.envoy.api.v2.core.HealthCheck.RedisHealthCheck\u001a}\n\u000fGrpcHealthCheck\u0012\u0014\n\fservice_name\u0018\u0001 \u0001(\t\u0012\u001e\n\tauthority\u0018\u0002 \u0001(\tB\u000búB\br\u0006À\u0001\u0002È\u0001\u0000:4\u009aÅ\u0088\u001e/\n-envoy.api.v2.core.HealthCheck.GrpcHealthCheck\u001a\u00ad\u0001\n\u0011CustomHealthCheck\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000:6\u009aÅ\u0088\u001e1\n/envoy.api.v2.core.HealthCheck.CustomHealthCheckB\r\n\u000bconfig_typeJ\u0004\b\u0002\u0010\u0003R\u0006config\u001aU\n\nTlsOptions\u0012\u0016\n\u000ealpn_protocols\u0018\u0001 \u0003(\t:/\u009aÅ\u0088\u001e*\n(envoy.api.v2.core.HealthCheck.TlsOptions:$\u009aÅ\u0088\u001e\u001f\n\u001denvoy.api.v2.core.HealthCheckB\u0015\n\u000ehealth_checker\u0012\u0003øB\u0001J\u0004\b\n\u0010\u000b*`\n\fHealthStatus\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u000b\n\u0007HEALTHY\u0010\u0001\u0012\r\n\tUNHEALTHY\u0010\u0002\u0012\f\n\bDRAINING\u0010\u0003\u0012\u000b\n\u0007TIMEOUT\u0010\u0004\u0012\f\n\bDEGRADED\u0010\u0005B@\n\"io.envoyproxy.envoy.config.core.v3B\u0010HealthCheckProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{g.a(), s.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.o.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.c.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.h.a(), com.google.protobuf.g.a(), com.google.protobuf.w.a(), v2.a(), p3.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48184a = bVar;
        f48185b = new GeneratedMessageV3.e(bVar, new String[]{"Timeout", "Interval", "InitialJitter", "IntervalJitter", "IntervalJitterPercent", "UnhealthyThreshold", "HealthyThreshold", "AltPort", "ReuseConnection", "HttpHealthCheck", "TcpHealthCheck", "GrpcHealthCheck", "CustomHealthCheck", "NoTrafficInterval", "NoTrafficHealthyInterval", "UnhealthyInterval", "UnhealthyEdgeInterval", "HealthyEdgeInterval", "EventLogPath", "EventService", "AlwaysLogHealthCheckFailures", "TlsOptions", "TransportSocketMatchCriteria", "HealthChecker"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f48186c = bVar2;
        f48187d = new GeneratedMessageV3.e(bVar2, new String[]{"Text", "Binary", "Payload"});
        Descriptors.b bVar3 = bVar.o().get(1);
        f48188e = bVar3;
        f48189f = new GeneratedMessageV3.e(bVar3, new String[]{EngineConst.PluginName.HOST_NAME, "Path", "Send", "Receive", "RequestHeadersToAdd", "RequestHeadersToRemove", "ExpectedStatuses", "CodecClientType", "ServiceNameMatcher"});
        Descriptors.b bVar4 = bVar.o().get(2);
        f48190g = bVar4;
        f48191h = new GeneratedMessageV3.e(bVar4, new String[]{"Send", "Receive"});
        Descriptors.b bVar5 = bVar.o().get(3);
        f48192i = bVar5;
        f48193j = new GeneratedMessageV3.e(bVar5, new String[]{"Key"});
        Descriptors.b bVar6 = bVar.o().get(4);
        f48194k = bVar6;
        f48195l = new GeneratedMessageV3.e(bVar6, new String[]{"ServiceName", "Authority"});
        Descriptors.b bVar7 = bVar.o().get(5);
        f48196m = bVar7;
        f48197n = new GeneratedMessageV3.e(bVar7, new String[]{"Name", "TypedConfig", "ConfigType"});
        Descriptors.b bVar8 = bVar.o().get(6);
        f48198o = bVar8;
        f48199p = new GeneratedMessageV3.e(bVar8, new String[]{"AlpnProtocols"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48200q, k10);
        g.a();
        s.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.o.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.c.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.h.a();
        com.google.protobuf.g.a();
        com.google.protobuf.w.a();
        v2.a();
        p3.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48200q;
    }
}
