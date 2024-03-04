package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes5.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46995a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46996b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46997c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46998d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46999e = Descriptors.FileDescriptor.s(new String[]{"\n\u0018envoy/api/v2/route.proto\u0012\fenvoy.api.v2\u001a\u001cenvoy/api/v2/core/base.proto\u001a%envoy/api/v2/core/config_source.proto\u001a)envoy/api/v2/route/route_components.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u009f\u0004\n\u0012RouteConfiguration\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00126\n\rvirtual_hosts\u0018\u0002 \u0003(\u000b2\u001f.envoy.api.v2.route.VirtualHost\u0012 \n\u0004vhds\u0018\t \u0001(\u000b2\u0012.envoy.api.v2.Vhds\u0012/\n\u0015internal_only_headers\u0018\u0003 \u0003(\tB\u0010úB\r\u0092\u0001\n\"\br\u0006À\u0001\u0001È\u0001\u0000\u0012P\n\u0017response_headers_to_add\u0018\u0004 \u0003(\u000b2$.envoy.api.v2.core.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u00124\n\u001aresponse_headers_to_remove\u0018\u0005 \u0003(\tB\u0010úB\r\u0092\u0001\n\"\br\u0006À\u0001\u0001È\u0001\u0000\u0012O\n\u0016request_headers_to_add\u0018\u0006 \u0003(\u000b2$.envoy.api.v2.core.HeaderValueOptionB\túB\u0006\u0092\u0001\u0003\u0010è\u0007\u00123\n\u0019request_headers_to_remove\u0018\b \u0003(\tB\u0010úB\r\u0092\u0001\n\"\br\u0006À\u0001\u0001È\u0001\u0000\u0012+\n#most_specific_header_mutations_wins\u0018\n \u0001(\b\u00125\n\u0011validate_clusters\u0018\u0007 \u0001(\u000b2\u001a.google.protobuf.BoolValue\"H\n\u0004Vhds\u0012@\n\rconfig_source\u0018\u0001 \u0001(\u000b2\u001f.envoy.api.v2.core.ConfigSourceB\búB\u0005\u008a\u0001\u0002\u0010\u0001BO\n\u001aio.envoyproxy.envoy.api.v2B\nRouteProtoP\u0001ò\u0098þ\u008f\u0005\u0017\u0012\u0015envoy.config.route.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.l.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.l.a(), p3.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46995a = bVar;
        f46996b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "VirtualHosts", "Vhds", "InternalOnlyHeaders", "ResponseHeadersToAdd", "ResponseHeadersToRemove", "RequestHeadersToAdd", "RequestHeadersToRemove", "MostSpecificHeaderMutationsWins", "ValidateClusters"});
        Descriptors.b bVar2 = a().m().get(1);
        f46997c = bVar2;
        f46998d = new GeneratedMessageV3.e(bVar2, new String[]{"ConfigSource"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46999e, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.l.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.l.a();
        p3.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46999e;
    }
}
