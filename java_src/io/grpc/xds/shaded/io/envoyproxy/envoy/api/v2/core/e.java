package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46689a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46690b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46691c = Descriptors.FileDescriptor.s(new String[]{"\n\u001fenvoy/api/v2/core/backoff.proto\u0012\u0011envoy.api.v2.core\u001a\u001egoogle/protobuf/duration.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u008e\u0001\n\u000fBackoffStrategy\u0012@\n\rbase_interval\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.DurationB\u000eúB\u000bª\u0001\b\b\u00012\u0004\u0010À\u0084=\u00129\n\fmax_interval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000BU\n\u001fio.envoyproxy.envoy.api.v2.coreB\fBackoffProtoP\u0001ò\u0098þ\u008f\u0005\u0016\u0012\u0014envoy.config.core.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.protobuf.w.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46689a = bVar;
        f46690b = new GeneratedMessageV3.e(bVar, new String[]{"BaseInterval", "MaxInterval"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46691c, k10);
        com.google.protobuf.w.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46691c;
    }
}
