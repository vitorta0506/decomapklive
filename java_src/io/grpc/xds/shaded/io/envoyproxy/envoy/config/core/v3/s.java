package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48282a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48283b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48284c = Descriptors.FileDescriptor.s(new String[]{"\n/envoy/config/core/v3/event_service_config.proto\u0012\u0014envoy.config.core.v3\u001a'envoy/config/core/v3/grpc_service.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u009c\u0001\n\u0012EventServiceConfig\u00129\n\fgrpc_service\u0018\u0001 \u0001(\u000b2!.envoy.config.core.v3.GrpcServiceH\u0000:+\u009aÅ\u0088\u001e&\n$envoy.api.v2.core.EventServiceConfigB\u001e\n\u0017config_source_specifier\u0012\u0003øB\u0001BG\n\"io.envoyproxy.envoy.config.core.v3B\u0017EventServiceConfigProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{x.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48282a = bVar;
        f48283b = new GeneratedMessageV3.e(bVar, new String[]{"GrpcService", "ConfigSourceSpecifier"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        Descriptors.FileDescriptor.u(f48284c, k10);
        x.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48284c;
    }
}
