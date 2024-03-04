package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50316a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50317b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50318c = Descriptors.FileDescriptor.s(new String[]{"\n\u001denvoy/type/matcher/path.proto\u0012\u0012envoy.type.matcher\u001a\u001fenvoy/type/matcher/string.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"W\n\u000bPathMatcher\u0012;\n\u0004path\u0018\u0001 \u0001(\u000b2!.envoy.type.matcher.StringMatcherB\búB\u0005\u008a\u0001\u0002\u0010\u0001H\u0000B\u000b\n\u0004rule\u0012\u0003øB\u0001B7\n io.envoyproxy.envoy.type.matcherB\tPathProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{l.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50316a = bVar;
        f50317b = new GeneratedMessageV3.e(bVar, new String[]{"Path", "Rule"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50318c, k10);
        l.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50318c;
    }
}
