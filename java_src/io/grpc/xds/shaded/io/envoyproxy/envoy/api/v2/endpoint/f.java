package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.endpoint;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.v2;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46883a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46884b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46885c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46886d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46887e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46888f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f46889g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f46890h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f46891i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f46892j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46893k = Descriptors.FileDescriptor.s(new String[]{"\n'envoy/api/v2/endpoint/load_report.proto\u0012\u0015envoy.api.v2.endpoint\u001a\u001fenvoy/api/v2/core/address.proto\u001a\u001cenvoy/api/v2/core/base.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"ö\u0002\n\u0015UpstreamLocalityStats\u0012-\n\blocality\u0018\u0001 \u0001(\u000b2\u001b.envoy.api.v2.core.Locality\u0012!\n\u0019total_successful_requests\u0018\u0002 \u0001(\u0004\u0012\"\n\u001atotal_requests_in_progress\u0018\u0003 \u0001(\u0004\u0012\u001c\n\u0014total_error_requests\u0018\u0004 \u0001(\u0004\u0012\u001d\n\u0015total_issued_requests\u0018\b \u0001(\u0004\u0012I\n\u0011load_metric_stats\u0018\u0005 \u0003(\u000b2..envoy.api.v2.endpoint.EndpointLoadMetricStats\u0012M\n\u0017upstream_endpoint_stats\u0018\u0007 \u0003(\u000b2,.envoy.api.v2.endpoint.UpstreamEndpointStats\u0012\u0010\n\bpriority\u0018\u0006 \u0001(\r\"¾\u0002\n\u0015UpstreamEndpointStats\u0012+\n\u0007address\u0018\u0001 \u0001(\u000b2\u001a.envoy.api.v2.core.Address\u0012)\n\bmetadata\u0018\u0006 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012!\n\u0019total_successful_requests\u0018\u0002 \u0001(\u0004\u0012\"\n\u001atotal_requests_in_progress\u0018\u0003 \u0001(\u0004\u0012\u001c\n\u0014total_error_requests\u0018\u0004 \u0001(\u0004\u0012\u001d\n\u0015total_issued_requests\u0018\u0007 \u0001(\u0004\u0012I\n\u0011load_metric_stats\u0018\u0005 \u0003(\u000b2..envoy.api.v2.endpoint.EndpointLoadMetricStats\"u\n\u0017EndpointLoadMetricStats\u0012\u0013\n\u000bmetric_name\u0018\u0001 \u0001(\t\u0012)\n!num_requests_finished_with_metric\u0018\u0002 \u0001(\u0004\u0012\u001a\n\u0012total_metric_value\u0018\u0003 \u0001(\u0001\"\u0091\u0003\n\fClusterStats\u0012\u001d\n\fcluster_name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012\u001c\n\u0014cluster_service_name\u0018\u0006 \u0001(\t\u0012W\n\u0017upstream_locality_stats\u0018\u0002 \u0003(\u000b2,.envoy.api.v2.endpoint.UpstreamLocalityStatsB\búB\u0005\u0092\u0001\u0002\b\u0001\u0012\u001e\n\u0016total_dropped_requests\u0018\u0003 \u0001(\u0004\u0012M\n\u0010dropped_requests\u0018\u0005 \u0003(\u000b23.envoy.api.v2.endpoint.ClusterStats.DroppedRequests\u00127\n\u0014load_report_interval\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u001aC\n\u000fDroppedRequests\u0012\u0019\n\bcategory\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012\u0015\n\rdropped_count\u0018\u0002 \u0001(\u0004B`\n#io.envoyproxy.envoy.api.v2.endpointB\u000fLoadReportProtoP\u0001ò\u0098þ\u008f\u0005\u001a\u0012\u0018envoy.config.endpoint.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a(), w.a(), v2.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46883a = bVar;
        f46884b = new GeneratedMessageV3.e(bVar, new String[]{"Locality", "TotalSuccessfulRequests", "TotalRequestsInProgress", "TotalErrorRequests", "TotalIssuedRequests", "LoadMetricStats", "UpstreamEndpointStats", "Priority"});
        Descriptors.b bVar2 = a().m().get(1);
        f46885c = bVar2;
        f46886d = new GeneratedMessageV3.e(bVar2, new String[]{"Address", "Metadata", "TotalSuccessfulRequests", "TotalRequestsInProgress", "TotalErrorRequests", "TotalIssuedRequests", "LoadMetricStats"});
        Descriptors.b bVar3 = a().m().get(2);
        f46887e = bVar3;
        f46888f = new GeneratedMessageV3.e(bVar3, new String[]{"MetricName", "NumRequestsFinishedWithMetric", "TotalMetricValue"});
        Descriptors.b bVar4 = a().m().get(3);
        f46889g = bVar4;
        f46890h = new GeneratedMessageV3.e(bVar4, new String[]{"ClusterName", "ClusterServiceName", "UpstreamLocalityStats", "TotalDroppedRequests", "DroppedRequests", "LoadReportInterval"});
        Descriptors.b bVar5 = bVar4.o().get(0);
        f46891i = bVar5;
        f46892j = new GeneratedMessageV3.e(bVar5, new String[]{"Category", "DroppedCount"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46893k, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a();
        w.a();
        v2.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46893k;
    }
}
