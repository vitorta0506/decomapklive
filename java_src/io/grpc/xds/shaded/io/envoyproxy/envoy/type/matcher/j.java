package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50319a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50320b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50321c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50322d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50323e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50324f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50325g = Descriptors.FileDescriptor.s(new String[]{"\n\u001eenvoy/type/matcher/regex.proto\u0012\u0012envoy.type.matcher\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"Ï\u0001\n\fRegexMatcher\u0012J\n\ngoogle_re2\u0018\u0001 \u0001(\u000b2*.envoy.type.matcher.RegexMatcher.GoogleRE2B\búB\u0005\u008a\u0001\u0002\u0010\u0001H\u0000\u0012\u0016\n\u0005regex\u0018\u0002 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u001aG\n\tGoogleRE2\u0012:\n\u0010max_program_size\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0002\u0018\u0001B\u0012\n\u000bengine_type\u0012\u0003øB\u0001\"b\n\u0017RegexMatchAndSubstitute\u00121\n\u0007pattern\u0018\u0001 \u0001(\u000b2 .envoy.type.matcher.RegexMatcher\u0012\u0014\n\fsubstitution\u0018\u0002 \u0001(\tB8\n io.envoyproxy.envoy.type.matcherB\nRegexProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{p3.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50319a = bVar;
        f50320b = new GeneratedMessageV3.e(bVar, new String[]{"GoogleRe2", "Regex", "EngineType"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f50321c = bVar2;
        f50322d = new GeneratedMessageV3.e(bVar2, new String[]{"MaxProgramSize"});
        Descriptors.b bVar3 = a().m().get(1);
        f50323e = bVar3;
        f50324f = new GeneratedMessageV3.e(bVar3, new String[]{"Pattern", "Substitution"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50325g, k10);
        p3.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50325g;
    }
}
