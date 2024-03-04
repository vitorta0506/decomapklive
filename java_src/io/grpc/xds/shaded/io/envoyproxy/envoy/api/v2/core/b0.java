package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class b0 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46686a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46687b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46688c = Descriptors.FileDescriptor.s(new String[]{"\n envoy/api/v2/core/http_uri.proto\u0012\u0011envoy.api.v2.core\u001a\u001egoogle/protobuf/duration.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u008e\u0001\n\u0007HttpUri\u0012\u0014\n\u0003uri\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012\u001a\n\u0007cluster\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002 \u0001H\u0000\u00126\n\u0007timeout\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.DurationB\núB\u0007ª\u0001\u0004\b\u00012\u0000B\u0019\n\u0012http_upstream_type\u0012\u0003øB\u0001BU\n\u001fio.envoyproxy.envoy.api.v2.coreB\fHttpUriProtoP\u0001ò\u0098þ\u008f\u0005\u0016\u0012\u0014envoy.config.core.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.protobuf.w.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46686a = bVar;
        f46687b = new GeneratedMessageV3.e(bVar, new String[]{"Uri", "Cluster", "Timeout", "HttpUpstreamType"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46688c, k10);
        com.google.protobuf.w.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46688c;
    }
}
