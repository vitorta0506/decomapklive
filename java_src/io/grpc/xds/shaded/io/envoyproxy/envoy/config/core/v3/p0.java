package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class p0 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48279a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48280b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48281c = Descriptors.FileDescriptor.s(new String[]{"\n)envoy/config/core/v3/proxy_protocol.proto\u0012\u0014envoy.config.core.v3\u001a\u001dudpa/annotations/status.proto\"t\n\u0013ProxyProtocolConfig\u0012B\n\u0007version\u0018\u0001 \u0001(\u000e21.envoy.config.core.v3.ProxyProtocolConfig.Version\"\u0019\n\u0007Version\u0012\u0006\n\u0002V1\u0010\u0000\u0012\u0006\n\u0002V2\u0010\u0001BB\n\"io.envoyproxy.envoy.config.core.v3B\u0012ProxyProtocolProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{Status.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48279a = bVar;
        f48280b = new GeneratedMessageV3.e(bVar, new String[]{"Version"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Status.f50839a);
        Descriptors.FileDescriptor.u(f48281c, k10);
        Status.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f48281c;
    }
}
