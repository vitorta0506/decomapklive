package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.w;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46874a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46875b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46876c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46877d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46878e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46879f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f46880g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f46881h;

    /* renamed from: i  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46882i = Descriptors.FileDescriptor.s(new String[]{"\n/envoy/api/v2/endpoint/endpoint_components.proto\u0012\u0015envoy.api.v2.endpoint\u001a\u001fenvoy/api/v2/core/address.proto\u001a\u001cenvoy/api/v2/core/base.proto\u001a$envoy/api/v2/core/health_check.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"ß\u0001\n\bEndpoint\u0012+\n\u0007address\u0018\u0001 \u0001(\u000b2\u001a.envoy.api.v2.core.Address\u0012N\n\u0013health_check_config\u0018\u0002 \u0001(\u000b21.envoy.api.v2.endpoint.Endpoint.HealthCheckConfig\u0012\u0010\n\bhostname\u0018\u0003 \u0001(\t\u001aD\n\u0011HealthCheckConfig\u0012\u001d\n\nport_value\u0018\u0001 \u0001(\rB\túB\u0006*\u0004\u0018ÿÿ\u0003\u0012\u0010\n\bhostname\u0018\u0002 \u0001(\t\"\u009a\u0002\n\nLbEndpoint\u00123\n\bendpoint\u0018\u0001 \u0001(\u000b2\u001f.envoy.api.v2.endpoint.EndpointH\u0000\u0012\u0017\n\rendpoint_name\u0018\u0005 \u0001(\tH\u0000\u00126\n\rhealth_status\u0018\u0002 \u0001(\u000e2\u001f.envoy.api.v2.core.HealthStatus\u0012-\n\bmetadata\u0018\u0003 \u0001(\u000b2\u001b.envoy.api.v2.core.Metadata\u0012D\n\u0015load_balancing_weight\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001B\u0011\n\u000fhost_identifier\"\u0090\u0002\n\u0013LocalityLbEndpoints\u0012-\n\blocality\u0018\u0001 \u0001(\u000b2\u001b.envoy.api.v2.core.Locality\u00127\n\flb_endpoints\u0018\u0002 \u0003(\u000b2!.envoy.api.v2.endpoint.LbEndpoint\u0012D\n\u0015load_balancing_weight\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001\u0012\u001a\n\bpriority\u0018\u0005 \u0001(\rB\búB\u0005*\u0003\u0018\u0080\u0001\u0012/\n\tproximity\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueBh\n#io.envoyproxy.envoy.api.v2.endpointB\u0017EndpointComponentsProtoP\u0001ò\u0098þ\u008f\u0005\u001a\u0012\u0018envoy.config.endpoint.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a(), w.a(), p3.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46874a = bVar;
        f46875b = new GeneratedMessageV3.e(bVar, new String[]{"Address", "HealthCheckConfig", "Hostname"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f46876c = bVar2;
        f46877d = new GeneratedMessageV3.e(bVar2, new String[]{"PortValue", "Hostname"});
        Descriptors.b bVar3 = a().m().get(1);
        f46878e = bVar3;
        f46879f = new GeneratedMessageV3.e(bVar3, new String[]{"Endpoint", "EndpointName", "HealthStatus", "Metadata", "LoadBalancingWeight", "HostIdentifier"});
        Descriptors.b bVar4 = a().m().get(2);
        f46880g = bVar4;
        f46881h = new GeneratedMessageV3.e(bVar4, new String[]{"Locality", "LbEndpoints", "LoadBalancingWeight", "Priority", "Proximity"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46882i, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a();
        w.a();
        p3.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46882i;
    }
}
