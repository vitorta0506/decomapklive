package io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.g;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48719a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48720b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48721c = Descriptors.FileDescriptor.s(new String[]{"\n+envoy/config/listener/v2/api_listener.proto\u0012\u0018envoy.config.listener.v2\u001a\u0019google/protobuf/any.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\"9\n\u000bApiListener\u0012*\n\fapi_listener\u0018\u0001 \u0001(\u000b2\u0014.google.protobuf.AnyBd\n&io.envoyproxy.envoy.config.listener.v2B\u0010ApiListenerProtoP\u0001ò\u0098þ\u008f\u0005\u001a\u0012\u0018envoy.config.listener.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{g.a(), Migrate.g(), Status.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48719a = bVar;
        f48720b = new GeneratedMessageV3.e(bVar, new String[]{"ApiListener"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        Descriptors.FileDescriptor.u(f48721c, k10);
        g.a();
        Migrate.g();
        Status.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f48721c;
    }
}
