package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50411a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50412b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50413c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50414d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50415e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50416f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50417g = Descriptors.FileDescriptor.s(new String[]{"\n!envoy/type/matcher/v3/regex.proto\u0012\u0015envoy.type.matcher.v3\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"¶\u0002\n\fRegexMatcher\u0012M\n\ngoogle_re2\u0018\u0001 \u0001(\u000b2-.envoy.type.matcher.v3.RegexMatcher.GoogleRE2B\búB\u0005\u008a\u0001\u0002\u0010\u0001H\u0000\u0012\u0016\n\u0005regex\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u001a\u0082\u0001\n\tGoogleRE2\u0012C\n\u0010max_program_size\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0:0\u009aÅ\u0088\u001e+\n)envoy.type.matcher.RegexMatcher.GoogleRE2:&\u009aÅ\u0088\u001e!\n\u001fenvoy.type.matcher.RegexMatcherB\u0012\n\u000bengine_type\u0012\u0003øB\u0001\"¢\u0001\n\u0017RegexMatchAndSubstitute\u0012>\n\u0007pattern\u0018\u0001 \u0001(\u000b2#.envoy.type.matcher.v3.RegexMatcherB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u0014\n\fsubstitution\u0018\u0002 \u0001(\t:1\u009aÅ\u0088\u001e,\n*envoy.type.matcher.RegexMatchAndSubstituteB;\n#io.envoyproxy.envoy.type.matcher.v3B\nRegexProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{p3.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50411a = bVar;
        f50412b = new GeneratedMessageV3.e(bVar, new String[]{"GoogleRe2", "Regex", "EngineType"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f50413c = bVar2;
        f50414d = new GeneratedMessageV3.e(bVar2, new String[]{"MaxProgramSize"});
        Descriptors.b bVar3 = a().m().get(1);
        f50415e = bVar3;
        f50416f = new GeneratedMessageV3.e(bVar3, new String[]{"Pattern", "Substitution"});
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45758b);
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50417g, k10);
        p3.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50417g;
    }
}
