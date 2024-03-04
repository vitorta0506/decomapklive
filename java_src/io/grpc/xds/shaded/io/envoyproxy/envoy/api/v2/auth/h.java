package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes5.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46249a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46250b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46251c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46252d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46253e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46254f;

    /* renamed from: g  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46255g = Descriptors.FileDescriptor.s(new String[]{"\n\u001eenvoy/api/v2/auth/secret.proto\u0012\u0011envoy.api.v2.auth\u001a\u001eenvoy/api/v2/auth/common.proto\u001a\u001cenvoy/api/v2/core/base.proto\u001a%envoy/api/v2/core/config_source.proto\u001a\u001eudpa/annotations/migrate.proto\u001a udpa/annotations/sensitive.proto\u001a\u001dudpa/annotations/status.proto\"F\n\rGenericSecret\u00125\n\u0006secret\u0018\u0001 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSourceB\u0006¸·\u008b¤\u0002\u0001\"T\n\u000fSdsSecretConfig\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u00123\n\nsds_config\u0018\u0002 \u0001(\u000b2\u001f.envoy.api.v2.core.ConfigSource\"¯\u0002\n\u0006Secret\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012<\n\u000ftls_certificate\u0018\u0002 \u0001(\u000b2!.envoy.api.v2.auth.TlsCertificateH\u0000\u0012F\n\u0013session_ticket_keys\u0018\u0003 \u0001(\u000b2'.envoy.api.v2.auth.TlsSessionTicketKeysH\u0000\u0012M\n\u0012validation_context\u0018\u0004 \u0001(\u000b2/.envoy.api.v2.auth.CertificateValidationContextH\u0000\u0012:\n\u000egeneric_secret\u0018\u0005 \u0001(\u000b2 .envoy.api.v2.auth.GenericSecretH\u0000B\u0006\n\u0004typeBi\n\u001fio.envoyproxy.envoy.api.v2.authB\u000bSecretProtoP\u0001ò\u0098þ\u008f\u0005+\u0012)envoy.extensions.transport_sockets.tls.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{b.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.l.a(), Migrate.g(), io.grpc.xds.shaded.udpa.annotations.a.a(), Status.c()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46249a = bVar;
        f46250b = new GeneratedMessageV3.e(bVar, new String[]{"Secret"});
        Descriptors.b bVar2 = a().m().get(1);
        f46251c = bVar2;
        f46252d = new GeneratedMessageV3.e(bVar2, new String[]{"Name", "SdsConfig"});
        Descriptors.b bVar3 = a().m().get(2);
        f46253e = bVar3;
        f46254f = new GeneratedMessageV3.e(bVar3, new String[]{"Name", "TlsCertificate", "SessionTicketKeys", "ValidationContext", "GenericSecret", "Type"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(io.grpc.xds.shaded.udpa.annotations.a.f50850a);
        Descriptors.FileDescriptor.u(f46255g, k10);
        b.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.l.a();
        Migrate.g();
        io.grpc.xds.shaded.udpa.annotations.a.a();
        Status.c();
    }

    public static Descriptors.FileDescriptor a() {
        return f46255g;
    }
}
