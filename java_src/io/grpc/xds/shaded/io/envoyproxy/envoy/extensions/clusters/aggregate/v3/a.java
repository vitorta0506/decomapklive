package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.clusters.aggregate.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f49665a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f49666b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f49667c = Descriptors.FileDescriptor.s(new String[]{"\n4envoy/extensions/clusters/aggregate/v3/cluster.proto\u0012&envoy.extensions.clusters.aggregate.v3\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"h\n\rClusterConfig\u0012\u001a\n\bclusters\u0018\u0001 \u0003(\tB\búB\u0005\u0092\u0001\u0002\b\u0001:;\u009aÅ\u0088\u001e6\n4envoy.config.cluster.aggregate.v2alpha.ClusterConfigBN\n4io.envoyproxy.envoy.extensions.clusters.aggregate.v3B\fClusterProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f49665a = bVar;
        f49666b = new GeneratedMessageV3.e(bVar, new String[]{"Clusters"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f49667c, k10);
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f49667c;
    }
}
