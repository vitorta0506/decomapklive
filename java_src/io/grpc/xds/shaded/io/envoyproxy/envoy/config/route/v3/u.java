package io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49524a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49525b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f49526c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f49527d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f49528e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f49529f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49530g = Descriptors.FileDescriptor.s(new String[]{"\n(envoy/config/route/v3/scoped_route.proto\u0012\u0015envoy.config.route.v3\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"è\u0003\n\u0018ScopedRouteConfiguration\u0012\u0011\n\ton_demand\u0018\u0004 \u0001(\b\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012)\n\u0018route_configuration_name\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012J\n\u0003key\u0018\u0003 \u0001(\u000b23.envoy.config.route.v3.ScopedRouteConfiguration.KeyB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u001aü\u0001\n\u0003Key\u0012Y\n\tfragments\u0018\u0001 \u0003(\u000b2<.envoy.config.route.v3.ScopedRouteConfiguration.Key.FragmentB\búB\u0005\u0092\u0001\u0002\b\u0001\u001ah\n\bFragment\u0012\u0014\n\nstring_key\u0018\u0001 \u0001(\tH\u0000:9\u009aÅ\u0088\u001e4\n2envoy.api.v2.ScopedRouteConfiguration.Key.FragmentB\u000b\n\u0004type\u0012\u0003øB\u0001:0\u009aÅ\u0088\u001e+\n)envoy.api.v2.ScopedRouteConfiguration.Key:,\u009aÅ\u0088\u001e'\n%envoy.api.v2.ScopedRouteConfigurationBA\n#io.envoyproxy.envoy.config.route.v3B\u0010ScopedRouteProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49524a = bVar;
        f49525b = new GeneratedMessageV3.e(bVar, new String[]{"OnDemand", "Name", "RouteConfigurationName", "Key"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f49526c = bVar2;
        f49527d = new GeneratedMessageV3.e(bVar2, new String[]{"Fragments"});
        Descriptors.b bVar3 = bVar2.o().get(0);
        f49528e = bVar3;
        f49529f = new GeneratedMessageV3.e(bVar3, new String[]{"StringKey", "Type"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49530g, k10);
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49530g;
    }
}
