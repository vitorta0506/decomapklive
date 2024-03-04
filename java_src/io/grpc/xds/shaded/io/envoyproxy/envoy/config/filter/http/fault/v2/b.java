package io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.http.fault.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.route.l;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.g;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48577a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48578b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48579c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48580d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48581e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48582f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48583g = Descriptors.FileDescriptor.s(new String[]{"\n-envoy/config/filter/http/fault/v2/fault.proto\u0012!envoy.config.filter.http.fault.v2\u001a)envoy/api/v2/route/route_components.proto\u001a(envoy/config/filter/fault/v2/fault.proto\u001a\u0018envoy/type/percent.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"Þ\u0001\n\nFaultAbort\u0012\"\n\u000bhttp_status\u0018\u0002 \u0001(\rB\u000búB\b*\u0006\u0010Ø\u0004(È\u0001H\u0000\u0012Q\n\fheader_abort\u0018\u0004 \u0001(\u000b29.envoy.config.filter.http.fault.v2.FaultAbort.HeaderAbortH\u0000\u00121\n\npercentage\u0018\u0003 \u0001(\u000b2\u001d.envoy.type.FractionalPercent\u001a\r\n\u000bHeaderAbortB\u0011\n\nerror_type\u0012\u0003øB\u0001J\u0004\b\u0001\u0010\u0002\"¿\u0004\n\tHTTPFault\u00127\n\u0005delay\u0018\u0001 \u0001(\u000b2(.envoy.config.filter.fault.v2.FaultDelay\u0012<\n\u0005abort\u0018\u0002 \u0001(\u000b2-.envoy.config.filter.http.fault.v2.FaultAbort\u0012\u0018\n\u0010upstream_cluster\u0018\u0003 \u0001(\t\u00122\n\u0007headers\u0018\u0004 \u0003(\u000b2!.envoy.api.v2.route.HeaderMatcher\u0012\u0018\n\u0010downstream_nodes\u0018\u0005 \u0003(\t\u00127\n\u0011max_active_faults\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012I\n\u0013response_rate_limit\u0018\u0007 \u0001(\u000b2,.envoy.config.filter.fault.v2.FaultRateLimit\u0012\u001d\n\u0015delay_percent_runtime\u0018\b \u0001(\t\u0012\u001d\n\u0015abort_percent_runtime\u0018\t \u0001(\t\u0012\u001e\n\u0016delay_duration_runtime\u0018\n \u0001(\t\u0012!\n\u0019abort_http_status_runtime\u0018\u000b \u0001(\t\u0012!\n\u0019max_active_faults_runtime\u0018\f \u0001(\t\u0012+\n#response_rate_limit_percent_runtime\u0018\r \u0001(\tBu\n/io.envoyproxy.envoy.config.filter.http.fault.v2B\nFaultProtoP\u0001ò\u0098þ\u008f\u0005(\u0012&envoy.extensions.filters.http.fault.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{l.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.a(), g.a(), p3.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48577a = bVar;
        f48578b = new GeneratedMessageV3.e(bVar, new String[]{"HttpStatus", "HeaderAbort", "Percentage", "ErrorType"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f48579c = bVar2;
        f48580d = new GeneratedMessageV3.e(bVar2, new String[0]);
        Descriptors.b bVar3 = a().m().get(1);
        f48581e = bVar3;
        f48582f = new GeneratedMessageV3.e(bVar3, new String[]{"Delay", "Abort", "UpstreamCluster", "Headers", "DownstreamNodes", "MaxActiveFaults", "ResponseRateLimit", "DelayPercentRuntime", "AbortPercentRuntime", "DelayDurationRuntime", "AbortHttpStatusRuntime", "MaxActiveFaultsRuntime", "ResponseRateLimitPercentRuntime"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48583g, k10);
        l.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2.b.a();
        g.a();
        p3.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48583g;
    }
}
