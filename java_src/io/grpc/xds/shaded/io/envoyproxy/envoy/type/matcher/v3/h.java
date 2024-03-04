package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50405a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50406b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50407c = Descriptors.FileDescriptor.s(new String[]{"\n\"envoy/type/matcher/v3/number.proto\u0012\u0015envoy.type.matcher.v3\u001a\u0019envoy/type/v3/range.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u008c\u0001\n\rDoubleMatcher\u0012+\n\u0005range\u0018\u0001 \u0001(\u000b2\u001a.envoy.type.v3.DoubleRangeH\u0000\u0012\u000f\n\u0005exact\u0018\u0002 \u0001(\u0001H\u0000:'\u009aÅ\u0088\u001e\"\n envoy.type.matcher.DoubleMatcherB\u0014\n\rmatch_pattern\u0012\u0003øB\u0001B<\n#io.envoyproxy.envoy.type.matcher.v3B\u000bNumberProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.h.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50405a = bVar;
        f50406b = new GeneratedMessageV3.e(bVar, new String[]{"Range", "Exact", "MatchPattern"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        Descriptors.FileDescriptor.u(f50407c, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.h.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50407c;
    }
}
