package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class h0 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48236a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48237b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48238c = Descriptors.FileDescriptor.s(new String[]{"\n#envoy/config/core/v3/http_uri.proto\u0012\u0014envoy.config.core.v3\u001a\u001egoogle/protobuf/duration.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"°\u0001\n\u0007HttpUri\u0012\u0014\n\u0003uri\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012\u001a\n\u0007cluster\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001H\u0000\u00126\n\u0007timeout\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.DurationB\núB\u0007ª\u0001\u0004\b\u00012\u0000: \u009aÅ\u0088\u001e\u001b\n\u0019envoy.api.v2.core.HttpUriB\u0019\n\u0012http_upstream_type\u0012\u0003øB\u0001B<\n\"io.envoyproxy.envoy.config.core.v3B\fHttpUriProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.protobuf.w.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48236a = bVar;
        f48237b = new GeneratedMessageV3.e(bVar, new String[]{"Uri", "Cluster", "Timeout", "HttpUpstreamType"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48238c, k10);
        com.google.protobuf.w.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48238c;
    }
}
