package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.p3;
import com.google.protobuf.v2;
import com.tencent.liteav.txcplayer.ext.host.EngineConst;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46777a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46778b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46779c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46780d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46781e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46782f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f46783g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f46784h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f46785i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f46786j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f46787k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f46788l;

    /* renamed from: m  reason: collision with root package name */
    static final Descriptors.b f46789m;

    /* renamed from: n  reason: collision with root package name */
    static final GeneratedMessageV3.e f46790n;

    /* renamed from: o  reason: collision with root package name */
    static final Descriptors.b f46791o;

    /* renamed from: p  reason: collision with root package name */
    static final GeneratedMessageV3.e f46792p;

    /* renamed from: q  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46793q = Descriptors.FileDescriptor.s(new String[]{"\n$envoy/api/v2/core/health_check.proto\u0012\u0011envoy.api.v2.core\u001a\u001cenvoy/api/v2/core/base.proto\u001a,envoy/api/v2/core/event_service_config.proto\u001a\u0015envoy/type/http.proto\u001a\u001fenvoy/type/matcher/string.proto\u001a\u0016envoy/type/range.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u0080\u0012\n\u000bHealthCheck\u00126\n\u0007timeout\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.DurationB\núB\u0007ª\u0001\u0004\b\u0001*\u0000\u00127\n\binterval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\núB\u0007ª\u0001\u0004\b\u0001*\u0000\u00121\n\u000einitial_jitter\u0018\u0014 \u0001(\u000b2\u0019.google.protobuf.Duration\u00122\n\u000finterval_jitter\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\u001f\n\u0017interval_jitter_percent\u0018\u0012 \u0001(\r\u0012C\n\u0013unhealthy_threshold\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012A\n\u0011healthy_threshold\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012.\n\balt_port\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00124\n\u0010reuse_connection\u0018\u0007 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012K\n\u0011http_health_check\u0018\b \u0001(\u000b2..envoy.api.v2.core.HealthCheck.HttpHealthCheckH\u0000\u0012I\n\u0010tcp_health_check\u0018\t \u0001(\u000b2-.envoy.api.v2.core.HealthCheck.TcpHealthCheckH\u0000\u0012K\n\u0011grpc_health_check\u0018\u000b \u0001(\u000b2..envoy.api.v2.core.HealthCheck.GrpcHealthCheckH\u0000\u0012O\n\u0013custom_health_check\u0018\r \u0001(\u000b20.envoy.api.v2.core.HealthCheck.CustomHealthCheckH\u0000\u0012@\n\u0013no_traffic_interval\u0018\f \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012?\n\u0012unhealthy_interval\u0018\u000e \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012D\n\u0017unhealthy_edge_interval\u0018\u000f \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012B\n\u0015healthy_edge_interval\u0018\u0010 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012\u0016\n\u000eevent_log_path\u0018\u0011 \u0001(\t\u0012<\n\revent_service\u0018\u0016 \u0001(\u000b2%.envoy.api.v2.core.EventServiceConfig\u0012(\n always_log_health_check_failures\u0018\u0013 \u0001(\b\u0012>\n\u000btls_options\u0018\u0015 \u0001(\u000b2).envoy.api.v2.core.HealthCheck.TlsOptions\u001aD\n\u0007Payload\u0012\u0017\n\u0004text\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001H\u0000\u0012\u0010\n\u0006binary\u0018\u0002 \u0001(\fH\u0000B\u000e\n\u0007payload\u0012\u0003øB\u0001\u001a\u0086\u0004\n\u000fHttpHealthCheck\u0012\f\n\u0004host\u0018\u0001 \u0001(\t\u0012\u0015\n\u0004path\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u00124\n\u0004send\u0018\u0003 \u0001(\u000b2&.envoy.api.v2.core.HealthCheck.Payload\u00127\n\u0007receive\u0018\u0004 \u0001(\u000b2&.envoy.api.v2.core.HealthCheck.Payload\u0012\u0018\n\fservice_name\u0018\u0005 \u0001(\tB\u0002\u0018\u0001\u0012O\n\u0016request_headers_to_add\u0018\u0006 \u0003(\u000b2$.envoy.api.v2.core.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u0012!\n\u0019request_headers_to_remove\u0018\b \u0003(\t\u0012\u001b\n\tuse_http2\u0018\u0007 \u0001(\bB\b\u0018\u0001¸îòÒ\u0005\u0001\u00121\n\u0011expected_statuses\u0018\t \u0003(\u000b2\u0016.envoy.type.Int64Range\u0012@\n\u0011codec_client_type\u0018\n \u0001(\u000e2\u001b.envoy.type.CodecClientTypeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012?\n\u0014service_name_matcher\u0018\u000b \u0001(\u000b2!.envoy.type.matcher.StringMatcher\u001a\u007f\n\u000eTcpHealthCheck\u00124\n\u0004send\u0018\u0001 \u0001(\u000b2&.envoy.api.v2.core.HealthCheck.Payload\u00127\n\u0007receive\u0018\u0002 \u0003(\u000b2&.envoy.api.v2.core.HealthCheck.Payload\u001a\u001f\n\u0010RedisHealthCheck\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u001a:\n\u000fGrpcHealthCheck\u0012\u0014\n\fservice_name\u0018\u0001 \u0001(\t\u0012\u0011\n\tauthority\u0018\u0002 \u0001(\t\u001a\u0096\u0001\n\u0011CustomHealthCheck\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012-\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0002\u0018\u0001H\u0000\u0012,\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyH\u0000B\r\n\u000bconfig_type\u001a$\n\nTlsOptions\u0012\u0016\n\u000ealpn_protocols\u0018\u0001 \u0003(\tB\u0015\n\u000ehealth_checker\u0012\u0003øB\u0001J\u0004\b\n\u0010\u000b*`\n\fHealthStatus\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u000b\n\u0007HEALTHY\u0010\u0001\u0012\r\n\tUNHEALTHY\u0010\u0002\u0012\f\n\bDRAINING\u0010\u0003\u0012\u000b\n\u0007TIMEOUT\u0010\u0004\u0012\f\n\bDEGRADED\u0010\u0005BY\n\u001fio.envoyproxy.envoy.api.v2.coreB\u0010HealthCheckProtoP\u0001ò\u0098þ\u008f\u0005\u0016\u0012\u0014envoy.config.core.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{g.a(), p.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.c.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.l.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.h.a(), com.google.protobuf.g.a(), com.google.protobuf.w.a(), v2.a(), p3.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46777a = bVar;
        f46778b = new GeneratedMessageV3.e(bVar, new String[]{"Timeout", "Interval", "InitialJitter", "IntervalJitter", "IntervalJitterPercent", "UnhealthyThreshold", "HealthyThreshold", "AltPort", "ReuseConnection", "HttpHealthCheck", "TcpHealthCheck", "GrpcHealthCheck", "CustomHealthCheck", "NoTrafficInterval", "UnhealthyInterval", "UnhealthyEdgeInterval", "HealthyEdgeInterval", "EventLogPath", "EventService", "AlwaysLogHealthCheckFailures", "TlsOptions", "HealthChecker"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f46779c = bVar2;
        f46780d = new GeneratedMessageV3.e(bVar2, new String[]{"Text", "Binary", "Payload"});
        Descriptors.b bVar3 = bVar.o().get(1);
        f46781e = bVar3;
        f46782f = new GeneratedMessageV3.e(bVar3, new String[]{EngineConst.PluginName.HOST_NAME, "Path", "Send", "Receive", "ServiceName", "RequestHeadersToAdd", "RequestHeadersToRemove", "UseHttp2", "ExpectedStatuses", "CodecClientType", "ServiceNameMatcher"});
        Descriptors.b bVar4 = bVar.o().get(2);
        f46783g = bVar4;
        f46784h = new GeneratedMessageV3.e(bVar4, new String[]{"Send", "Receive"});
        Descriptors.b bVar5 = bVar.o().get(3);
        f46785i = bVar5;
        f46786j = new GeneratedMessageV3.e(bVar5, new String[]{"Key"});
        Descriptors.b bVar6 = bVar.o().get(4);
        f46787k = bVar6;
        f46788l = new GeneratedMessageV3.e(bVar6, new String[]{"ServiceName", "Authority"});
        Descriptors.b bVar7 = bVar.o().get(5);
        f46789m = bVar7;
        f46790n = new GeneratedMessageV3.e(bVar7, new String[]{"Name", "Config", "TypedConfig", "ConfigType"});
        Descriptors.b bVar8 = bVar.o().get(6);
        f46791o = bVar8;
        f46792p = new GeneratedMessageV3.e(bVar8, new String[]{"AlpnProtocols"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45757a);
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46793q, k10);
        g.a();
        p.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.c.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.l.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.h.a();
        com.google.protobuf.g.a();
        com.google.protobuf.w.a();
        v2.a();
        p3.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46793q;
    }
}
