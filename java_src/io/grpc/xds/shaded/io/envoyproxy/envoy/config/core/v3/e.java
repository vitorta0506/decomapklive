package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48204a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48205b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48206c = Descriptors.FileDescriptor.s(new String[]{"\n\"envoy/config/core/v3/backoff.proto\u0012\u0014envoy.config.core.v3\u001a\u001egoogle/protobuf/duration.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"¸\u0001\n\u000fBackoffStrategy\u0012@\n\rbase_interval\u0018\u0001 \u0001(\u000b2\u0019.google.protobuf.DurationB\u000eúB\u000bª\u0001\b\b\u00012\u0004\u0010À\u0084=\u00129\n\fmax_interval\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000:(\u009aÅ\u0088\u001e#\n!envoy.api.v2.core.BackoffStrategyB<\n\"io.envoyproxy.envoy.config.core.v3B\fBackoffProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.protobuf.w.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48204a = bVar;
        f48205b = new GeneratedMessageV3.e(bVar, new String[]{"BaseInterval", "MaxInterval"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48206c, k10);
        com.google.protobuf.w.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48206c;
    }
}
