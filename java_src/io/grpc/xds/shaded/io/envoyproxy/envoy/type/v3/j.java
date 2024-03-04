package io.grpc.xds.shaded.io.envoyproxy.envoy.type.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50576a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50577b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50578c = Descriptors.FileDescriptor.s(new String[]{"\n$envoy/type/v3/semantic_version.proto\u0012\renvoy.type.v3\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\"o\n\u000fSemanticVersion\u0012\u0014\n\fmajor_number\u0018\u0001 \u0001(\r\u0012\u0014\n\fminor_number\u0018\u0002 \u0001(\r\u0012\r\n\u0005patch\u0018\u0003 \u0001(\r:!\u009aÅ\u0088\u001e\u001c\n\u001aenvoy.type.SemanticVersionB=\n\u001bio.envoyproxy.envoy.type.v3B\u0014SemanticVersionProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.c(), Versioning.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50576a = bVar;
        f50577b = new GeneratedMessageV3.e(bVar, new String[]{"MajorNumber", "MinorNumber", "Patch"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        Descriptors.FileDescriptor.u(f50578c, k10);
        Status.c();
        Versioning.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f50578c;
    }
}
