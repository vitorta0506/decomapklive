package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50331a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50332b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50333c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50334d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50335e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50336f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50337g = Descriptors.FileDescriptor.s(new String[]{"\n\u001eenvoy/type/matcher/value.proto\u0012\u0012envoy.type.matcher\u001a\u001fenvoy/type/matcher/number.proto\u001a\u001fenvoy/type/matcher/string.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"Ï\u0002\n\fValueMatcher\u0012@\n\nnull_match\u0018\u0001 \u0001(\u000b2*.envoy.type.matcher.ValueMatcher.NullMatchH\u0000\u00129\n\fdouble_match\u0018\u0002 \u0001(\u000b2!.envoy.type.matcher.DoubleMatcherH\u0000\u00129\n\fstring_match\u0018\u0003 \u0001(\u000b2!.envoy.type.matcher.StringMatcherH\u0000\u0012\u0014\n\nbool_match\u0018\u0004 \u0001(\bH\u0000\u0012\u0017\n\rpresent_match\u0018\u0005 \u0001(\bH\u0000\u00125\n\nlist_match\u0018\u0006 \u0001(\u000b2\u001f.envoy.type.matcher.ListMatcherH\u0000\u001a\u000b\n\tNullMatchB\u0014\n\rmatch_pattern\u0012\u0003øB\u0001\"W\n\u000bListMatcher\u00122\n\u0006one_of\u0018\u0001 \u0001(\u000b2 .envoy.type.matcher.ValueMatcherH\u0000B\u0014\n\rmatch_pattern\u0012\u0003øB\u0001B8\n io.envoyproxy.envoy.type.matcherB\nValueProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{e.a(), l.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50331a = bVar;
        f50332b = new GeneratedMessageV3.e(bVar, new String[]{"NullMatch", "DoubleMatch", "StringMatch", "BoolMatch", "PresentMatch", "ListMatch", "MatchPattern"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f50333c = bVar2;
        f50334d = new GeneratedMessageV3.e(bVar2, new String[0]);
        Descriptors.b bVar3 = a().m().get(1);
        f50335e = bVar3;
        f50336f = new GeneratedMessageV3.e(bVar3, new String[]{"OneOf", "MatchPattern"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        Descriptors.FileDescriptor.u(f50337g, k10);
        e.a();
        l.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50337g;
    }
}
