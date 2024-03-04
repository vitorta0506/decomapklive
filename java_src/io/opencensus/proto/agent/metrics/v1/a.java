package io.opencensus.proto.agent.metrics.v1;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.opencensus.proto.metrics.v1.f;
import io.opencensus.proto.resource.v1.b;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50939a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50940b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50941c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50942d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50943e;

    /* renamed from: io.opencensus.proto.agent.metrics.v1.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static class C0504a implements Descriptors.FileDescriptor.a {
        C0504a() {
        }

        @Override // com.google.protobuf.Descriptors.FileDescriptor.a
        public d0 a(Descriptors.FileDescriptor fileDescriptor) {
            Descriptors.FileDescriptor unused = a.f50943e = fileDescriptor;
            return null;
        }
    }

    static {
        Descriptors.FileDescriptor.t(new String[]{"\n7opencensus/proto/agent/metrics/v1/metrics_service.proto\u0012!opencensus.proto.agent.metrics.v1\u001a-opencensus/proto/agent/common/v1/common.proto\u001a)opencensus/proto/metrics/v1/metrics.proto\u001a+opencensus/proto/resource/v1/resource.proto\"Ã\u0001\n\u001bExportMetricsServiceRequest\u00124\n\u0004node\u0018\u0001 \u0001(\u000b2&.opencensus.proto.agent.common.v1.Node\u00124\n\u0007metrics\u0018\u0002 \u0003(\u000b2#.opencensus.proto.metrics.v1.Metric\u00128\n\bresource\u0018\u0003 \u0001(\u000b2&.opencensus.proto.resource.v1.Resource\"\u001e\n\u001cExportMetricsServiceResponse2¢\u0001\n\u000eMetricsService\u0012\u008f\u0001\n\u0006Export\u0012>.opencensus.proto.agent.metrics.v1.ExportMetricsServiceRequest\u001a?.opencensus.proto.agent.metrics.v1.ExportMetricsServiceResponse\"\u0000(\u00010\u0001B\u0089\u0001\n$io.opencensus.proto.agent.metrics.v1B\u0013MetricsServiceProtoP\u0001ZJgithub.com/census-instrumentation/opencensus-proto/gen-go/agent/metrics/v1b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.opencensus.proto.agent.common.v1.a.b(), f.b(), b.b()}, new C0504a());
        Descriptors.b bVar = b().m().get(0);
        f50939a = bVar;
        f50940b = new GeneratedMessageV3.e(bVar, new String[]{"Node", "Metrics", "Resource"});
        Descriptors.b bVar2 = b().m().get(1);
        f50941c = bVar2;
        f50942d = new GeneratedMessageV3.e(bVar2, new String[0]);
        io.opencensus.proto.agent.common.v1.a.b();
        f.b();
        b.b();
    }

    public static Descriptors.FileDescriptor b() {
        return f50943e;
    }
}
