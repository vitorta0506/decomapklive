package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes5.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f47000a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f47001b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f47002c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f47003d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f47004e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f47005f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f47006g = Descriptors.FileDescriptor.s(new String[]{"\n\u001fenvoy/api/v2/scoped_route.proto\u0012\fenvoy.api.v2\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"¨\u0002\n\u0018ScopedRouteConfiguration\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012)\n\u0018route_configuration_name\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012A\n\u0003key\u0018\u0003 \u0001(\u000b2*.envoy.api.v2.ScopedRouteConfiguration.KeyB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u001a\u0086\u0001\n\u0003Key\u0012P\n\tfragments\u0018\u0001 \u0003(\u000b23.envoy.api.v2.ScopedRouteConfiguration.Key.FragmentB\búB\u0005\u0092\u0001\u0002\b\u0001\u001a-\n\bFragment\u0012\u0014\n\nstring_key\u0018\u0001 \u0001(\tH\u0000B\u000b\n\u0004type\u0012\u0003øB\u0001BU\n\u001aio.envoyproxy.envoy.api.v2B\u0010ScopedRouteProtoP\u0001ò\u0098þ\u008f\u0005\u0017\u0012\u0015envoy.config.route.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f47000a = bVar;
        f47001b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "RouteConfigurationName", "Key"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f47002c = bVar2;
        f47003d = new GeneratedMessageV3.e(bVar2, new String[]{"Fragments"});
        Descriptors.b bVar3 = bVar2.o().get(0);
        f47004e = bVar3;
        f47005f = new GeneratedMessageV3.e(bVar3, new String[]{"StringKey", "Type"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f47006g, k10);
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f47006g;
    }
}
