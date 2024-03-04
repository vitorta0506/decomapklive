package io.grpc.xds.shaded.io.envoyproxy.envoy.config.trace.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.v2;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49643a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49644b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49645c = Descriptors.FileDescriptor.s(new String[]{"\n&envoy/config/trace/v3/dynamic_ot.proto\u0012\u0015envoy.config.trace.v3\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u0082\u0001\n\u000fDynamicOtConfig\u0012\u0018\n\u0007library\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012'\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct:,\u009aÅ\u0088\u001e'\n%envoy.config.trace.v2.DynamicOtConfigBr\n#io.envoyproxy.envoy.config.trace.v3B\u000eDynamicOtProtoP\u0001ò\u0098þ\u008f\u0005-\u0012+envoy.extensions.tracers.dynamic_ot.v4alphaº\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{v2.a(), Migrate.g(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49643a = bVar;
        f49644b = new GeneratedMessageV3.e(bVar, new String[]{"Library", "Config"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49645c, k10);
        v2.a();
        Migrate.g();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49645c;
    }
}
