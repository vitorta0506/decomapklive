package io.grpc.xds.shaded.io.envoyproxy.envoy.config.cluster.aggregate.v2alpha;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f47552a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f47553b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f47554c = Descriptors.FileDescriptor.s(new String[]{"\n4envoy/config/cluster/aggregate/v2alpha/cluster.proto\u0012&envoy.config.cluster.aggregate.v2alpha\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"+\n\rClusterConfig\u0012\u001a\n\bclusters\u0018\u0001 \u0003(\tB\búB\u0005\u0092\u0001\u0002\b\u0001B|\n4io.envoyproxy.envoy.config.cluster.aggregate.v2alphaB\fClusterProtoP\u0001ò\u0098þ\u008f\u0005(\u0012&envoy.extensions.clusters.aggregate.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f47552a = bVar;
        f47553b = new GeneratedMessageV3.e(bVar, new String[]{"Clusters"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f47554c, k10);
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f47554c;
    }
}
