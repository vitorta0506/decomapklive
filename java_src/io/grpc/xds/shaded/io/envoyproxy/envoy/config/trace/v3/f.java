package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.x;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49657a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49658b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49659c = Descriptors.FileDescriptor.s(new String[]{"\n#envoy/config/trace/v3/service.proto\u0012\u0015envoy.config.trace.v3\u001a'envoy/config/core/v3/grpc_service.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u0088\u0001\n\u0012TraceServiceConfig\u0012A\n\fgrpc_service\u0018\u0001 \u0001(\u000b2!.envoy.config.core.v3.GrpcServiceB\búB\u0005\u008a\u0001\u0002\u0010\u0001:/\u009aÅ\u0088\u001e*\n(envoy.config.trace.v2.TraceServiceConfigB=\n#io.envoyproxy.envoy.config.trace.v3B\fServiceProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{x.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49657a = bVar;
        f49658b = new GeneratedMessageV3.e(bVar, new String[]{"GrpcService"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49659c, k10);
        x.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49659c;
    }
}
