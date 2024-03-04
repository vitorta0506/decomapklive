package io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48834a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48835b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48836c = Descriptors.FileDescriptor.s(new String[]{"\n+envoy/config/listener/v3/api_listener.proto\u0012\u0018envoy.config.listener.v3\u001a\u0019google/protobuf/any.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\"f\n\u000bApiListener\u0012*\n\fapi_listener\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.Any:+\u009aÅ\u0088\u001e&\n$envoy.config.listener.v2.ApiListenerBD\n&io.envoyproxy.envoy.config.listener.v3B\u0010ApiListenerProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.protobuf.g.a(), Status.c(), Versioning.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48834a = bVar;
        f48835b = new GeneratedMessageV3.e(bVar, new String[]{"ApiListener"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        Descriptors.FileDescriptor.u(f48836c, k10);
        com.google.protobuf.g.a();
        Status.c();
        Versioning.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f48836c;
    }
}
