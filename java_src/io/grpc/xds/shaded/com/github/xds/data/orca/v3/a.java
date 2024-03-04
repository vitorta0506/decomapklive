package io.grpc.xds.shaded.com.github.xds.data.orca.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f45539a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f45540b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f45541c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f45542d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f45543e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f45544f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f45545g = Descriptors.FileDescriptor.s(new String[]{"\n'xds/data/orca/v3/orca_load_report.proto\u0012\u0010xds.data.orca.v3\u001a\u0017validate/validate.proto\"¬\u0003\n\u000eOrcaLoadReport\u00125\n\u000fcpu_utilization\u0018\u0001 \u0001(\u0001B\u001cúB\u000b\u0012\t)\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000úB\u000b\u0012\t\u0019\u0000\u0000\u0000\u0000\u0000\u0000ð?\u00125\n\u000fmem_utilization\u0018\u0002 \u0001(\u0001B\u001cúB\u000b\u0012\t)\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000úB\u000b\u0012\t\u0019\u0000\u0000\u0000\u0000\u0000\u0000ð?\u0012\u000b\n\u0003rps\u0018\u0003 \u0001(\u0004\u0012G\n\frequest_cost\u0018\u0004 \u0003(\u000b21.xds.data.orca.v3.OrcaLoadReport.RequestCostEntry\u0012n\n\u000butilization\u0018\u0005 \u0003(\u000b21.xds.data.orca.v3.OrcaLoadReport.UtilizationEntryB&úB\u0010\u009a\u0001\r*\u000b\u0012\t)\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000úB\u0010\u009a\u0001\r*\u000b\u0012\t\u0019\u0000\u0000\u0000\u0000\u0000\u0000ð?\u001a2\n\u0010RequestCostEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0001:\u00028\u0001\u001a2\n\u0010UtilizationEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0001:\u00028\u0001B]\n\u001bcom.github.xds.data.orca.v3B\u0013OrcaLoadReportProtoP\u0001Z'github.com/cncf/xds/go/xds/data/orca/v3b\u0006proto3"}, new Descriptors.FileDescriptor[]{Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f45539a = bVar;
        f45540b = new GeneratedMessageV3.e(bVar, new String[]{"CpuUtilization", "MemUtilization", "Rps", "RequestCost", "Utilization"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f45541c = bVar2;
        f45542d = new GeneratedMessageV3.e(bVar2, new String[]{"Key", "Value"});
        Descriptors.b bVar3 = bVar.o().get(1);
        f45543e = bVar3;
        f45544f = new GeneratedMessageV3.e(bVar3, new String[]{"Key", "Value"});
        d0 k10 = d0.k();
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f45545g, k10);
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f45545g;
    }
}
