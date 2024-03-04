package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49573a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49574b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49575c = Descriptors.FileDescriptor.s(new String[]{"\n#envoy/config/trace/v2/datadog.proto\u0012\u0015envoy.config.trace.v2\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"R\n\rDatadogConfig\u0012\"\n\u0011collector_cluster\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012\u001d\n\fservice_name\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002 \u0001B=\n#io.envoyproxy.envoy.config.trace.v2B\fDatadogProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49573a = bVar;
        f49574b = new GeneratedMessageV3.e(bVar, new String[]{"CollectorCluster", "ServiceName"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49575c, k10);
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49575c;
    }
}
