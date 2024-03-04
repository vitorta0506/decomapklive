package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.http.fault.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.route.v3.o;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49721a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49722b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f49723c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f49724d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f49725e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f49726f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49727g = Descriptors.FileDescriptor.s(new String[]{"\n2envoy/extensions/filters/http/fault/v3/fault.proto\u0012&envoy.extensions.filters.http.fault.v3\u001a,envoy/config/route/v3/route_components.proto\u001a4envoy/extensions/filters/common/fault/v3/fault.proto\u001a\u001benvoy/type/v3/percent.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"ó\u0002\n\nFaultAbort\u0012\"\n\u000bhttp_status\u0018\u0002 \u0001(\rB\u000búB\b*\u0006\u0010Ø\u0004(È\u0001H\u0000\u0012\u0015\n\u000bgrpc_status\u0018\u0005 \u0001(\rH\u0000\u0012V\n\fheader_abort\u0018\u0004 \u0001(\u000b2>.envoy.extensions.filters.http.fault.v3.FaultAbort.HeaderAbortH\u0000\u00124\n\npercentage\u0018\u0003 \u0001(\u000b2 .envoy.type.v3.FractionalPercent\u001aN\n\u000bHeaderAbort:?\u009aÅ\u0088\u001e:\n8envoy.config.filter.http.fault.v2.FaultAbort.HeaderAbort:3\u009aÅ\u0088\u001e.\n,envoy.config.filter.http.fault.v2.FaultAbortB\u0011\n\nerror_type\u0012\u0003øB\u0001J\u0004\b\u0001\u0010\u0002\"à\u0005\n\tHTTPFault\u0012C\n\u0005delay\u0018\u0001 \u0001(\u000b24.envoy.extensions.filters.common.fault.v3.FaultDelay\u0012A\n\u0005abort\u0018\u0002 \u0001(\u000b22.envoy.extensions.filters.http.fault.v3.FaultAbort\u0012\u0018\n\u0010upstream_cluster\u0018\u0003 \u0001(\t\u00125\n\u0007headers\u0018\u0004 \u0003(\u000b2$.envoy.config.route.v3.HeaderMatcher\u0012\u0018\n\u0010downstream_nodes\u0018\u0005 \u0003(\t\u00127\n\u0011max_active_faults\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012U\n\u0013response_rate_limit\u0018\u0007 \u0001(\u000b28.envoy.extensions.filters.common.fault.v3.FaultRateLimit\u0012\u001d\n\u0015delay_percent_runtime\u0018\b \u0001(\t\u0012\u001d\n\u0015abort_percent_runtime\u0018\t \u0001(\t\u0012\u001e\n\u0016delay_duration_runtime\u0018\n \u0001(\t\u0012!\n\u0019abort_http_status_runtime\u0018\u000b \u0001(\t\u0012!\n\u0019max_active_faults_runtime\u0018\f \u0001(\t\u0012+\n#response_rate_limit_percent_runtime\u0018\r \u0001(\t\u0012!\n\u0019abort_grpc_status_runtime\u0018\u000e \u0001(\t\u0012(\n disable_downstream_cluster_stats\u0018\u000f \u0001(\b:2\u009aÅ\u0088\u001e-\n+envoy.config.filter.http.fault.v2.HTTPFaultBL\n4io.envoyproxy.envoy.extensions.filters.http.fault.v3B\nFaultProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{o.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.common.fault.v3.b.a(), g.a(), p3.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49721a = bVar;
        f49722b = new GeneratedMessageV3.e(bVar, new String[]{"HttpStatus", "GrpcStatus", "HeaderAbort", "Percentage", "ErrorType"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f49723c = bVar2;
        f49724d = new GeneratedMessageV3.e(bVar2, new String[0]);
        Descriptors.b bVar3 = a().m().get(1);
        f49725e = bVar3;
        f49726f = new GeneratedMessageV3.e(bVar3, new String[]{"Delay", "Abort", "UpstreamCluster", "Headers", "DownstreamNodes", "MaxActiveFaults", "ResponseRateLimit", "DelayPercentRuntime", "AbortPercentRuntime", "DelayDurationRuntime", "AbortHttpStatusRuntime", "MaxActiveFaultsRuntime", "ResponseRateLimitPercentRuntime", "AbortGrpcStatusRuntime", "DisableDownstreamClusterStats"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49727g, k10);
        o.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.common.fault.v3.b.a();
        g.a();
        p3.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49727g;
    }
}
