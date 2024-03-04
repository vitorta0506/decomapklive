package io.grpc.xds.shaded.io.envoyproxy.envoy.type;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50259a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50260b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50261c = Descriptors.FileDescriptor.s(new String[]{"\n!envoy/type/semantic_version.proto\u0012\nenvoy.type\u001a\u001dudpa/annotations/status.proto\"L\n\u000fSemanticVersion\u0012\u0014\n\fmajor_number\u0018\u0001 \u0001(\r\u0012\u0014\n\fminor_number\u0018\u0002 \u0001(\r\u0012\r\n\u0005patch\u0018\u0003 \u0001(\rB:\n\u0018io.envoyproxy.envoy.typeB\u0014SemanticVersionProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50259a = bVar;
        f50260b = new GeneratedMessageV3.e(bVar, new String[]{"MajorNumber", "MinorNumber", "Patch"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        Descriptors.FileDescriptor.u(f50261c, k10);
        Status.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f50261c;
    }
}
