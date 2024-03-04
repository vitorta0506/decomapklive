package io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50564a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50565b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50566c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50567d;

    /* renamed from: e  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50568e = Descriptors.FileDescriptor.s(new String[]{"\n\u001benvoy/type/v3/percent.proto\u0012\renvoy.type.v3\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"L\n\u0007Percent\u0012&\n\u0005value\u0018\u0001 \u0001(\u0001B\u0017úB\u0014\u0012\u0012\u0019\u0000\u0000\u0000\u0000\u0000\u0000Y@)\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000:\u0019\u009aÅ\u0088\u001e\u0014\n\u0012envoy.type.Percent\"Û\u0001\n\u0011FractionalPercent\u0012\u0011\n\tnumerator\u0018\u0001 \u0001(\r\u0012O\n\u000bdenominator\u0018\u0002 \u0001(\u000e20.envoy.type.v3.FractionalPercent.DenominatorTypeB\búB\u0005\u0082\u0001\u0002\u0010\u0001\"=\n\u000fDenominatorType\u0012\u000b\n\u0007HUNDRED\u0010\u0000\u0012\u0010\n\fTEN_THOUSAND\u0010\u0001\u0012\u000b\n\u0007MILLION\u0010\u0002:#\u009aÅ\u0088\u001e\u001e\n\u001cenvoy.type.FractionalPercentB5\n\u001bio.envoyproxy.envoy.type.v3B\fPercentProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50564a = bVar;
        f50565b = new GeneratedMessageV3.e(bVar, new String[]{"Value"});
        Descriptors.b bVar2 = a().m().get(1);
        f50566c = bVar2;
        f50567d = new GeneratedMessageV3.e(bVar2, new String[]{"Numerator", "Denominator"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50568e, k10);
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50568e;
    }
}
