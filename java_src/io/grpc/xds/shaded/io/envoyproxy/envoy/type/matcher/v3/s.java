package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50428a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50429b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50430c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50431d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50432e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50433f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50434g = Descriptors.FileDescriptor.s(new String[]{"\n!envoy/type/matcher/v3/value.proto\u0012\u0015envoy.type.matcher.v3\u001a\"envoy/type/matcher/v3/number.proto\u001a\"envoy/type/matcher/v3/string.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"µ\u0003\n\fValueMatcher\u0012C\n\nnull_match\u0018\u0001 \u0001(\u000b2-.envoy.type.matcher.v3.ValueMatcher.NullMatchH\u0000\u0012<\n\fdouble_match\u0018\u0002 \u0001(\u000b2$.envoy.type.matcher.v3.DoubleMatcherH\u0000\u0012<\n\fstring_match\u0018\u0003 \u0001(\u000b2$.envoy.type.matcher.v3.StringMatcherH\u0000\u0012\u0014\n\nbool_match\u0018\u0004 \u0001(\bH\u0000\u0012\u0017\n\rpresent_match\u0018\u0005 \u0001(\bH\u0000\u00128\n\nlist_match\u0018\u0006 \u0001(\u000b2\".envoy.type.matcher.v3.ListMatcherH\u0000\u001a=\n\tNullMatch:0\u009aÅ\u0088\u001e+\n)envoy.type.matcher.ValueMatcher.NullMatch:&\u009aÅ\u0088\u001e!\n\u001fenvoy.type.matcher.ValueMatcherB\u0014\n\rmatch_pattern\u0012\u0003øB\u0001\"\u0081\u0001\n\u000bListMatcher\u00125\n\u0006one_of\u0018\u0001 \u0001(\u000b2#.envoy.type.matcher.v3.ValueMatcherH\u0000:%\u009aÅ\u0088\u001e \n\u001eenvoy.type.matcher.ListMatcherB\u0014\n\rmatch_pattern\u0012\u0003øB\u0001B;\n#io.envoyproxy.envoy.type.matcher.v3B\nValueProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{h.a(), o.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50428a = bVar;
        f50429b = new GeneratedMessageV3.e(bVar, new String[]{"NullMatch", "DoubleMatch", "StringMatch", "BoolMatch", "PresentMatch", "ListMatch", "MatchPattern"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f50430c = bVar2;
        f50431d = new GeneratedMessageV3.e(bVar2, new String[0]);
        Descriptors.b bVar3 = a().m().get(1);
        f50432e = bVar3;
        f50433f = new GeneratedMessageV3.e(bVar3, new String[]{"OneOf", "MatchPattern"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        Descriptors.FileDescriptor.u(f50434g, k10);
        h.a();
        o.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50434g;
    }
}
