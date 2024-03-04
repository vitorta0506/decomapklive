package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.w;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.v;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50043a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50044b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50045c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50046d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50047e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50048f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f50049g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f50050h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f50051i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f50052j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f50053k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f50054l;

    /* renamed from: m  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50055m = Descriptors.FileDescriptor.s(new String[]{"\n3envoy/extensions/transport_sockets/tls/v3/tls.proto\u0012)envoy.extensions.transport_sockets.tls.v3\u001a$envoy/config/core/v3/extension.proto\u001a6envoy/extensions/transport_sockets/tls/v3/common.proto\u001a6envoy/extensions/transport_sockets/tls/v3/secret.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u0086\u0002\n\u0012UpstreamTlsContext\u0012W\n\u0012common_tls_context\u0018\u0001 \u0001(\u000b2;.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext\u0012\u0015\n\u0003sni\u0018\u0002 \u0001(\tB\búB\u0005r\u0003(ÿ\u0001\u0012\u001b\n\u0013allow_renegotiation\u0018\u0003 \u0001(\b\u00126\n\u0010max_session_keys\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32Value:+\u009aÅ\u0088\u001e&\n$envoy.api.v2.auth.UpstreamTlsContext\"¶\u0006\n\u0014DownstreamTlsContext\u0012W\n\u0012common_tls_context\u0018\u0001 \u0001(\u000b2;.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext\u0012>\n\u001arequire_client_certificate\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012/\n\u000brequire_sni\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012^\n\u0013session_ticket_keys\u0018\u0004 \u0001(\u000b2?.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeysH\u0000\u0012k\n%session_ticket_keys_sds_secret_config\u0018\u0005 \u0001(\u000b2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigH\u0000\u0012.\n$disable_stateless_session_resumption\u0018\u0007 \u0001(\bH\u0000\u0012D\n\u000fsession_timeout\u0018\u0006 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0010úB\rª\u0001\n\u001a\u0006\b\u0080\u0080\u0080\u0080\u00102\u0000\u0012v\n\u0012ocsp_staple_policy\u0018\b \u0001(\u000e2P.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext.OcspStaplePolicyB\búB\u0005\u0082\u0001\u0002\u0010\u0001\"N\n\u0010OcspStaplePolicy\u0012\u0014\n\u0010LENIENT_STAPLING\u0010\u0000\u0012\u0013\n\u000fSTRICT_STAPLING\u0010\u0001\u0012\u000f\n\u000bMUST_STAPLE\u0010\u0002:-\u009aÅ\u0088\u001e(\n&envoy.api.v2.auth.DownstreamTlsContextB\u001a\n\u0018session_ticket_keys_type\"î\u0012\n\u0010CommonTlsContext\u0012L\n\ntls_params\u0018\u0001 \u0001(\u000b28.envoy.extensions.transport_sockets.tls.v3.TlsParameters\u0012S\n\u0010tls_certificates\u0018\u0002 \u0003(\u000b29.envoy.extensions.transport_sockets.tls.v3.TlsCertificate\u0012p\n\"tls_certificate_sds_secret_configs\u0018\u0006 \u0003(\u000b2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigB\búB\u0005\u0092\u0001\u0002\u0010\u0002\u0012w\n!tls_certificate_provider_instance\u0018\u000e \u0001(\u000b2L.envoy.extensions.transport_sockets.tls.v3.CertificateProviderPluginInstance\u0012\u008a\u0001\n$tls_certificate_certificate_provider\u0018\t \u0001(\u000b2O.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012\u009b\u0001\n-tls_certificate_certificate_provider_instance\u0018\u000b \u0001(\u000b2W.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstanceB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012e\n\u0012validation_context\u0018\u0003 \u0001(\u000b2G.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContextH\u0000\u0012j\n$validation_context_sds_secret_config\u0018\u0007 \u0001(\u000b2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigH\u0000\u0012\u0087\u0001\n\u001bcombined_validation_context\u0018\b \u0001(\u000b2`.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CombinedCertificateValidationContextH\u0000\u0012\u008f\u0001\n'validation_context_certificate_provider\u0018\n \u0001(\u000b2O.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0H\u0000\u0012 \u0001\n0validation_context_certificate_provider_instance\u0018\f \u0001(\u000b2W.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstanceB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0H\u0000\u0012\u0016\n\u000ealpn_protocols\u0018\u0004 \u0003(\t\u0012E\n\u0011custom_handshaker\u0018\r \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u001a\u007f\n\u0013CertificateProvider\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u0012B\n\ftyped_config\u0018\u0002 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfigH\u0000B\r\n\u0006config\u0012\u0003øB\u0001\u001aN\n\u001bCertificateProviderInstance\u0012\u0015\n\rinstance_name\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010certificate_name\u0018\u0002 \u0001(\t\u001a\u0092\u0005\n$CombinedCertificateValidationContext\u0012u\n\u001adefault_validation_context\u0018\u0001 \u0001(\u000b2G.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContextB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012r\n$validation_context_sds_secret_config\u0018\u0002 \u0001(\u000b2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigB\búB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u008d\u0001\n'validation_context_certificate_provider\u0018\u0003 \u0001(\u000b2O.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0\u0012\u009e\u0001\n0validation_context_certificate_provider_instance\u0018\u0004 \u0001(\u000b2W.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstanceB\u000b\u0018\u0001\u0092Ç\u0086Ø\u0004\u00033.0:N\u009aÅ\u0088\u001eI\nGenvoy.api.v2.auth.CommonTlsContext.CombinedCertificateValidationContext:)\u009aÅ\u0088\u001e$\n\"envoy.api.v2.auth.CommonTlsContextB\u0019\n\u0017validation_context_typeJ\u0004\b\u0005\u0010\u0006BM\n7io.envoyproxy.envoy.extensions.transport_sockets.tls.v3B\bTlsProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{v.a(), c.a(), i.a(), w.a(), p3.a(), io.grpc.xds.shaded.envoy.annotations.a.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50043a = bVar;
        f50044b = new GeneratedMessageV3.e(bVar, new String[]{"CommonTlsContext", "Sni", "AllowRenegotiation", "MaxSessionKeys"});
        Descriptors.b bVar2 = a().m().get(1);
        f50045c = bVar2;
        f50046d = new GeneratedMessageV3.e(bVar2, new String[]{"CommonTlsContext", "RequireClientCertificate", "RequireSni", "SessionTicketKeys", "SessionTicketKeysSdsSecretConfig", "DisableStatelessSessionResumption", "SessionTimeout", "OcspStaplePolicy", "SessionTicketKeysType"});
        Descriptors.b bVar3 = a().m().get(2);
        f50047e = bVar3;
        f50048f = new GeneratedMessageV3.e(bVar3, new String[]{"TlsParams", "TlsCertificates", "TlsCertificateSdsSecretConfigs", "TlsCertificateProviderInstance", "TlsCertificateCertificateProvider", "TlsCertificateCertificateProviderInstance", "ValidationContext", "ValidationContextSdsSecretConfig", "CombinedValidationContext", "ValidationContextCertificateProvider", "ValidationContextCertificateProviderInstance", "AlpnProtocols", "CustomHandshaker", "ValidationContextType"});
        Descriptors.b bVar4 = bVar3.o().get(0);
        f50049g = bVar4;
        f50050h = new GeneratedMessageV3.e(bVar4, new String[]{"Name", "TypedConfig", "Config"});
        Descriptors.b bVar5 = bVar3.o().get(1);
        f50051i = bVar5;
        f50052j = new GeneratedMessageV3.e(bVar5, new String[]{"InstanceName", "CertificateName"});
        Descriptors.b bVar6 = bVar3.o().get(2);
        f50053k = bVar6;
        f50054l = new GeneratedMessageV3.e(bVar6, new String[]{"DefaultValidationContext", "ValidationContextSdsSecretConfig", "ValidationContextCertificateProvider", "ValidationContextCertificateProviderInstance"});
        d0 k10 = d0.k();
        k10.f(io.grpc.xds.shaded.envoy.annotations.a.f45758b);
        k10.f(Status.f50839a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50580b);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50055m, k10);
        v.a();
        c.a();
        i.a();
        w.a();
        p3.a();
        io.grpc.xds.shaded.envoy.annotations.a.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50055m;
    }
}
