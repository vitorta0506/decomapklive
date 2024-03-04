package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50326a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50327b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50328c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50329d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50330e = Descriptors.FileDescriptor.s(new String[]{"\n\u001fenvoy/type/matcher/string.proto\u0012\u0012envoy.type.matcher\u001a\u001eenvoy/type/matcher/regex.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"æ\u0001\n\rStringMatcher\u0012\u000f\n\u0005exact\u0018\u0001 \u0001(\tH\u0000\u0012\u0019\n\u0006prefix\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001H\u0000\u0012\u0019\n\u0006suffix\u0018\u0003 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001H\u0000\u0012!\n\u0005regex\u0018\u0004 \u0001(\tB\u0010\u0018\u0001úB\u0005r\u0003(\u0080\b¸îòÒ\u0005\u0001H\u0000\u0012@\n\nsafe_regex\u0018\u0005 \u0001(\u000b2 .envoy.type.matcher.RegexMatcherB\búB\u0005\u008a\u0001\u0002\u0010\u0001H\u0000\u0012\u0013\n\u000bignore_case\u0018\u0006 \u0001(\bB\u0014\n\rmatch_pattern\u0012\u0003øB\u0001\"R\n\u0011ListStringMatcher\u0012=\n\bpatterns\u0018\u0001 \u0003(\u000b2!.envoy.type.matcher.StringMatcherB\búB\u0005\u0092\u0001\u0002\b\u0001B9\n io.envoyproxy.envoy.type.matcherB\u000bStringProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{j.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50326a = bVar;
        f50327b = new GeneratedMessageV3.e(bVar, new String[]{"Exact", "Prefix", "Suffix", "Regex", "SafeRegex", "IgnoreCase", "MatchPattern"});
        Descriptors.b bVar2 = a().m().get(1);
        f50328c = bVar2;
        f50329d = new GeneratedMessageV3.e(bVar2, new String[]{"Patterns"});
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45757a);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50330e, k10);
        j.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50330e;
    }
}
