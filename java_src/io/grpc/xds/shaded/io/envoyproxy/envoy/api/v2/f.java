package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes5.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46894a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46895b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46896c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46897d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46898e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46899f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f46900g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f46901h;

    /* renamed from: i  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46902i = Descriptors.FileDescriptor.s(new String[]{"\n\u001benvoy/api/v2/endpoint.proto\u0012\fenvoy.api.v2\u001a/envoy/api/v2/endpoint/endpoint_components.proto\u001a\u0018envoy/type/percent.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"Ñ\u0005\n\u0015ClusterLoadAssignment\u0012\u001d\n\fcluster_name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012=\n\tendpoints\u0018\u0002 \u0003(\u000b2*.envoy.api.v2.endpoint.LocalityLbEndpoints\u0012P\n\u000fnamed_endpoints\u0018\u0005 \u0003(\u000b27.envoy.api.v2.ClusterLoadAssignment.NamedEndpointsEntry\u0012:\n\u0006policy\u0018\u0004 \u0001(\u000b2*.envoy.api.v2.ClusterLoadAssignment.Policy\u001aó\u0002\n\u0006Policy\u0012O\n\u000edrop_overloads\u0018\u0002 \u0003(\u000b27.envoy.api.v2.ClusterLoadAssignment.Policy.DropOverload\u0012F\n\u0017overprovisioning_factor\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002 \u0000\u0012A\n\u0014endpoint_stale_after\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u0012$\n\u0018disable_overprovisioning\u0018\u0005 \u0001(\bB\u0002\u0018\u0001\u001aa\n\fDropOverload\u0012\u0019\n\bcategory\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u00126\n\u000fdrop_percentage\u0018\u0002 \u0001(\u000b2\u001d.envoy.type.FractionalPercentJ\u0004\b\u0001\u0010\u0002\u001aV\n\u0013NamedEndpointsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012.\n\u0005value\u0018\u0002 \u0001(\u000b2\u001f.envoy.api.v2.endpoint.Endpoint:\u00028\u0001BU\n\u001aio.envoyproxy.envoy.api.v2B\rEndpointProtoP\u0001ò\u0098þ\u008f\u0005\u001a\u0012\u0018envoy.config.endpoint.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.g.a(), w.a(), p3.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46894a = bVar;
        f46895b = new GeneratedMessageV3.e(bVar, new String[]{"ClusterName", "Endpoints", "NamedEndpoints", "Policy"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f46896c = bVar2;
        f46897d = new GeneratedMessageV3.e(bVar2, new String[]{"DropOverloads", "OverprovisioningFactor", "EndpointStaleAfter", "DisableOverprovisioning"});
        Descriptors.b bVar3 = bVar2.o().get(0);
        f46898e = bVar3;
        f46899f = new GeneratedMessageV3.e(bVar3, new String[]{"Category", "DropPercentage"});
        Descriptors.b bVar4 = bVar.o().get(1);
        f46900g = bVar4;
        f46901h = new GeneratedMessageV3.e(bVar4, new String[]{"Key", "Value"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46902i, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint.b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.g.a();
        w.a();
        p3.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46902i;
    }
}
