package io.grpc.xds.shaded.io.envoyproxy.envoy.extensions.transport_sockets.tls.v3;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.v;
import io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.v3.o;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
import io.grpc.xds.shaded.udpa.annotations.Versioning;
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f50023a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f50024b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f50025c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f50026d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f50027e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f50028f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f50029g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f50030h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f50031i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f50032j;

    /* renamed from: k  reason: collision with root package name */
    static final Descriptors.b f50033k;

    /* renamed from: l  reason: collision with root package name */
    static final GeneratedMessageV3.e f50034l;

    /* renamed from: m  reason: collision with root package name */
    private static Descriptors.FileDescriptor f50035m = Descriptors.FileDescriptor.s(new String[]{"\n6envoy/extensions/transport_sockets/tls/v3/common.proto\u0012)envoy.extensions.transport_sockets.tls.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a$envoy/config/core/v3/extension.proto\u001a\"envoy/type/matcher/v3/string.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a udpa/annotations/sensitive.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\" \u0003\n\rTlsParameters\u0012t\n\u001ctls_minimum_protocol_version\u0018\u0001 \u0001(\u000e2D.envoy.extensions.transport_sockets.tls.v3.TlsParameters.TlsProtocolB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012t\n\u001ctls_maximum_protocol_version\u0018\u0002 \u0001(\u000e2D.envoy.extensions.transport_sockets.tls.v3.TlsParameters.TlsProtocolB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u0015\n\rcipher_suites\u0018\u0003 \u0003(\t\u0012\u0013\n\u000becdh_curves\u0018\u0004 \u0003(\t\"O\n\u000bTlsProtocol\u0012\f\n\bTLS_AUTO\u0010\u0000\u0012\u000b\n\u0007TLSv1_0\u0010\u0001\u0012\u000b\n\u0007TLSv1_1\u0010\u0002\u0012\u000b\n\u0007TLSv1_2\u0010\u0003\u0012\u000b\n\u0007TLSv1_3\u0010\u0004:&\u009aÅ\u0088\u001e!\n\u001fenvoy.api.v2.auth.TlsParameters\"´\u0001\n\u0012PrivateKeyProvider\u0012\u001e\n\rprovider_name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002\u0010\u0001\u00124\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyB\u0006¸·\u008b¤\u0002\u0001H\u0000:+\u009aÅ\u0088\u001e&\n$envoy.api.v2.auth.PrivateKeyProviderB\r\n\u000bconfig_typeJ\u0004\b\u0002\u0010\u0003R\u0006config\"\u0090\u0004\n\u000eTlsCertificate\u0012;\n\u0011certificate_chain\u0018\u0001 \u0001(\u000b2 .envoy.config.core.v3.DataSource\u0012=\n\u000bprivate_key\u0018\u0002 \u0001(\u000b2 .envoy.config.core.v3.DataSourceB\u0006¸·\u008b¤\u0002\u0001\u0012A\n\u0011watched_directory\u0018\u0007 \u0001(\u000b2&.envoy.config.core.v3.WatchedDirectory\u0012[\n\u0014private_key_provider\u0018\u0006 \u0001(\u000b2=.envoy.extensions.transport_sockets.tls.v3.PrivateKeyProvider\u0012:\n\bpassword\u0018\u0003 \u0001(\u000b2 .envoy.config.core.v3.DataSourceB\u0006¸·\u008b¤\u0002\u0001\u00125\n\u000bocsp_staple\u0018\u0004 \u0001(\u000b2 .envoy.config.core.v3.DataSource\u0012F\n\u001csigned_certificate_timestamp\u0018\u0005 \u0003(\u000b2 .envoy.config.core.v3.DataSource:'\u009aÅ\u0088\u001e\"\n envoy.api.v2.auth.TlsCertificate\"\u0085\u0001\n\u0014TlsSessionTicketKeys\u0012>\n\u0004keys\u0018\u0001 \u0003(\u000b2 .envoy.config.core.v3.DataSourceB\u000eúB\u0005\u0092\u0001\u0002\b\u0001¸·\u008b¤\u0002\u0001:-\u009aÅ\u0088\u001e(\n&envoy.api.v2.auth.TlsSessionTicketKeys\"T\n!CertificateProviderPluginInstance\u0012\u0015\n\rinstance_name\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010certificate_name\u0018\u0002 \u0001(\t\"\u0083\b\n\u001cCertificateValidationContext\u0012L\n\ntrusted_ca\u0018\u0001 \u0001(\u000b2 .envoy.config.core.v3.DataSourceB\u0016ò\u0098þ\u008f\u0005\u0010\u0012\u000eca_cert_source\u0012\u008e\u0001\n ca_certificate_provider_instance\u0018\r \u0001(\u000b2L.envoy.extensions.transport_sockets.tls.v3.CertificateProviderPluginInstanceB\u0016ò\u0098þ\u008f\u0005\u0010\u0012\u000eca_cert_source\u0012A\n\u0011watched_directory\u0018\u000b \u0001(\u000b2&.envoy.config.core.v3.WatchedDirectory\u0012/\n\u0017verify_certificate_spki\u0018\u0003 \u0003(\tB\u000eúB\u000b\u0092\u0001\b\"\u0006r\u0004\u0010,(,\u0012/\n\u0017verify_certificate_hash\u0018\u0002 \u0003(\tB\u000eúB\u000b\u0092\u0001\b\"\u0006r\u0004\u0010@(_\u0012E\n\u0017match_subject_alt_names\u0018\t \u0003(\u000b2$.envoy.type.matcher.v3.StringMatcher\u0012H\n$require_signed_certificate_timestamp\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012-\n\u0003crl\u0018\u0007 \u0001(\u000b2 .envoy.config.core.v3.DataSource\u0012!\n\u0019allow_expired_certificate\u0018\b \u0001(\b\u0012\u008a\u0001\n\u0018trust_chain_verification\u0018\n \u0001(\u000e2^.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext.TrustChainVerificationB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012K\n\u0017custom_validator_config\u0018\f \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\"F\n\u0016TrustChainVerification\u0012\u0016\n\u0012VERIFY_TRUST_CHAIN\u0010\u0000\u0012\u0014\n\u0010ACCEPT_UNTRUSTED\u0010\u0001:5\u009aÅ\u0088\u001e0\n.envoy.api.v2.auth.CertificateValidationContextJ\u0004\b\u0004\u0010\u0005J\u0004\b\u0005\u0010\u0006R\u0017verify_subject_alt_nameBP\n7io.envoyproxy.envoy.extensions.transport_sockets.tls.v3B\u000bCommonProtoP\u0001º\u0080ÈÑ\u0006\u0002\u0010\u0002b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a(), v.a(), o.a(), com.google.protobuf.g.a(), p3.a(), Migrate.g(), io.grpc.xds.shaded.udpa.annotations.a.a(), Status.c(), Versioning.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f50023a = bVar;
        f50024b = new GeneratedMessageV3.e(bVar, new String[]{"TlsMinimumProtocolVersion", "TlsMaximumProtocolVersion", "CipherSuites", "EcdhCurves"});
        Descriptors.b bVar2 = a().m().get(1);
        f50025c = bVar2;
        f50026d = new GeneratedMessageV3.e(bVar2, new String[]{"ProviderName", "TypedConfig", "ConfigType"});
        Descriptors.b bVar3 = a().m().get(2);
        f50027e = bVar3;
        f50028f = new GeneratedMessageV3.e(bVar3, new String[]{"CertificateChain", "PrivateKey", "WatchedDirectory", "PrivateKeyProvider", "Password", "OcspStaple", "SignedCertificateTimestamp"});
        Descriptors.b bVar4 = a().m().get(3);
        f50029g = bVar4;
        f50030h = new GeneratedMessageV3.e(bVar4, new String[]{"Keys"});
        Descriptors.b bVar5 = a().m().get(4);
        f50031i = bVar5;
        f50032j = new GeneratedMessageV3.e(bVar5, new String[]{"InstanceName", "CertificateName"});
        Descriptors.b bVar6 = a().m().get(5);
        f50033k = bVar6;
        f50034l = new GeneratedMessageV3.e(bVar6, new String[]{"TrustedCa", "CaCertificateProviderInstance", "WatchedDirectory", "VerifyCertificateSpki", "VerifyCertificateHash", "MatchSubjectAltNames", "RequireSignedCertificateTimestamp", "Crl", "AllowExpiredCertificate", "TrustChainVerification", "CustomValidatorConfig"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50818b);
        k10.f(Status.f50839a);
        k10.f(io.grpc.xds.shaded.udpa.annotations.a.f50850a);
        k10.f(Versioning.f50845a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f50035m, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.config.core.v3.g.a();
        v.a();
        o.a();
        com.google.protobuf.g.a();
        p3.a();
        Migrate.g();
        io.grpc.xds.shaded.udpa.annotations.a.a();
        Status.c();
        Versioning.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f50035m;
    }
}
