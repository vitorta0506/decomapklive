package io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.v2;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48436a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48437b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48438c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48439d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48440e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48441f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48442g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48443h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f48444i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f48445j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48446k = Descriptors.FileDescriptor.s(new String[]{"\n*envoy/config/endpoint/v3/load_report.proto\u0012\u0018envoy.config.endpoint.v3\u001a\"envoy/config/core/v3/address.proto\u001a\u001fenvoy/config/core/v3/base.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"³\u0003\n\u0015UpstreamLocalityStats\u00120\n\blocality\u0018\u0001 \u0001(\u000b2\u001e.envoy.config.core.v3.Locality\u0012!\n\u0019total_successful_requests\u0018\u0002 \u0001(\u0004\u0012\"\n\u001atotal_requests_in_progress\u0018\u0003 \u0001(\u0004\u0012\u001c\n\u0014total_error_requests\u0018\u0004 \u0001(\u0004\u0012\u001d\n\u0015total_issued_requests\u0018\b \u0001(\u0004\u0012L\n\u0011load_metric_stats\u0018\u0005 \u0003(\u000b21.envoy.config.endpoint.v3.EndpointLoadMetricStats\u0012P\n\u0017upstream_endpoint_stats\u0018\u0007 \u0003(\u000b2/.envoy.config.endpoint.v3.UpstreamEndpointStats\u0012\u0010\n\bpriority\u0018\u0006 \u0001(\r:2\u009aÅ\u0088\u001e-\n+envoy.api.v2.endpoint.UpstreamLocalityStats\"ø\u0002\n\u0015UpstreamEndpointStats\u0012.\n\u0007address\u0018\u0001 \u0001(\u000b2\u001d.envoy.config.core.v3.Address\u0012)\n\bmetadata\u0018\u0006 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012!\n\u0019total_successful_requests\u0018\u0002 \u0001(\u0004\u0012\"\n\u001atotal_requests_in_progress\u0018\u0003 \u0001(\u0004\u0012\u001c\n\u0014total_error_requests\u0018\u0004 \u0001(\u0004\u0012\u001d\n\u0015total_issued_requests\u0018\u0007 \u0001(\u0004\u0012L\n\u0011load_metric_stats\u0018\u0005 \u0003(\u000b21.envoy.config.endpoint.v3.EndpointLoadMetricStats:2\u009aÅ\u0088\u001e-\n+envoy.api.v2.endpoint.UpstreamEndpointStats\"«\u0001\n\u0017EndpointLoadMetricStats\u0012\u0013\n\u000bmetric_name\u0018\u0001 \u0001(\t\u0012)\n!num_requests_finished_with_metric\u0018\u0002 \u0001(\u0004\u0012\u001a\n\u0012total_metric_value\u0018\u0003 \u0001(\u0001:4\u009aÅ\u0088\u001e/\n-envoy.api.v2.endpoint.EndpointLoadMetricStats\"ý\u0003\n\fClusterStats\u0012\u001d\n\fcluster_name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012\u001c\n\u0014cluster_service_name\u0018\u0006 \u0001(\t\u0012Z\n\u0017upstream_locality_stats\u0018\u0002 \u0003(\u000b2/.envoy.config.endpoint.v3.UpstreamLocalityStatsB\búB\u0005\u0092\u0001\u0002\b\u0001\u0012\u001e\n\u0016total_dropped_requests\u0018\u0003 \u0001(\u0004\u0012P\n\u0010dropped_requests\u0018\u0005 \u0003(\u000b26.envoy.config.endpoint.v3.ClusterStats.DroppedRequests\u00127\n\u0014load_report_interval\u0018\u0004 \u0001(\u000b2\u0019.google.protobuf.Duration\u001a~\n\u000fDroppedRequests\u0012\u0019\n\bcategory\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012\u0015\n\rdropped_count\u0018\u0002 \u0001(\u0004:9\u009aÅ\u0088\u001e4\n2envoy.api.v2.endpoint.ClusterStats.DroppedRequests:)\u009aÅ\u0088\u001e$\n\"envoy.api.v2.endpoint.ClusterStatsBC\n&io.envoyproxy.envoy.config.endpoint.v3B\u000fLoadReportProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a(), w.a(), v2.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48436a = bVar;
        f48437b = new GeneratedMessageV3.e(bVar, new String[]{"Locality", "TotalSuccessfulRequests", "TotalRequestsInProgress", "TotalErrorRequests", "TotalIssuedRequests", "LoadMetricStats", "UpstreamEndpointStats", "Priority"});
        Descriptors.b bVar2 = a().m().get(1);
        f48438c = bVar2;
        f48439d = new GeneratedMessageV3.e(bVar2, new String[]{"Address", "Metadata", "TotalSuccessfulRequests", "TotalRequestsInProgress", "TotalErrorRequests", "TotalIssuedRequests", "LoadMetricStats"});
        Descriptors.b bVar3 = a().m().get(2);
        f48440e = bVar3;
        f48441f = new GeneratedMessageV3.e(bVar3, new String[]{"MetricName", "NumRequestsFinishedWithMetric", "TotalMetricValue"});
        Descriptors.b bVar4 = a().m().get(3);
        f48442g = bVar4;
        f48443h = new GeneratedMessageV3.e(bVar4, new String[]{"ClusterName", "ClusterServiceName", "UpstreamLocalityStats", "TotalDroppedRequests", "DroppedRequests", "LoadReportInterval"});
        Descriptors.b bVar5 = bVar4.o().get(0);
        f48444i = bVar5;
        f48445j = new GeneratedMessageV3.e(bVar5, new String[]{"Category", "DroppedCount"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48446k, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a();
        w.a();
        v2.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48446k;
    }
}
