package io.grpc.xds.shaded.com.github.xds.service.orca.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f45550a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f45551b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f45552c = Descriptors.FileDescriptor.s(new String[]{"\n\u001exds/service/orca/v3/orca.proto\u0012\u0013xds.service.orca.v3\u001a'xds/data/orca/v3/orca_load_report.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u0017validate/validate.proto\"g\n\u0015OrcaLoadReportRequest\u00122\n\u000freport_interval\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012\u001a\n\u0012request_cost_names\u0018\u0002 \u0003(\t2u\n\u000eOpenRcaService\u0012c\n\u0011StreamCoreMetrics\u0012*.xds.service.orca.v3.OrcaLoadReportRequest\u001a .xds.data.orca.v3.OrcaLoadReport0\u0001BY\n\u001ecom.github.xds.service.orca.v3B\tOrcaProtoP\u0001Z*github.com/cncf/xds/go/xds/service/orca/v3b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.com.github.xds.data.orca.v3.a.a(), w.a(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f45550a = bVar;
        f45551b = new GeneratedMessageV3.e(bVar, new String[]{"ReportInterval", "RequestCostNames"});
        io.grpc.xds.shaded.com.github.xds.data.orca.v3.a.a();
        w.a();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f45552c;
    }
}
