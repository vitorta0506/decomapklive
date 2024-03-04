package io.grpc.xds.shaded.io.envoyproxy.envoy.config.filter.fault.v2;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.g;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48541a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48542b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f48543c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f48544d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f48545e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f48546f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f48547g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f48548h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f48549i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f48550j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48551k = Descriptors.FileDescriptor.s(new String[]{"\n(envoy/config/filter/fault/v2/fault.proto\u0012\u001cenvoy.config.filter.fault.v2\u001a\u0018envoy/type/percent.proto\u001a\u001egoogle/protobuf/duration.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"é\u0002\n\nFaultDelay\u0012O\n\u0004type\u0018\u0001 \u0001(\u000e27.envoy.config.filter.fault.v2.FaultDelay.FaultDelayTypeB\b\u0018\u0001¸îòÒ\u0005\u0001\u0012:\n\u000bfixed_delay\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.DurationB\búB\u0005ª\u0001\u0002*\u0000H\u0000\u0012L\n\fheader_delay\u0018\u0005 \u0001(\u000b24.envoy.config.filter.fault.v2.FaultDelay.HeaderDelayH\u0000\u00121\n\npercentage\u0018\u0004 \u0001(\u000b2\u001d.envoy.type.FractionalPercent\u001a\r\n\u000bHeaderDelay\"\u001b\n\u000eFaultDelayType\u0012\t\n\u0005FIXED\u0010\u0000B\u001b\n\u0014fault_delay_secifier\u0012\u0003øB\u0001J\u0004\b\u0002\u0010\u0003\"²\u0002\n\u000eFaultRateLimit\u0012N\n\u000bfixed_limit\u0018\u0001 \u0001(\u000b27.envoy.config.filter.fault.v2.FaultRateLimit.FixedLimitH\u0000\u0012P\n\fheader_limit\u0018\u0003 \u0001(\u000b28.envoy.config.filter.fault.v2.FaultRateLimit.HeaderLimitH\u0000\u00121\n\npercentage\u0018\u0002 \u0001(\u000b2\u001d.envoy.type.FractionalPercent\u001a)\n\nFixedLimit\u0012\u001b\n\nlimit_kbps\u0018\u0001 \u0001(\u0004B\u0007úB\u00042\u0002(\u0001\u001a\r\n\u000bHeaderLimitB\u0011\n\nlimit_type\u0012\u0003øB\u0001Br\n*io.envoyproxy.envoy.config.filter.fault.v2B\nFaultProtoP\u0001ò\u0098þ\u008f\u0005*\u0012(envoy.extensions.filters.common.fault.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{g.a(), w.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48541a = bVar;
        f48542b = new GeneratedMessageV3.e(bVar, new String[]{"Type", "FixedDelay", "HeaderDelay", "Percentage", "FaultDelaySecifier"});
        Descriptors.b bVar2 = bVar.o().get(0);
        f48543c = bVar2;
        f48544d = new GeneratedMessageV3.e(bVar2, new String[0]);
        Descriptors.b bVar3 = a().m().get(1);
        f48545e = bVar3;
        f48546f = new GeneratedMessageV3.e(bVar3, new String[]{"FixedLimit", "HeaderLimit", "Percentage", "LimitType"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f48547g = bVar4;
        f48548h = new GeneratedMessageV3.e(bVar4, new String[]{"LimitKbps"});
        Descriptors.b bVar5 = bVar3.o().get(1);
        f48549i = bVar5;
        f48550j = new GeneratedMessageV3.e(bVar5, new String[0]);
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45757a);
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48551k, k10);
        g.a();
        w.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48551k;
    }
}
