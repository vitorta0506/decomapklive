package io.grpc.xds.shaded.io.envoyproxy.envoy.config.listener.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.n0;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.v;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f48865a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f48866b;

    /* renamed from: c  reason: collision with root package name */
    private static Descriptors.FileDescriptor f48867c = Descriptors.FileDescriptor.s(new String[]{"\n*envoy/config/listener/v3/quic_config.proto\u0012\u0018envoy.config.listener.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a$envoy/config/core/v3/extension.proto\u001a#envoy/config/core/v3/protocol.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"§\u0004\n\u0013QuicProtocolOptions\u0012H\n\u0015quic_protocol_options\u0018\u0001 \u0001(\u000b2).envoy.config.core.v3.QuicProtocolOptions\u0012/\n\fidle_timeout\u0018\u0002 \u0001(\u000b2\u0019.google.protobuf.Duration\u0012;\n\u0018crypto_handshake_timeout\u0018\u0003 \u0001(\u000b2\u0019.google.protobuf.Duration\u00129\n\u0007enabled\u0018\u0004 \u0001(\u000b2(.envoy.config.core.v3.RuntimeFeatureFlag\u0012X\n)packets_to_read_to_connection_count_ratio\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32ValueB\u0007úB\u0004*\u0002(\u0001\u0012H\n\u0014crypto_stream_config\u0018\u0006 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u0012G\n\u0013proof_source_config\u0018\u0007 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig:0\u009aÅ\u0088\u001e+\n)envoy.api.v2.listener.QuicProtocolOptionsBC\n&io.envoyproxy.envoy.config.listener.v3B\u000fQuicConfigProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a(), v.a(), n0.a(), w.a(), p3.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f48865a = bVar;
        f48866b = new GeneratedMessageV3.e(bVar, new String[]{"QuicProtocolOptions", "IdleTimeout", "CryptoHandshakeTimeout", "Enabled", "PacketsToReadToConnectionCountRatio", "CryptoStreamConfig", "ProofSourceConfig"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f48867c, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a();
        v.a();
        n0.a();
        w.a();
        p3.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f48867c;
    }
}
