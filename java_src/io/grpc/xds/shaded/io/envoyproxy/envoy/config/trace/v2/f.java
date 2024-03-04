package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.s;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49590a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49591b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49592c = Descriptors.FileDescriptor.s(new String[]{"\n#envoy/config/trace/v2/service.proto\u0012\u0015envoy.config.trace.v2\u001a$envoy/api/v2/core/grpc_service.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"T\n\u0012TraceServiceConfig\u0012>\n\fgrpc_service\u0018\u0001 \u0001(\u000b2\u001e.envoy.api.v2.core.GrpcServiceB\búB\u0005\u008a\u0001\u0002\u0010\u0001B=\n#io.envoyproxy.envoy.config.trace.v2B\fServiceProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{s.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49590a = bVar;
        f49591b = new GeneratedMessageV3.e(bVar, new String[]{"GrpcService"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49592c, k10);
        s.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49592c;
    }
}
