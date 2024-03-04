package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50036a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50037b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50038c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50039d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50040e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50041f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50042g = Descriptors.FileDescriptor.s(new String[]{"\n6envoy/extensions/transport_sockets/tls/v3/secret.proto\u0012)envoy.extensions.transport_sockets.tls.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a(envoy/config/core/v3/config_source.proto\u001a6envoy/extensions/transport_sockets/tls/v3/common.proto\u001a udpa/annotations/sensitive.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"q\n\rGenericSecret\u00128\n\u0006secret\u0018\u0001 \u0001(\u000b2 .envoy.config.core.v3.DataSourceB\u0006¸·\u008b¤\u0002\u0001:&\u009aÅ\u0088\u001e!\n\u001fenvoy.api.v2.auth.GenericSecret\"\u008a\u0001\n\u000fSdsSecretConfig\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u00126\n\nsds_config\u0018\u0002 \u0001(\u000b2\".envoy.config.core.v3.ConfigSource:(\u009aÅ\u0088\u001e#\n!envoy.api.v2.auth.SdsSecretConfig\"°\u0003\n\u0006Secret\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012T\n\u000ftls_certificate\u0018\u0002 \u0001(\u000b29.envoy.extensions.transport_sockets.tls.v3.TlsCertificateH\u0000\u0012^\n\u0013session_ticket_keys\u0018\u0003 \u0001(\u000b2?.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeysH\u0000\u0012e\n\u0012validation_context\u0018\u0004 \u0001(\u000b2G.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContextH\u0000\u0012R\n\u000egeneric_secret\u0018\u0005 \u0001(\u000b28.envoy.extensions.transport_sockets.tls.v3.GenericSecretH\u0000:\u001f\u009aÅ\u0088\u001e\u001a\n\u0018envoy.api.v2.auth.SecretB\u0006\n\u0004typeBP\n7io.envoyproxy.envoy.extensions.transport_sockets.tls.v3B\u000bSecretProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l.a(), c.a(), io.grpc.xds.shaded.udpa.annotations.a.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50036a = bVar;
        f50037b = new GeneratedMessageV3.e(bVar, new String[]{"Secret"});
        Descriptors.b bVar2 = a().m().get(1);
        f50038c = bVar2;
        f50039d = new GeneratedMessageV3.e(bVar2, new String[]{"Name", "SdsConfig"});
        Descriptors.b bVar3 = a().m().get(2);
        f50040e = bVar3;
        f50041f = new GeneratedMessageV3.e(bVar3, new String[]{"Name", "TlsCertificate", "SessionTicketKeys", "ValidationContext", "GenericSecret", "Type"});
        d0 k10 = d0.k();
        k10.f(Status.f50839a);
        k10.f(io.grpc.xds.shaded.udpa.annotations.a.f50850a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50042g, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.l.a();
        c.a();
        io.grpc.xds.shaded.udpa.annotations.a.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50042g;
    }
}
