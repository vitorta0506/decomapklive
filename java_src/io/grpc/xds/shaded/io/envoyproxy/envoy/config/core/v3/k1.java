package io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes6.dex */
public final class k1 {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48239a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48240b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48241c = Descriptors.FileDescriptor.s(new String[]{"\n,envoy/config/core/v3/udp_socket_config.proto\u0012\u0014envoy.config.core.v3\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u008a\u0001\n\u000fUdpSocketConfig\u0012G\n\u0014max_rx_datagram_size\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.UInt64ValueB\u000búB\b2\u0006\u0010\u0080\u0080\u0004 \u0000\u0012.\n\nprefer_gro\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValueBD\n\"io.envoyproxy.envoy.config.core.v3B\u0014UdpSocketConfigProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{p3.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48239a = bVar;
        f48240b = new GeneratedMessageV3.e(bVar, new String[]{"MaxRxDatagramSize", "PreferGro"});
        com.google.protobuf.d0 k10 = com.google.protobuf.d0.k();
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48241c, k10);
        p3.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48241c;
    }
}
