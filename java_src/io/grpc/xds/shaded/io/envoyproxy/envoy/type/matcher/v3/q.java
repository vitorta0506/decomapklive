package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50423a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50424b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50425c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50426d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50427e = Descriptors.FileDescriptor.s(new String[]{"\n\"envoy/type/matcher/v3/struct.proto\u0012\u0015envoy.type.matcher.v3\u001a!envoy/type/matcher/v3/value.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"¬\u0002\n\rStructMatcher\u0012H\n\u0004path\u0018\u0002 \u0003(\u000b20.envoy.type.matcher.v3.StructMatcher.PathSegmentB\búB\u0005\u0092\u0001\u0002\b\u0001\u0012<\n\u0005value\u0018\u0003 \u0001(\u000b2#.envoy.type.matcher.v3.ValueMatcherB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u001aj\n\u000bPathSegment\u0012\u0016\n\u0003key\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001H\u0000:3\u009aÅ\u0088\u001e.\n,envoy.type.matcher.StructMatcher.PathSegmentB\u000e\n\u0007segment\u0012\u0003øB\u0001:'\u009aÅ\u0088\u001e\"\n envoy.type.matcher.StructMatcherB<\n#io.envoyproxy.envoy.type.matcher.v3B\u000bStructProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{s.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50423a = bVar;
        f50424b = new GeneratedMessageV3.e(bVar, new String[]{"Path", "Value"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f50425c = bVar2;
        f50426d = new GeneratedMessageV3.e(bVar2, new String[]{"Key", "Segment"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50427e, k10);
        s.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50427e;
    }
}