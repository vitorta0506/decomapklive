package io.grpc.xds.shaded.io.envoyproxy.envoy.type;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50235a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50236b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50237c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50238d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50239e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50240f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50241g = Descriptors.FileDescriptor.s(new String[]{"\n\u0016envoy/type/range.proto\u0012\nenvoy.type\u001a\u001dudpa/annotations/status.proto\"(\n\nInt64Range\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0003\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0003\"(\n\nInt32Range\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0005\")\n\u000bDoubleRange\u0012\r\n\u0005start\u0018\u0001 \u0001(\u0001\u0012\u000b\n\u0003end\u0018\u0002 \u0001(\u0001B0\n\u0018io.envoyproxy.envoy.typeB\nRangeProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50235a = bVar;
        f50236b = new GeneratedMessageV3.e(bVar, new String[]{"Start", "End"});
        Descriptors.b bVar2 = a().m().get(1);
        f50237c = bVar2;
        f50238d = new GeneratedMessageV3.e(bVar2, new String[]{"Start", "End"});
        Descriptors.b bVar3 = a().m().get(2);
        f50239e = bVar3;
        f50240f = new GeneratedMessageV3.e(bVar3, new String[]{"Start", "End"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        Descriptors.FileDescriptor.u(f50241g, k10);
        Status.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f50241g;
    }
}
