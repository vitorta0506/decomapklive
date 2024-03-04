package io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f47758a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f47759b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f47760c = Descriptors.FileDescriptor.s(new String[]{"\n$envoy/config/cluster/v3/filter.proto\u0012\u0017envoy.config.cluster.v3\u001a\u0019google/protobuf/any.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"o\n\u0006Filter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012*\n\ftyped_config\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any:\"\u009aÅ\u0088\u001e\u001d\n\u001benvoy.api.v2.cluster.FilterB>\n%io.envoyproxy.envoy.config.cluster.v3B\u000bFilterProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{com.google.protobuf.g.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f47758a = bVar;
        f47759b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "TypedConfig"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f47760c, k10);
        com.google.protobuf.g.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f47760c;
    }
}
