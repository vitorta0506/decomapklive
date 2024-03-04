package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes5.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46256a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46257b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46258c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46259d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46260e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46261f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f46262g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f46263h;

    /* renamed from: i  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46264i = Descriptors.FileDescriptor.s(new String[]{"\n\u001benvoy/api/v2/auth/tls.proto\u0012\u0011envoy.api.v2.auth\u001a\u001eenvoy/api/v2/auth/common.proto\u001a\u001eenvoy/api/v2/auth/secret.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"Á\u0001\n\u0012UpstreamTlsContext\u0012?\n\u0012common_tls_context\u0018\u0001 \u0001(\u000b2#.envoy.api.v2.auth.CommonTlsContext\u0012\u0015\n\u0003sni\u0018\u0002 \u0001(\tB\búB\u0005r\u0003(ÿ\u0001\u0012\u001b\n\u0013allow_renegotiation\u0018\u0003 \u0001(\b\u00126\n\u0010max_session_keys\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\"÷\u0003\n\u0014DownstreamTlsContext\u0012?\n\u0012common_tls_context\u0018\u0001 \u0001(\u000b2#.envoy.api.v2.auth.CommonTlsContext\u0012>\n\u001arequire_client_certificate\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012/\n\u000brequire_sni\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012F\n\u0013session_ticket_keys\u0018\u0004 \u0001(\u000b2'.envoy.api.v2.auth.TlsSessionTicketKeysH\u0000\u0012S\n%session_ticket_keys_sds_secret_config\u0018\u0005 \u0001(\u000b2\".envoy.api.v2.auth.SdsSecretConfigH\u0000\u0012.\n$disable_stateless_session_resumption\u0018\u0007 \u0001(\bH\u0000\u0012D\n\u000fsession_timeout\u0018\u0006 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0010úB\rª\u0001\n\u001a\u0006\b\u0080\u0080\u0080\u0080\u00102\u0000B\u001a\n\u0018session_ticket_keys_type\"\u0090\u0006\n\u0010CommonTlsContext\u00124\n\ntls_params\u0018\u0001 \u0001(\u000b2 .envoy.api.v2.auth.TlsParameters\u0012;\n\u0010tls_certificates\u0018\u0002 \u0003(\u000b2!.envoy.api.v2.auth.TlsCertificate\u0012X\n\"tls_certificate_sds_secret_configs\u0018\u0006 \u0003(\u000b2\".envoy.api.v2.auth.SdsSecretConfigB\búB\u0005\u0092\u0001\u0002\u0010\u0001\u0012M\n\u0012validation_context\u0018\u0003 \u0001(\u000b2/.envoy.api.v2.auth.CertificateValidationContextH\u0000\u0012R\n$validation_context_sds_secret_config\u0018\u0007 \u0001(\u000b2\".envoy.api.v2.auth.SdsSecretConfigH\u0000\u0012o\n\u001bcombined_validation_context\u0018\b \u0001(\u000b2H.envoy.api.v2.auth.CommonTlsContext.CombinedCertificateValidationContextH\u0000\u0012\u0016\n\u000ealpn_protocols\u0018\u0004 \u0003(\t\u001aá\u0001\n$CombinedCertificateValidationContext\u0012]\n\u001adefault_validation_context\u0018\u0001 \u0001(\u000b2/.envoy.api.v2.auth.CertificateValidationContextB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012Z\n$validation_context_sds_secret_config\u0018\u0002 \u0001(\u000b2\".envoy.api.v2.auth.SdsSecretConfigB\búB\u0005\u008a\u0001\u0002\u0010\u0001B\u0019\n\u0017validation_context_typeJ\u0004\b\u0005\u0010\u0006Bf\n\u001fio.envoyproxy.envoy.api.v2.authB\bTlsProtoP\u0001ò\u0098þ\u008f\u0005+\u0012)envoy.extensions.transport_sockets.tls.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{b.a(), h.a(), w.a(), p3.a(), Migrate.g(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46256a = bVar;
        f46257b = new GeneratedMessageV3.e(bVar, new String[]{"CommonTlsContext", "Sni", "AllowRenegotiation", "MaxSessionKeys"});
        Descriptors.b bVar2 = a().m().get(1);
        f46258c = bVar2;
        f46259d = new GeneratedMessageV3.e(bVar2, new String[]{"CommonTlsContext", "RequireClientCertificate", "RequireSni", "SessionTicketKeys", "SessionTicketKeysSdsSecretConfig", "DisableStatelessSessionResumption", "SessionTimeout", "SessionTicketKeysType"});
        Descriptors.b bVar3 = a().m().get(2);
        f46260e = bVar3;
        f46261f = new GeneratedMessageV3.e(bVar3, new String[]{"TlsParams", "TlsCertificates", "TlsCertificateSdsSecretConfigs", "ValidationContext", "ValidationContextSdsSecretConfig", "CombinedValidationContext", "AlpnProtocols", "ValidationContextType"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f46262g = bVar4;
        f46263h = new GeneratedMessageV3.e(bVar4, new String[]{"DefaultValidationContext", "ValidationContextSdsSecretConfig"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46264i, k10);
        b.a();
        h.a();
        w.a();
        p3.a();
        Migrate.g();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46264i;
    }
}
