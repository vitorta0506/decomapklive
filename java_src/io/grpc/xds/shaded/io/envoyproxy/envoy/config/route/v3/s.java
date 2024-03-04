package io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49517a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49518b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f49519c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f49520d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f49521e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f49522f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49523g = Descriptors.FileDescriptor.s(new String[]{"\n!envoy/config/route/v3/route.proto\u0012\u0015envoy.config.route.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a(envoy/config/core/v3/config_source.proto\u001a$envoy/config/core/v3/extension.proto\u001a,envoy/config/route/v3/route_components.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"ö\u0005\n\u0012RouteConfiguration\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00129\n\rvirtual_hosts\u0018\u0002 \u0003(\u000b2\".envoy.config.route.v3.VirtualHost\u0012)\n\u0004vhds\u0018\t \u0001(\u000b2\u001b.envoy.config.route.v3.Vhds\u0012/\n\u0015internal_only_headers\u0018\u0003 \u0003(\tB\u0010úB\r\u0092\u0001\n\"\br\u0006À\u0001\u0001È\u0001\u0000\u0012S\n\u0017response_headers_to_add\u0018\u0004 \u0003(\u000b2'.envoy.config.core.v3.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u00124\n\u001aresponse_headers_to_remove\u0018\u0005 \u0003(\tB\u0010úB\r\u0092\u0001\n\"\br\u0006À\u0001\u0001È\u0001\u0000\u0012R\n\u0016request_headers_to_add\u0018\u0006 \u0003(\u000b2'.envoy.config.core.v3.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u00123\n\u0019request_headers_to_remove\u0018\b \u0003(\tB\u0010úB\r\u0092\u0001\n\"\br\u0006À\u0001\u0001È\u0001\u0000\u0012+\n#most_specific_header_mutations_wins\u0018\n \u0001(\b\u00125\n\u0011validate_clusters\u0018\u0007 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012I\n#max_direct_response_body_size_bytes\u0018\u000b \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012P\n\u0019cluster_specifier_plugins\u0018\f \u0003(\u000b2-.envoy.config.route.v3.ClusterSpecifierPlugin:&\u009aÅ\u0088\u001e!\n\u001fenvoy.api.v2.RouteConfiguration\"W\n\u0016ClusterSpecifierPlugin\u0012=\n\textension\u0018\u0001 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\"e\n\u0004Vhds\u0012C\n\rconfig_source\u0018\u0001 \u0001(\u000b2\".envoy.config.core.v3.ConfigSourceB\búB\u0005\u008a\u0001\u0002\u0010\u0001:\u0018\u009aÅ\u0088\u001e\u0013\n\u0011envoy.api.v2.VhdsB;\n#io.envoyproxy.envoy.config.route.v3B\nRouteProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.v.a(), o.a(), p3.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49517a = bVar;
        f49518b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "VirtualHosts", "Vhds", "InternalOnlyHeaders", "ResponseHeadersToAdd", "ResponseHeadersToRemove", "RequestHeadersToAdd", "RequestHeadersToRemove", "MostSpecificHeaderMutationsWins", "ValidateClusters", "MaxDirectResponseBodySizeBytes", "ClusterSpecifierPlugins"});
        Descriptors.b bVar2 = a().m().get(1);
        f49519c = bVar2;
        f49520d = new GeneratedMessageV3.e(bVar2, new String[]{"Extension"});
        Descriptors.b bVar3 = a().m().get(2);
        f49521e = bVar3;
        f49522f = new GeneratedMessageV3.e(bVar3, new String[]{"ConfigSource"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49523g, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.v.a();
        o.a();
        p3.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49523g;
    }
}
