package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.cluster;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.g;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46344a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46345b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46346c = Descriptors.FileDescriptor.s(new String[]{"\n!envoy/api/v2/cluster/filter.proto\u0012\u0014envoy.api.v2.cluster\u001a\u0019google/protobuf/any.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"K\n\u0006Filter\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u0012*\n\ftyped_config\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.AnyB\u008c\u0001\n\"io.envoyproxy.envoy.api.v2.clusterB\u000bFilterProtoP\u0001ª\u0002\u0016Envoy.Api.V2.ClusterNSê\u0002\u0016Envoy.Api.V2.ClusterNSò\u0098þ\u008f\u0005\u0019\u0012\u0017envoy.config.cluster.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{g.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46344a = bVar;
        f46345b = new GeneratedMessageV3.e(bVar, new String[]{"Name", "TypedConfig"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46346c, k10);
        g.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46346c;
    }
}
