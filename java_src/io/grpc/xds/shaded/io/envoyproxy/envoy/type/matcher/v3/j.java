package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50408a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50409b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50410c = Descriptors.FileDescriptor.s(new String[]{"\n envoy/type/matcher/v3/path.proto\u0012\u0015envoy.type.matcher.v3\u001a\"envoy/type/matcher/v3/string.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u0081\u0001\n\u000bPathMatcher\u0012>\n\u0004path\u0018\u0001 \u0001(\u000b2$.envoy.type.matcher.v3.StringMatcherB\búB\u0005\u008a\u0001\u0002\u0010\u0001H\u0000:%\u009aÅ\u0088\u001e \n\u001eenvoy.type.matcher.PathMatcherB\u000b\n\u0004rule\u0012\u0003øB\u0001B:\n#io.envoyproxy.envoy.type.matcher.v3B\tPathProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{o.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50408a = bVar;
        f50409b = new GeneratedMessageV3.e(bVar, new String[]{"Path", "Rule"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50410c, k10);
        o.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50410c;
    }
}
