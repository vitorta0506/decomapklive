package io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50569a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50570b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50571c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50572d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50573e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50574f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50575g = Descriptors.FileDescriptor.s(new String[]{"\n\u0019envoy/type/v3/range.proto\u0012\renvoy.type.v3\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\"F\n\nInt64Range\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0003\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0003:\u001c\u009aÅ\u0088\u001e\u0017\n\u0015envoy.type.Int64Range\"F\n\nInt32Range\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0005:\u001c\u009aÅ\u0088\u001e\u0017\n\u0015envoy.type.Int32Range\"H\n\u000bDoubleRange\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0001\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0001:\u001d\u009aÅ\u0088\u001e\u0018\n\u0016envoy.type.DoubleRangeB3\n\u001bio.envoyproxy.envoy.type.v3B\nRangeProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.c(), Versioning.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50569a = bVar;
        f50570b = new GeneratedMessageV3.e(bVar, new String[]{"Start", "End"});
        Descriptors.b bVar2 = a().m().get(1);
        f50571c = bVar2;
        f50572d = new GeneratedMessageV3.e(bVar2, new String[]{"Start", "End"});
        Descriptors.b bVar3 = a().m().get(2);
        f50573e = bVar3;
        f50574f = new GeneratedMessageV3.e(bVar3, new String[]{"Start", "End"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        Descriptors.FileDescriptor.u(f50575g, k10);
        Status.c();
        Versioning.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f50575g;
    }
}
