.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;
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

.field static final k:Lcom/google/protobuf/Descriptors$b;

.field static final l:Lcom/google/protobuf/GeneratedMessageV3$e;

.field private static m:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "\n6envoy/extensions/transport_sockets/tls/v3/common.proto\u0012)envoy.extensions.transport_sockets.tls.v3\u001a\u001fenvoy/config/core/v3/base.proto\u001a$envoy/config/core/v3/extension.proto\u001a\"envoy/type/matcher/v3/string.proto\u001a\u0019google/protobuf/any.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a udpa/annotations/sensitive.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u00a0\u0003\n\rTlsParameters\u0012t\n\u001ctls_minimum_protocol_version\u0018\u0001 \u0001(\u000e2D.envoy.extensions.transport_sockets.tls.v3.TlsParameters.TlsProtocolB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012t\n\u001ctls_maximum_protocol_version\u0018\u0002 \u0001(\u000e2D.envoy.extensions.transport_sockets.tls.v3.TlsParameters.TlsProtocolB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012\u0015\n\rcipher_suites\u0018\u0003 \u0003(\t\u0012\u0013\n\u000becdh_curves\u0018\u0004 \u0003(\t\"O\n\u000bTlsProtocol\u0012\u000c\n\u0008TLS_AUTO\u0010\u0000\u0012\u000b\n\u0007TLSv1_0\u0010\u0001\u0012\u000b\n\u0007TLSv1_1\u0010\u0002\u0012\u000b\n\u0007TLSv1_2\u0010\u0003\u0012\u000b\n\u0007TLSv1_3\u0010\u0004:&\u009a\u00c5\u0088\u001e!\n\u001fenvoy.api.v2.auth.TlsParameters\"\u00b4\u0001\n\u0012PrivateKeyProvider\u0012\u001e\n\rprovider_name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u00124\n\u000ctyped_config\u0018\u0003 \u0001(\u000b2\u0014.google.protobuf.AnyB\u0006\u00b8\u00b7\u008b\u00a4\u0002\u0001H\u0000:+\u009a\u00c5\u0088\u001e&\n$envoy.api.v2.auth.PrivateKeyProviderB\r\n\u000bconfig_typeJ\u0004\u0008\u0002\u0010\u0003R\u0006config\"\u0090\u0004\n\u000eTlsCertificate\u0012;\n\u0011certificate_chain\u0018\u0001 \u0001(\u000b2 .envoy.config.core.v3.DataSource\u0012=\n\u000bprivate_key\u0018\u0002 \u0001(\u000b2 .envoy.config.core.v3.DataSourceB\u0006\u00b8\u00b7\u008b\u00a4\u0002\u0001\u0012A\n\u0011watched_directory\u0018\u0007 \u0001(\u000b2&.envoy.config.core.v3.WatchedDirectory\u0012[\n\u0014private_key_provider\u0018\u0006 \u0001(\u000b2=.envoy.extensions.transport_sockets.tls.v3.PrivateKeyProvider\u0012:\n\u0008password\u0018\u0003 \u0001(\u000b2 .envoy.config.core.v3.DataSourceB\u0006\u00b8\u00b7\u008b\u00a4\u0002\u0001\u00125\n\u000bocsp_staple\u0018\u0004 \u0001(\u000b2 .envoy.config.core.v3.DataSource\u0012F\n\u001csigned_certificate_timestamp\u0018\u0005 \u0003(\u000b2 .envoy.config.core.v3.DataSource:\'\u009a\u00c5\u0088\u001e\"\n envoy.api.v2.auth.TlsCertificate\"\u0085\u0001\n\u0014TlsSessionTicketKeys\u0012>\n\u0004keys\u0018\u0001 \u0003(\u000b2 .envoy.config.core.v3.DataSourceB\u000e\u00faB\u0005\u0092\u0001\u0002\u0008\u0001\u00b8\u00b7\u008b\u00a4\u0002\u0001:-\u009a\u00c5\u0088\u001e(\n&envoy.api.v2.auth.TlsSessionTicketKeys\"T\n!CertificateProviderPluginInstance\u0012\u0015\n\rinstance_name\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010certificate_name\u0018\u0002 \u0001(\t\"\u0083\u0008\n\u001cCertificateValidationContext\u0012L\n\ntrusted_ca\u0018\u0001 \u0001(\u000b2 .envoy.config.core.v3.DataSourceB\u0016\u00f2\u0098\u00fe\u008f\u0005\u0010\u0012\u000eca_cert_source\u0012\u008e\u0001\n ca_certificate_provider_instance\u0018\r \u0001(\u000b2L.envoy.extensions.transport_sockets.tls.v3.CertificateProviderPluginInstanceB\u0016\u00f2\u0098\u00fe\u008f\u0005\u0010\u0012\u000eca_cert_source\u0012A\n\u0011watched_directory\u0018\u000b \u0001(\u000b2&.envoy.config.core.v3.WatchedDirectory\u0012/\n\u0017verify_certificate_spki\u0018\u0003 \u0003(\tB\u000e\u00faB\u000b\u0092\u0001\u0008\"\u0006r\u0004\u0010,(,\u0012/\n\u0017verify_certificate_hash\u0018\u0002 \u0003(\tB\u000e\u00faB\u000b\u0092\u0001\u0008\"\u0006r\u0004\u0010@(_\u0012E\n\u0017match_subject_alt_names\u0018\t \u0003(\u000b2$.envoy.type.matcher.v3.StringMatcher\u0012H\n$require_signed_certificate_timestamp\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012-\n\u0003crl\u0018\u0007 \u0001(\u000b2 .envoy.config.core.v3.DataSource\u0012!\n\u0019allow_expired_certificate\u0018\u0008 \u0001(\u0008\u0012\u008a\u0001\n\u0018trust_chain_verification\u0018\n \u0001(\u000e2^.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext.TrustChainVerificationB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\u0012K\n\u0017custom_validator_config\u0018\u000c \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\"F\n\u0016TrustChainVerification\u0012\u0016\n\u0012VERIFY_TRUST_CHAIN\u0010\u0000\u0012\u0014\n\u0010ACCEPT_UNTRUSTED\u0010\u0001:5\u009a\u00c5\u0088\u001e0\n.envoy.api.v2.auth.CertificateValidationContextJ\u0004\u0008\u0004\u0010\u0005J\u0004\u0008\u0005\u0010\u0006R\u0017verify_subject_alt_nameBP\n7io.envoyproxy.envoy.extensions.transport_sockets.tls.v3B\u000bCommonProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

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

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v9, 0x7

    aput-object v2, v1, v9

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v9, 0x8

    aput-object v2, v1, v9

    .line 11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v9, 0x9

    aput-object v2, v1, v9

    .line 12
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->a:Lcom/google/protobuf/Descriptors$b;

    .line 14
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "TlsMinimumProtocolVersion"

    const-string v3, "TlsMaximumProtocolVersion"

    const-string v9, "CipherSuites"

    const-string v10, "EcdhCurves"

    filled-new-array {v2, v3, v9, v10}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->c:Lcom/google/protobuf/Descriptors$b;

    .line 16
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "ProviderName"

    const-string v3, "TypedConfig"

    const-string v4, "ConfigType"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->e:Lcom/google/protobuf/Descriptors$b;

    .line 18
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v9, "CertificateChain"

    const-string v10, "PrivateKey"

    const-string v11, "WatchedDirectory"

    const-string v12, "PrivateKeyProvider"

    const-string v13, "Password"

    const-string v14, "OcspStaple"

    const-string v15, "SignedCertificateTimestamp"

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 19
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->g:Lcom/google/protobuf/Descriptors$b;

    .line 20
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "Keys"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->i:Lcom/google/protobuf/Descriptors$b;

    .line 22
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "InstanceName"

    const-string v3, "CertificateName"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 23
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->k:Lcom/google/protobuf/Descriptors$b;

    .line 24
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "TrustedCa"

    const-string v3, "CaCertificateProviderInstance"

    const-string v4, "WatchedDirectory"

    const-string v5, "VerifyCertificateSpki"

    const-string v6, "VerifyCertificateHash"

    const-string v7, "MatchSubjectAltNames"

    const-string v8, "RequireSignedCertificateTimestamp"

    const-string v9, "Crl"

    const-string v10, "AllowExpiredCertificate"

    const-string v11, "TrustChainVerification"

    const-string v12, "CustomValidatorConfig"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 25
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 26
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 27
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 28
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/a;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 29
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 30
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 31
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 32
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 33
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 34
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 35
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/o;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 36
    invoke-static {}, Lcom/google/protobuf/g;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 38
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 39
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 40
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 41
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 42
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
