package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46737a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46738b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46739c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46740d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46741e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46742f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f46743g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f46744h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f46745i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f46746j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46747k = Descriptors.FileDescriptor.s(new String[]{"\n%envoy/api/v2/core/config_source.proto\u0012\u0011envoy.api.v2.core\u001a$envoy/api/v2/core/grpc_service.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\" \u0004\n\u000fApiConfigSource\u0012F\n\bapi_type\u0018\u0001 \u0001(\u000e2*.envoy.api.v2.core.ApiConfigSource.ApiTypeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012F\n\u0015transport_api_version\u0018\b \u0001(\u000e2\u001d.envoy.api.v2.core.ApiVersionB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u0015\n\rcluster_names\u0018\u0002 \u0003(\t\u00125\n\rgrpc_services\u0018\u0004 \u0003(\u000b2\u001e.envoy.api.v2.core.GrpcService\u00120\n\rrefresh_delay\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012<\n\u000frequest_timeout\u0018\u0005 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012A\n\u0013rate_limit_settings\u0018\u0006 \u0001(\u000b2$.envoy.api.v2.core.RateLimitSettings\u0012&\n\u001eset_node_on_first_message_only\u0018\u0007 \u0001(\b\"T\n\u0007ApiType\u0012%\n\u0017UNSUPPORTED_REST_LEGACY\u0010\u0000\u001a\b\b\u0001¨÷´\u008b\u0002\u0001\u0012\b\n\u0004REST\u0010\u0001\u0012\b\n\u0004GRPC\u0010\u0002\u0012\u000e\n\nDELTA_GRPC\u0010\u0003\"\u0018\n\u0016AggregatedConfigSource\"Z\n\u0010SelfConfigSource\u0012F\n\u0015transport_api_version\u0018\u0001 \u0001(\u000e2\u001d.envoy.api.v2.core.ApiVersionB\búB\u0005\u0082\u0001\u0002\u0010\u0001\"\u0086\u0001\n\u0011RateLimitSettings\u00120\n\nmax_tokens\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012?\n\tfill_rate\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.DoubleValueB\u000eúB\u000b\u0012\t!\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\"ï\u0002\n\fConfigSource\u0012\u000e\n\u0004path\u0018\u0001 \u0001(\tH\u0000\u0012?\n\u0011api_config_source\u0018\u0002 \u0001(\u000b2\".envoy.api.v2.core.ApiConfigSourceH\u0000\u00128\n\u0003ads\u0018\u0003 \u0001(\u000b2).envoy.api.v2.core.AggregatedConfigSourceH\u0000\u00123\n\u0004self\u0018\u0005 \u0001(\u000b2#.envoy.api.v2.core.SelfConfigSourceH\u0000\u00128\n\u0015initial_fetch_timeout\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012E\n\u0014resource_api_version\u0018\u0006 \u0001(\u000e2\u001d.envoy.api.v2.core.ApiVersionB\búB\u0005\u0082\u0001\u0002\u0010\u0001B\u001e\n\u0017config_source_specifier\u0012\u0003øB\u0001*.\n\nApiVersion\u0012\f\n\u0004AUTO\u0010\u0000\u001a\u0002\b\u0001\u0012\n\n\u0002V2\u0010\u0001\u001a\u0002\b\u0001\u0012\u0006\n\u0002V3\u0010\u0002BZ\n\u001fio.envoyproxy.envoy.api.v2.coreB\u0011ConfigSourceProtoP\u0001ò\u0098þ\u008f\u0005\u0016\u0012\u0014envoy.config.core.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{s.a(), com.google.protobuf.w.a(), p3.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46737a = bVar;
        f46738b = new GeneratedMessageV3.e(bVar, new String[]{"ApiType", "TransportApiVersion", "ClusterNames", "GrpcServices", "RefreshDelay", "RequestTimeout", "RateLimitSettings", "SetNodeOnFirstMessageOnly"});
        Descriptors.b bVar2 = a().m().get(1);
        f46739c = bVar2;
        f46740d = new GeneratedMessageV3.e(bVar2, new String[0]);
        Descriptors.b bVar3 = a().m().get(2);
        f46741e = bVar3;
        f46742f = new GeneratedMessageV3.e(bVar3, new String[]{"TransportApiVersion"});
        Descriptors.b bVar4 = a().m().get(3);
        f46743g = bVar4;
        f46744h = new GeneratedMessageV3.e(bVar4, new String[]{"MaxTokens", "FillRate"});
        Descriptors.b bVar5 = a().m().get(4);
        f46745i = bVar5;
        f46746j = new GeneratedMessageV3.e(bVar5, new String[]{"Path", "ApiConfigSource", "Ads", "Self", "InitialFetchTimeout", "ResourceApiVersion", "ConfigSourceSpecifier"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45759c);
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46747k, k10);
        s.a();
        com.google.protobuf.w.a();
        p3.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46747k;
    }
}
