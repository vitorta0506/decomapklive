.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/protobuf/Descriptors$b;

.field static final b:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/google/protobuf/Descriptors$b;

.field static final d:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final e:Lcom/google/protobuf/Descriptors$b;

.field static final f:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final g:Lcom/google/protobuf/Descriptors$b;

.field static final h:Lcom/google/protobuf/GeneratedMessageV3$e;

.field static final i:Lcom/google/protobuf/Descriptors$b;

.field static final j:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static k:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "\n\u001eenvoy/api/v2/auth/common.proto\u0012\u0011envoy.api.v2.auth\u001a\u001cenvoy/api/v2/core/base.proto\u001a\u001fenvoy/type/matcher/string.proto\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a udpa/annotations/sensitive.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u00c8\u0002\n\rTlsParameters\u0012\\\n\u001ctls_minimum_protocol_version\u0018\u0001 \u0001(\u000e2,.envoy.api.v2.auth.TlsParameters.TlsProtocolB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\\\n\u001ctls_maximum_protocol_version\u0018\u0002 \u0001(\u000e2,.envoy.api.v2.auth.TlsParameters.TlsProtocolB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u0015\n\rcipher_suites\u0018\u0003 \u0003(\t\u0012\u0013\n\u000becdh_curves\u0018\u0004 \u0003(\t\"O\n\u000bTlsProtocol\u0012\u000c\n\u0008TLS_AUTO\u0010\u0000\u0012\u000b\n\u0007TLSv1_0\u0010\u0001\u0012\u000b\n\u0007TLSv1_1\u0010\u0002\u0012\u000b\n\u0007TLSv1_2\u0010\u0003\u0012\u000b\n\u0007TLSv1_3\u0010\u0004\"\u00ae\u0001\n\u0012PrivateKeyProvider\u0012\u001e\n\rprovider_name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002 \u0001\u00123\n\u0006config\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.StructB\u0008\u0018\u0001\u00b8\u00b7\u008b\u00a4\u0002\u0001H\u0000\u00124\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyB\u0006\u00b8\u00b7\u008b\u00a4\u0002\u0001H\u0000B\r\n\u000bconfig_type\"\u00fd\u0002\n\u000eTlsCertificate\u00128\n\u0011certificate_chain\u0018\u0001 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSource\u0012:\n\u000bprivate_key\u0018\u0002 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSourceB\u0006\u00b8\u00b7\u008b\u00a4\u0002\u0001\u0012C\n\u0014private_key_provider\u0018\u0006 \u0001(\u000b2%.envoy.api.v2.auth.PrivateKeyProvider\u00127\n\u0008password\u0018\u0003 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSourceB\u0006\u00b8\u00b7\u008b\u00a4\u0002\u0001\u00122\n\u000bocsp_staple\u0018\u0004 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSource\u0012C\n\u001csigned_certificate_timestamp\u0018\u0005 \u0003(\u000b2\u001d.envoy.api.v2.core.DataSource\"S\n\u0014TlsSessionTicketKeys\u0012;\n\u0004keys\u0018\u0001 \u0003(\u000b2\u001d.envoy.api.v2.core.DataSourceB\u000e\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\u00b8\u00b7\u008b\u00a4\u0002\u0001\"\u00aa\u0005\n\u001cCertificateValidationContext\u00121\n\ntrusted_ca\u0018\u0001 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSource\u0012/\n\u0017verify_certificate_spki\u0018\u0003 \u0003(\tB\u000e\u00faB\u000b\u0092\u0001\u0008\"\u0006r\u0004 ,(,\u0012/\n\u0017verify_certificate_hash\u0018\u0002 \u0003(\tB\u000e\u00faB\u000b\u0092\u0001\u0008\"\u0006r\u0004 @(_\u0012#\n\u0017verify_subject_alt_name\u0018\u0004 \u0003(\tB\u0002\u0018\u0001\u0012B\n\u0017match_subject_alt_names\u0018\t \u0003(\u000b2!.envoy.type.matcher.StringMatcher\u00127\n\u0013require_ocsp_staple\u0018\u0005 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012H\n$require_signed_certificate_timestamp\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012*\n\u0003crl\u0018\u0007 \u0001(\u000b2\u001d.envoy.api.v2.core.DataSource\u0012!\n\u0019allow_expired_certificate\u0018\u0008 \u0001(\u0008\u0012r\n\u0018trust_chain_verification\u0018\n \u0001(\u000e2F.envoy.api.v2.auth.CertificateValidationContext.TrustChainVerificationB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\"F\n\u0016TrustChainVerification\u0012\u0016\n\u0012VERIFY_TRUST_CHAIN\u0010\u0000\u0012\u0014\n\u0010ACCEPT_UNTRUSTED\u0010\u0001Bi\n\u001fio.envoyproxy.envoy.api.v2.authB\u000bCommonProtoP\u0001\u00f2\u0098\u00fe\u008f\u0005+\u0012)envoy.extensions.transport_sockets.tls.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v1, v8

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v1, v8

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v8, 0x8

    aput-object v2, v1, v8

    .line 11
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->a:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "TlsMinimumProtocolVersion"

    const-string v3, "TlsMaximumProtocolVersion"

    const-string v8, "CipherSuites"

    const-string v9, "EcdhCurves"

    filled-new-array {v2, v3, v8, v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->c:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ProviderName"

    const-string v3, "Config"

    const-string v4, "TypedConfig"

    const-string v8, "ConfigType"

    filled-new-array {v2, v3, v4, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->e:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v8, "CertificateChain"

    const-string v9, "PrivateKey"

    const-string v10, "PrivateKeyProvider"

    const-string v11, "Password"

    const-string v12, "OcspStaple"

    const-string v13, "SignedCertificateTimestamp"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->g:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Keys"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->i:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "TrustedCa"

    const-string v3, "VerifyCertificateSpki"

    const-string v4, "VerifyCertificateHash"

    const-string v5, "VerifySubjectAltName"

    const-string v6, "MatchSubjectAltNames"

    const-string v7, "RequireOcspStaple"

    const-string v8, "RequireSignedCertificateTimestamp"

    const-string v9, "Crl"

    const-string v10, "AllowExpiredCertificate"

    const-string v11, "TrustChainVerification"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 23
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 24
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 25
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/a;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 26
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 27
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 28
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 29
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 30
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 31
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 32
    invoke-static {}, Lcom/google/protobuf/v2;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 33
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 34
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 36
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->k:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
