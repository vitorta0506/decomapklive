package io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48414a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48415b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48416c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48417d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48418e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48419f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48420g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48421h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f48422i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f48423j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f48424k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f48425l;

    /* renamed from: m  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48426m = Descriptors.FileDescriptor.s(new String[]{"\n2envoy/config/endpoint/v3/endpoint_components.proto\u0012\u0018envoy.config.endpoint.v3\u001a\"envoy/config/core/v3/address.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a(envoy/config/core/v3/config_source.proto\u001a'envoy/config/core/v3/health_check.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"Å\u0002\n\bEndpoint\u0012.\n\u0007address\u0018\u0001 \u0001(\u000b2\u001d.envoy.config.core.v3.Address\u0012Q\n\u0013health_check_config\u0018\u0002 \u0001(\u000b24.envoy.config.endpoint.v3.Endpoint.HealthCheckConfig\u0012\u0010\n\bhostname\u0018\u0003 \u0001(\t\u001a}\n\u0011HealthCheckConfig\u0012\u001d\n\nport_value\u0018\u0001 \u0001(\rB\túB\u0006*\u0004\u0018ÿÿ\u0003\u0012\u0010\n\bhostname\u0018\u0002 \u0001(\t:7\u009aÅ\u0088\u001e2\n0envoy.api.v2.endpoint.Endpoint.HealthCheckConfig:%\u009aÅ\u0088\u001e \n\u001eenvoy.api.v2.endpoint.Endpoint\"Ì\u0002\n\nLbEndpoint\u00126\n\bendpoint\u0018\u0001 \u0001(\u000b2\".envoy.config.endpoint.v3.EndpointH\u0000\u0012\u0017\n\rendpoint_name\u0018\u0005 \u0001(\tH\u0000\u00129\n\rhealth_status\u0018\u0002 \u0001(\u000e2\".envoy.config.core.v3.HealthStatus\u00120\n\bmetadata\u0018\u0003 \u0001(\u000b2\u001e.envoy.config.core.v3.Metadata\u0012D\n\u0015load_balancing_weight\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001:'\u009aÅ\u0088\u001e\"\n envoy.api.v2.endpoint.LbEndpointB\u0011\n\u000fhost_identifier\"r\n\u0019LedsClusterLocalityConfig\u00127\n\u000bleds_config\u0018\u0001 \u0001(\u000b2\".envoy.config.core.v3.ConfigSource\u0012\u001c\n\u0014leds_collection_name\u0018\u0002 \u0001(\t\"á\u0004\n\u0013LocalityLbEndpoints\u00120\n\blocality\u0018\u0001 \u0001(\u000b2\u001e.envoy.config.core.v3.Locality\u0012:\n\flb_endpoints\u0018\u0002 \u0003(\u000b2$.envoy.config.endpoint.v3.LbEndpoint\u0012_\n\u0017load_balancer_endpoints\u0018\u0007 \u0001(\u000b2<.envoy.config.endpoint.v3.LocalityLbEndpoints.LbEndpointListH\u0000\u0012[\n\u001cleds_cluster_locality_config\u0018\b \u0001(\u000b23.envoy.config.endpoint.v3.LedsClusterLocalityConfigH\u0000\u0012D\n\u0015load_balancing_weight\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001\u0012\u001a\n\bpriority\u0018\u0005 \u0001(\rB\búB\u0005*\u0003\u0018\u0080\u0001\u0012/\n\tproximity\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u001aL\n\u000eLbEndpointList\u0012:\n\flb_endpoints\u0018\u0001 \u0003(\u000b2$.envoy.config.endpoint.v3.LbEndpoint:0\u009aÅ\u0088\u001e+\n)envoy.api.v2.endpoint.LocalityLbEndpointsB\u000b\n\tlb_configBK\n&io.envoyproxy.envoy.config.endpoint.v3B\u0017EndpointComponentsProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l.a(), b0.a(), p3.a(), Migrate.g(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48414a = bVar;
        f48415b = new GeneratedMessageV3.e(bVar, new String[]{"Address", "HealthCheckConfig", "Hostname"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f48416c = bVar2;
        f48417d = new GeneratedMessageV3.e(bVar2, new String[]{"PortValue", "Hostname"});
        Descriptors.b bVar3 = a().m().get(1);
        f48418e = bVar3;
        f48419f = new GeneratedMessageV3.e(bVar3, new String[]{"Endpoint", "EndpointName", "HealthStatus", "Metadata", "LoadBalancingWeight", "HostIdentifier"});
        Descriptors.b bVar4 = a().m().get(2);
        f48420g = bVar4;
        f48421h = new GeneratedMessageV3.e(bVar4, new String[]{"LedsConfig", "LedsCollectionName"});
        Descriptors.b bVar5 = a().m().get(3);
        f48422i = bVar5;
        f48423j = new GeneratedMessageV3.e(bVar5, new String[]{"Locality", "LbEndpoints", "LoadBalancerEndpoints", "LedsClusterLocalityConfig", "LoadBalancingWeight", "Priority", "Proximity", "LbConfig"});
        Descriptors.b bVar6 = bVar5.o().get(0);
        f48424k = bVar6;
        f48425l = new GeneratedMessageV3.e(bVar6, new String[]{"LbEndpoints"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48426m, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l.a();
        b0.a();
        p3.a();
        Migrate.g();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48426m;
    }
}
