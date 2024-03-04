package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48242a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48243b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48244c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48245d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48246e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48247f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48248g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48249h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f48250i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f48251j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48252k = Descriptors.FileDescriptor.s(new String[]{"\n(envoy/config/core/v3/config_source.proto\u0012\u0014envoy.config.core.v3\u001a'envoy/config/core/v3/grpc_service.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001bxds/core/v3/authority.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u0095\u0005\n\u000fApiConfigSource\u0012I\n\bapi_type\u0018\u0001 \u0001(\u000e2-.envoy.config.core.v3.ApiConfigSource.ApiTypeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012I\n\u0015transport_api_version\u0018\b \u0001(\u000e2 .envoy.config.core.v3.ApiVersionB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u0015\n\rcluster_names\u0018\u0002 \u0003(\t\u00128\n\rgrpc_services\u0018\u0004 \u0003(\u000b2!.envoy.config.core.v3.GrpcService\u00120\n\rrefresh_delay\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012<\n\u000frequest_timeout\u0018\u0005 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012D\n\u0013rate_limit_settings\u0018\u0006 \u0001(\u000b2'.envoy.config.core.v3.RateLimitSettings\u0012&\n\u001eset_node_on_first_message_only\u0018\u0007 \u0001(\b\"\u0092\u0001\n\u0007ApiType\u00123\n%DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE\u0010\u0000\u001a\b\b\u0001¨÷´\u008b\u0002\u0001\u0012\b\n\u0004REST\u0010\u0001\u0012\b\n\u0004GRPC\u0010\u0002\u0012\u000e\n\nDELTA_GRPC\u0010\u0003\u0012\u0013\n\u000fAGGREGATED_GRPC\u0010\u0005\u0012\u0019\n\u0015AGGREGATED_DELTA_GRPC\u0010\u0006:(\u009aÅ\u0088\u001e#\n!envoy.api.v2.core.ApiConfigSource\"I\n\u0016AggregatedConfigSource:/\u009aÅ\u0088\u001e*\n(envoy.api.v2.core.AggregatedConfigSource\"\u0088\u0001\n\u0010SelfConfigSource\u0012I\n\u0015transport_api_version\u0018\u0001 \u0001(\u000e2 .envoy.config.core.v3.ApiVersionB\búB\u0005\u0082\u0001\u0002\u0010\u0001:)\u009aÅ\u0088\u001e$\n\"envoy.api.v2.core.SelfConfigSource\"²\u0001\n\u0011RateLimitSettings\u00120\n\nmax_tokens\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012?\n\tfill_rate\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.DoubleValueB\u000eúB\u000b\u0012\t!\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000:*\u009aÅ\u0088\u001e%\n#envoy.api.v2.core.RateLimitSettings\"Ï\u0003\n\fConfigSource\u0012+\n\u000bauthorities\u0018\u0007 \u0003(\u000b2\u0016.xds.core.v3.Authority\u0012\u000e\n\u0004path\u0018\u0001 \u0001(\tH\u0000\u0012B\n\u0011api_config_source\u0018\u0002 \u0001(\u000b2%.envoy.config.core.v3.ApiConfigSourceH\u0000\u0012;\n\u0003ads\u0018\u0003 \u0001(\u000b2,.envoy.config.core.v3.AggregatedConfigSourceH\u0000\u00126\n\u0004self\u0018\u0005 \u0001(\u000b2&.envoy.config.core.v3.SelfConfigSourceH\u0000\u00128\n\u0015initial_fetch_timeout\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012H\n\u0014resource_api_version\u0018\u0006 \u0001(\u000e2 .envoy.config.core.v3.ApiVersionB\búB\u0005\u0082\u0001\u0002\u0010\u0001:%\u009aÅ\u0088\u001e \n\u001eenvoy.api.v2.core.ConfigSourceB\u001e\n\u0017config_source_specifier\u0012\u0003øB\u0001*@\n\nApiVersion\u0012\u0015\n\u0004AUTO\u0010\u0000\u001a\u000b\b\u0001\u008aô\u009b³\u0005\u00033.0\u0012\u0013\n\u0002V2\u0010\u0001\u001a\u000b\b\u0001\u008aô\u009b³\u0005\u00033.0\u0012\u0006\n\u0002V3\u0010\u0002BA\n\"io.envoyproxy.envoy.config.core.v3B\u0011ConfigSourceProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{x.a(), com.google.protobuf.w.a(), p3.a(), io.grpc.xds.shaded.com.github.xds.core.v3.b.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48242a = bVar;
        f48243b = new GeneratedMessageV3.e(bVar, new String[]{"ApiType", "TransportApiVersion", "ClusterNames", "GrpcServices", "RefreshDelay", "RequestTimeout", "RateLimitSettings", "SetNodeOnFirstMessageOnly"});
        Descriptors.b bVar2 = a().m().get(1);
        f48244c = bVar2;
        f48245d = new GeneratedMessageV3.e(bVar2, new String[0]);
        Descriptors.b bVar3 = a().m().get(2);
        f48246e = bVar3;
        f48247f = new GeneratedMessageV3.e(bVar3, new String[]{"TransportApiVersion"});
        Descriptors.b bVar4 = a().m().get(3);
        f48248g = bVar4;
        f48249h = new GeneratedMessageV3.e(bVar4, new String[]{"MaxTokens", "FillRate"});
        Descriptors.b bVar5 = a().m().get(4);
        f48250i = bVar5;
        f48251j = new GeneratedMessageV3.e(bVar5, new String[]{"Authorities", "Path", "ApiConfigSource", "Ads", "Self", "InitialFetchTimeout", "ResourceApiVersion", "ConfigSourceSpecifier"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45760d);
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45759c);
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48252k, k10);
        x.a();
        com.google.protobuf.w.a();
        p3.a();
        io.grpc.xds.shaded.com.github.xds.core.v3.b.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48252k;
    }
}
