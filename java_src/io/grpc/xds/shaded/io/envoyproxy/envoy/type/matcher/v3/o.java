package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50418a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50419b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50420c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50421d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50422e = Descriptors.FileDescriptor.s(new String[]{"\n\"envoy/type/matcher/v3/string.proto\u0012\u0015envoy.type.matcher.v3\u001a!envoy/type/matcher/v3/regex.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u0099\u0002\n\rStringMatcher\u0012\u000f\n\u0005exact\u0018\u0001 \u0001(\tH\u0000\u0012\u0019\n\u0006prefix\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001H\u0000\u0012\u0019\n\u0006suffix\u0018\u0003 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001H\u0000\u0012C\n\nsafe_regex\u0018\u0005 \u0001(\u000b2#.envoy.type.matcher.v3.RegexMatcherB\búB\u0005\u008a\u0001\u0002\u0010\u0001H\u0000\u0012\u001b\n\bcontains\u0018\u0007 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001H\u0000\u0012\u0013\n\u000bignore_case\u0018\u0006 \u0001(\b:'\u009aÅ\u0088\u001e\"\n envoy.type.matcher.StringMatcherB\u0014\n\rmatch_pattern\u0012\u0003øB\u0001J\u0004\b\u0004\u0010\u0005R\u0005regex\"\u0082\u0001\n\u0011ListStringMatcher\u0012@\n\bpatterns\u0018\u0001 \u0003(\u000b2$.envoy.type.matcher.v3.StringMatcherB\búB\u0005\u0092\u0001\u0002\b\u0001:+\u009aÅ\u0088\u001e&\n$envoy.type.matcher.ListStringMatcherB<\n#io.envoyproxy.envoy.type.matcher.v3B\u000bStringProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{m.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50418a = bVar;
        f50419b = new GeneratedMessageV3.e(bVar, new String[]{"Exact", "Prefix", "Suffix", "SafeRegex", "Contains", "IgnoreCase", "MatchPattern"});
        Descriptors.b bVar2 = a().m().get(1);
        f50420c = bVar2;
        f50421d = new GeneratedMessageV3.e(bVar2, new String[]{"Patterns"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50422e, k10);
        m.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50422e;
    }
}
