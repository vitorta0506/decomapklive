package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46748a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46749b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46750c = Descriptors.FileDescriptor.s(new String[]{"\n,envoy/api/v2/core/event_service_config.proto\u0012\u0011envoy.api.v2.core\u001a$envoy/api/v2/core/grpc_service.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"l\n\u0012EventServiceConfig\u00126\n\fgrpc_service\u0018\u0001 \u0001(\u000b2\u001e.envoy.api.v2.core.GrpcServiceH\u0000B\u001e\n\u0017config_source_specifier\u0012\u0003øB\u0001B`\n\u001fio.envoyproxy.envoy.api.v2.coreB\u0017EventServiceConfigProtoP\u0001ò\u0098þ\u008f\u0005\u0016\u0012\u0014envoy.config.core.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{s.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46748a = bVar;
        f46749b = new GeneratedMessageV3.e(bVar, new String[]{"GrpcService", "ConfigSourceSpecifier"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        Descriptors.FileDescriptor.u(f46750c, k10);
        s.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46750c;
    }
}
