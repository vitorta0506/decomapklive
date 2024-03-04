package io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48427a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48428b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48429c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48430d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48431e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48432f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48433g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48434h;

    /* renamed from: i  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48435i = Descriptors.FileDescriptor.s(new String[]{"\n'envoy/config/endpoint/v3/endpoint.proto\u0012\u0018envoy.config.endpoint.v3\u001a2envoy/config/endpoint/v3/endpoint_components.proto\u001a\u001benvoy/type/v3/percent.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u0095\u0007\n\u0015ClusterLoadAssignment\u0012\u001d\n\fcluster_name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012@\n\tendpoints\u0018\u0002 \u0003(\u000b2-.envoy.config.endpoint.v3.LocalityLbEndpoints\u0012\\\n\u000fnamed_endpoints\u0018\u0005 \u0003(\u000b2C.envoy.config.endpoint.v3.ClusterLoadAssignment.NamedEndpointsEntry\u0012F\n\u0006policy\u0018\u0004 \u0001(\u000b26.envoy.config.endpoint.v3.ClusterLoadAssignment.Policy\u001aî\u0003\n\u0006Policy\u0012[\n\u000edrop_overloads\u0018\u0002 \u0003(\u000b2C.envoy.config.endpoint.v3.ClusterLoadAssignment.Policy.DropOverload\u0012F\n\u0017overprovisioning_factor\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002 \u0000\u0012A\n\u0014endpoint_stale_after\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000\u001a£\u0001\n\fDropOverload\u0012\u0019\n\bcategory\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u00129\n\u000fdrop_percentage\u0018\u0002 \u0001(\u000b2 .envoy.type.v3.FractionalPercent:=\u009aÅ\u0088\u001e8\n6envoy.api.v2.ClusterLoadAssignment.Policy.DropOverload:0\u009aÅ\u0088\u001e+\n)envoy.api.v2.ClusterLoadAssignment.PolicyJ\u0004\b\u0001\u0010\u0002J\u0004\b\u0005\u0010\u0006R\u0018disable_overprovisioning\u001aY\n\u0013NamedEndpointsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u00121\n\u0005value\u0018\u0002 \u0001(\u000b2\".envoy.config.endpoint.v3.Endpoint:\u00028\u0001:)\u009aÅ\u0088\u001e$\n\"envoy.api.v2.ClusterLoadAssignmentBA\n&io.envoyproxy.envoy.config.endpoint.v3B\rEndpointProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{c.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a(), w.a(), p3.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48427a = bVar;
        f48428b = new GeneratedMessageV3.e(bVar, new String[]{"ClusterName", "Endpoints", "NamedEndpoints", "Policy"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f48429c = bVar2;
        f48430d = new GeneratedMessageV3.e(bVar2, new String[]{"DropOverloads", "OverprovisioningFactor", "EndpointStaleAfter"});
        Descriptors.b bVar3 = bVar2.o().get(0);
        f48431e = bVar3;
        f48432f = new GeneratedMessageV3.e(bVar3, new String[]{"Category", "DropPercentage"});
        Descriptors.b bVar4 = bVar.o().get(1);
        f48433g = bVar4;
        f48434h = new GeneratedMessageV3.e(bVar4, new String[]{"Key", "Value"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48435i, k10);
        c.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g.a();
        w.a();
        p3.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48435i;
    }
}
