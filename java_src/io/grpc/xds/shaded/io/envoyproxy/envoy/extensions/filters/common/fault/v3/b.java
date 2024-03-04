package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.filters.common.fault.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3.g;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49683a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49684b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f49685c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f49686d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f49687e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f49688f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f49689g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f49690h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f49691i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f49692j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49693k = Descriptors.FileDescriptor.s(new String[]{"\n4envoy/extensions/filters/common/fault/v3/fault.proto\u0012(envoy.extensions.filters.common.fault.v3\u001a\u001benvoy/type/v3/percent.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u009f\u0003\n\nFaultDelay\u0012:\n\u000bfixed_delay\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000H\u0000\u0012X\n\fheader_delay\u0018\u0005 \u0001(\u000b2@.envoy.extensions.filters.common.fault.v3.FaultDelay.HeaderDelayH\u0000\u00124\n\npercentage\u0018\u0004 \u0001(\u000b2 .envoy.type.v3.FractionalPercent\u001aI\n\u000bHeaderDelay::\u009aÅ\u0088\u001e5\n3envoy.config.filter.fault.v2.FaultDelay.HeaderDelay\"\u001b\n\u000eFaultDelayType\u0012\t\n\u0005FIXED\u0010\u0000:.\u009aÅ\u0088\u001e)\n'envoy.config.filter.fault.v2.FaultDelayB\u001b\n\u0014fault_delay_secifier\u0012\u0003øB\u0001J\u0004\b\u0002\u0010\u0003J\u0004\b\u0001\u0010\u0002R\u0004type\"\u0080\u0004\n\u000eFaultRateLimit\u0012Z\n\u000bfixed_limit\u0018\u0001 \u0001(\u000b2C.envoy.extensions.filters.common.fault.v3.FaultRateLimit.FixedLimitH\u0000\u0012\\\n\fheader_limit\u0018\u0003 \u0001(\u000b2D.envoy.extensions.filters.common.fault.v3.FaultRateLimit.HeaderLimitH\u0000\u00124\n\npercentage\u0018\u0002 \u0001(\u000b2 .envoy.type.v3.FractionalPercent\u001ah\n\nFixedLimit\u0012\u001b\n\nlimit_kbps\u0018\u0001 \u0001(\u0004B\u0007úB\u00042\u0002(\u0001:=\u009aÅ\u0088\u001e8\n6envoy.config.filter.fault.v2.FaultRateLimit.FixedLimit\u001aM\n\u000bHeaderLimit:>\u009aÅ\u0088\u001e9\n7envoy.config.filter.fault.v2.FaultRateLimit.HeaderLimit:2\u009aÅ\u0088\u001e-\n+envoy.config.filter.fault.v2.FaultRateLimitB\u0011\n\nlimit_type\u0012\u0003øB\u0001BN\n6io.envoyproxy.envoy.extensions.filters.common.fault.v3B\nFaultProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{g.a(), w.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49683a = bVar;
        f49684b = new GeneratedMessageV3.e(bVar, new String[]{"FixedDelay", "HeaderDelay", "Percentage", "FaultDelaySecifier"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f49685c = bVar2;
        f49686d = new GeneratedMessageV3.e(bVar2, new String[0]);
        Descriptors.b bVar3 = a().m().get(1);
        f49687e = bVar3;
        f49688f = new GeneratedMessageV3.e(bVar3, new String[]{"FixedLimit", "HeaderLimit", "Percentage", "LimitType"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f49689g = bVar4;
        f49690h = new GeneratedMessageV3.e(bVar4, new String[]{"LimitKbps"});
        Descriptors.b bVar5 = bVar3.o().get(1);
        f49691i = bVar5;
        f49692j = new GeneratedMessageV3.e(bVar5, new String[0]);
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49693k, k10);
        g.a();
        w.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49693k;
    }
}
