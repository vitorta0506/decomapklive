package io.grpc.xds.shaded.io.envoyproxy.envoy.service.load_stats.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.endpoint.v3.i;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50164a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50165b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50166c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50167d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50168e = Descriptors.FileDescriptor.s(new String[]{"\n%envoy/service/load_stats/v3/lrs.proto\u0012\u001benvoy.service.load_stats.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a*envoy/config/endpoint/v3/load_report.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\"°\u0001\n\u0010LoadStatsRequest\u0012(\n\u0004node\u0018\u0001 \u0001(\u000b2\u001a.envoy.config.core.v3.Node\u0012=\n\rcluster_stats\u0018\u0002 \u0003(\u000b2&.envoy.config.endpoint.v3.ClusterStats:3\u009aÅ\u0088\u001e.\n,envoy.service.load_stats.v2.LoadStatsRequest\"×\u0001\n\u0011LoadStatsResponse\u0012\u0010\n\bclusters\u0018\u0001 \u0003(\t\u0012\u0019\n\u0011send_all_clusters\u0018\u0004 \u0001(\b\u0012:\n\u0017load_reporting_interval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012#\n\u001breport_endpoint_granularity\u0018\u0003 \u0001(\b:4\u009aÅ\u0088\u001e/\n-envoy.service.load_stats.v2.LoadStatsResponse2\u008e\u0001\n\u0014LoadReportingService\u0012v\n\u000fStreamLoadStats\u0012-.envoy.service.load_stats.v3.LoadStatsRequest\u001a..envoy.service.load_stats.v3.LoadStatsResponse\"\u0000(\u00010\u0001BB\n)io.envoyproxy.envoy.service.load_stats.v3B\bLrsProtoP\u0001\u0088\u0001\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{g.a(), i.a(), w.a(), Status.c(), Versioning.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50164a = bVar;
        f50165b = new GeneratedMessageV3.e(bVar, new String[]{"Node", "ClusterStats"});
        Descriptors.b bVar2 = a().m().get(1);
        f50166c = bVar2;
        f50167d = new GeneratedMessageV3.e(bVar2, new String[]{"Clusters", "SendAllClusters", "LoadReportingInterval", "ReportEndpointGranularity"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        Descriptors.FileDescriptor.u(f50168e, k10);
        g.a();
        i.a();
        w.a();
        Status.c();
        Versioning.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f50168e;
    }
}
