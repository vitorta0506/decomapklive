package io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.auth;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import com.google.protobuf.d0;
import com.google.protobuf.p3;
import com.google.protobuf.v2;
import io.grpc.xds.shaded.io.envoyproxy.pgv.validate.Validate;
import io.grpc.xds.shaded.udpa.annotations.Migrate;
import io.grpc.xds.shaded.udpa.annotations.Status;
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final Descriptors.b f46238a;

    /* renamed from: b  reason: collision with root package name */
    static final GeneratedMessageV3.e f46239b;

    /* renamed from: c  reason: collision with root package name */
    static final Descriptors.b f46240c;

    /* renamed from: d  reason: collision with root package name */
    static final GeneratedMessageV3.e f46241d;

    /* renamed from: e  reason: collision with root package name */
    static final Descriptors.b f46242e;

    /* renamed from: f  reason: collision with root package name */
    static final GeneratedMessageV3.e f46243f;

    /* renamed from: g  reason: collision with root package name */
    static final Descriptors.b f46244g;

    /* renamed from: h  reason: collision with root package name */
    static final GeneratedMessageV3.e f46245h;

    /* renamed from: i  reason: collision with root package name */
    static final Descriptors.b f46246i;

    /* renamed from: j  reason: collision with root package name */
    static final GeneratedMessageV3.e f46247j;

    /* renamed from: k  reason: collision with root package name */
    private static Descriptors.FileDescriptor f46248k = Descriptors.FileDescriptor.s(new String[]{"\n\u001eenvoy/api/v2/auth/common.proto\u0012\u0011envoy.api.v2.auth\u001a\u001cenvoy/api/v2/core/base.proto\u001a\u001fenvoy/type/matcher/string.proto\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a udpa/annotations/sensitive.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"È\u0002\n\rTlsParameters\u0012\\\n\u001ctls_minimum_protocol_version\u0018\u0001 \u0001(\u000e2,.envoy.api.v2.auth.TlsParameters.TlsProtocolB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\\\n\u001ctls_maximum_protocol_version\u0018\u0002 \u0001(\u000e2,.envoy.api.v2.auth.TlsParameters.TlsProtocolB\búB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u0015\n\rcipher_suites\u0018\u0003 \u0003(\t\u0012\u0013\n\u000becdh_curves\u0018\u0004 \u0003(\t\"O\n\u000bTlsProtocol\u0012\f\n\bTLS_AUTO\u0010\u0000\u0012\u000b\n\u0007TLSv1_0\u0010\u0001\u0012\u000b\n\u0007TLSv1_1\u0010\u0002\u0012\u000b\n\u0007TLSv1_2\u0010\u0003\u0012\u000b\n\u0007TLSv1_3\u0010\u0004\"®\u0001\n\u0012PrivateKeyProvider\u0012\u001e\n\rprovider_name\u0018\u0001 \u0001(\tB\u0007úB\u0004r\u0002 \u0001\u00123\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\b\u0018\u0001¸·\u008b¤\u0002\u0001H\u0000\u00124\n\ftyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyB\u0006¸·\u008b¤\u0002\u0001H\u0000B\r\n\u000bconfig_type\"ý\u0002\n\u000eTlsCertificate\u00128\n\u0011certificate_chain\u0018\u0001 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSource\u0012:\n\u000bprivate_key\u0018\u0002 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSourceB\u0006¸·\u008b¤\u0002\u0001\u0012C\n\u0014private_key_provider\u0018\u0006 \u0001(\u000b2%.envoy.api.v2.auth.PrivateKeyProvider\u00127\n\bpassword\u0018\u0003 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSourceB\u0006¸·\u008b¤\u0002\u0001\u00122\n\u000bocsp_staple\u0018\u0004 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSource\u0012C\n\u001csigned_certificate_timestamp\u0018\u0005 \u0003(\u000b2\u001d.envoy.api.v2.core.DataSource\"S\n\u0014TlsSessionTicketKeys\u0012;\n\u0004keys\u0018\u0001 \u0003(\u000b2\u001d.envoy.api.v2.core.DataSourceB\u000eúB\u0005\u0092\u0001\u0002\b\u0001¸·\u008b¤\u0002\u0001\"ª\u0005\n\u001cCertificateValidationContext\u00121\n\ntrusted_ca\u0018\u0001 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSource\u0012/\n\u0017verify_certificate_spki\u0018\u0003 \u0003(\tB\u000eúB\u000b\u0092\u0001\b\"\u0006r\u0004 ,(,\u0012/\n\u0017verify_certificate_hash\u0018\u0002 \u0003(\tB\u000eúB\u000b\u0092\u0001\b\"\u0006r\u0004 @(_\u0012#\n\u0017verify_subject_alt_name\u0018\u0004 \u0003(\tB\u0002\u0018\u0001\u0012B\n\u0017match_subject_alt_names\u0018\t \u0003(\u000b2!.envoy.type.matcher.StringMatcher\u00127\n\u0013require_ocsp_staple\u0018\u0005 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012H\n$require_signed_certificate_timestamp\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012*\n\u0003crl\u0018\u0007 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSource\u0012!\n\u0019allow_expired_certificate\u0018\b \u0001(\b\u0012r\n\u0018trust_chain_verification\u0018\n \u0001(\u000e2F.envoy.api.v2.auth.CertificateValidationContext.TrustChainVerificationB\búB\u0005\u0082\u0001\u0002\u0010\u0001\"F\n\u0016TrustChainVerification\u0012\u0016\n\u0012VERIFY_TRUST_CHAIN\u0010\u0000\u0012\u0014\n\u0010ACCEPT_UNTRUSTED\u0010\u0001Bi\n\u001fio.envoyproxy.envoy.api.v2.authB\u000bCommonProtoP\u0001ò\u0098þ\u008f\u0005+\u0012)envoy.extensions.transport_sockets.tls.v3º\u0080ÈÑ\u0006\u0002\u0010\u0001b\u0006proto3"}, new Descriptors.FileDescriptor[]{io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a(), io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.l.a(), com.google.protobuf.g.a(), v2.a(), p3.a(), Migrate.g(), io.grpc.xds.shaded.udpa.annotations.a.a(), Status.c(), Validate.U()});

    static {
        Descriptors.b bVar = a().m().get(0);
        f46238a = bVar;
        f46239b = new GeneratedMessageV3.e(bVar, new String[]{"TlsMinimumProtocolVersion", "TlsMaximumProtocolVersion", "CipherSuites", "EcdhCurves"});
        Descriptors.b bVar2 = a().m().get(1);
        f46240c = bVar2;
        f46241d = new GeneratedMessageV3.e(bVar2, new String[]{"ProviderName", "Config", "TypedConfig", "ConfigType"});
        Descriptors.b bVar3 = a().m().get(2);
        f46242e = bVar3;
        f46243f = new GeneratedMessageV3.e(bVar3, new String[]{"CertificateChain", "PrivateKey", "PrivateKeyProvider", "Password", "OcspStaple", "SignedCertificateTimestamp"});
        Descriptors.b bVar4 = a().m().get(3);
        f46244g = bVar4;
        f46245h = new GeneratedMessageV3.e(bVar4, new String[]{"Keys"});
        Descriptors.b bVar5 = a().m().get(4);
        f46246i = bVar5;
        f46247j = new GeneratedMessageV3.e(bVar5, new String[]{"TrustedCa", "VerifyCertificateSpki", "VerifyCertificateHash", "VerifySubjectAltName", "MatchSubjectAltNames", "RequireOcspStaple", "RequireSignedCertificateTimestamp", "Crl", "AllowExpiredCertificate", "TrustChainVerification"});
        d0 k10 = d0.k();
        k10.f(Migrate.f50821e);
        k10.f(Status.f50839a);
        k10.f(io.grpc.xds.shaded.udpa.annotations.a.f50850a);
        k10.f(Validate.f50581c);
        Descriptors.FileDescriptor.u(f46248k, k10);
        io.grpc.xds.shaded.io.envoyproxy.envoy.api.v2.core.g.a();
        io.grpc.xds.shaded.io.envoyproxy.envoy.type.matcher.l.a();
        com.google.protobuf.g.a();
        v2.a();
        p3.a();
        Migrate.g();
        io.grpc.xds.shaded.udpa.annotations.a.a();
        Status.c();
        Validate.U();
    }

    public static Descriptors.FileDescriptor a() {
        return f46248k;
    }
}
