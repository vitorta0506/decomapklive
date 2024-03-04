package io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50402a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50403b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50404c = Descriptors.FileDescriptor.s(new String[]{"\n envoy/type/matcher/v3/node.proto\u0012\u0015envoy.type.matcher.v3\u001a\"envoy/type/matcher/v3/string.proto\u001a\"envoy/type/matcher/v3/struct.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\"©\u0001\n\u000bNodeMatcher\u00125\n\u0007node_id\u0018\u0001 \u0001(\u000b2$.envoy.type.matcher.v3.StringMatcher\u0012<\n\u000enode_metadatas\u0018\u0002 \u0003(\u000b2$.envoy.type.matcher.v3.StructMatcher:%\u009aÅ\u0088\u001e \n\u001eenvoy.type.matcher.NodeMatcherB:\n#io.envoyproxy.envoy.type.matcher.v3B\tNodeProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{o.a(), q.a(), Status.c(), Versioning.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50402a = bVar;
        f50403b = new GeneratedMessageV3.e(bVar, new String[]{"NodeId", "NodeMetadatas"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        Descriptors.FileDescriptor.u(f50404c, k10);
        o.a();
        q.a();
        Status.c();
        Versioning.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f50404c;
    }
}
