.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;
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
    .locals 20

    const-string v0, "\n3envoy/extensions/transport_sockets/tls/v3/tls.proto\u0012)envoy.extensions.transport_sockets.tls.v3\u001a$envoy/config/core/v3/extension.proto\u001a6envoy/extensions/transport_sockets/tls/v3/common.proto\u001a6envoy/extensions/transport_sockets/tls/v3/secret.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a#envoy/annotations/deprecation.proto\u001a\u001dudpa/annotations/status.proto\u001a!udpa/annotations/versioning.proto\u001a\u0017validate/validate.proto\"\u0086\u0002\n\u0012UpstreamTlsContext\u0012W\n\u0012common_tls_context\u0018\u0001 \u0001(\u000b2;.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext\u0012\u0015\n\u0003sni\u0018\u0002 \u0001(\tB\u0008\u00faB\u0005r\u0003(\u00ff\u0001\u0012\u001b\n\u0013allow_renegotiation\u0018\u0003 \u0001(\u0008\u00126\n\u0010max_session_keys\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32Value:+\u009a\u00c5\u0088\u001e&\n$envoy.api.v2.auth.UpstreamTlsContext\"\u00b6\u0006\n\u0014DownstreamTlsContext\u0012W\n\u0012common_tls_context\u0018\u0001 \u0001(\u000b2;.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext\u0012>\n\u001arequire_client_certificate\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012/\n\u000brequire_sni\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012^\n\u0013session_ticket_keys\u0018\u0004 \u0001(\u000b2?.envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeysH\u0000\u0012k\n%session_ticket_keys_sds_secret_config\u0018\u0005 \u0001(\u000b2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigH\u0000\u0012.\n$disable_stateless_session_resumption\u0018\u0007 \u0001(\u0008H\u0000\u0012D\n\u000fsession_timeout\u0018\u0006 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0010\u00faB\r\u00aa\u0001\n\u001a\u0006\u0008\u0080\u0080\u0080\u0080\u00102\u0000\u0012v\n\u0012ocsp_staple_policy\u0018\u0008 \u0001(\u000e2P.envoy.extensions.transport_sockets.tls.v3.DownstreamTlsContext.OcspStaplePolicyB\u0008\u00faB\u0005\u0082\u0001\u0002\u0010\u0001\"N\n\u0010OcspStaplePolicy\u0012\u0014\n\u0010LENIENT_STAPLING\u0010\u0000\u0012\u0013\n\u000fSTRICT_STAPLING\u0010\u0001\u0012\u000f\n\u000bMUST_STAPLE\u0010\u0002:-\u009a\u00c5\u0088\u001e(\n&envoy.api.v2.auth.DownstreamTlsContextB\u001a\n\u0018session_ticket_keys_type\"\u00ee\u0012\n\u0010CommonTlsContext\u0012L\n\ntls_params\u0018\u0001 \u0001(\u000b28.envoy.extensions.transport_sockets.tls.v3.TlsParameters\u0012S\n\u0010tls_certificates\u0018\u0002 \u0003(\u000b29.envoy.extensions.transport_sockets.tls.v3.TlsCertificate\u0012p\n\"tls_certificate_sds_secret_configs\u0018\u0006 \u0003(\u000b2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigB\u0008\u00faB\u0005\u0092\u0001\u0002\u0010\u0002\u0012w\n!tls_certificate_provider_instance\u0018\u000e \u0001(\u000b2L.envoy.extensions.transport_sockets.tls.v3.CertificateProviderPluginInstance\u0012\u008a\u0001\n$tls_certificate_certificate_provider\u0018\t \u0001(\u000b2O.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012\u009b\u0001\n-tls_certificate_certificate_provider_instance\u0018\u000b \u0001(\u000b2W.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstanceB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012e\n\u0012validation_context\u0018\u0003 \u0001(\u000b2G.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContextH\u0000\u0012j\n$validation_context_sds_secret_config\u0018\u0007 \u0001(\u000b2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigH\u0000\u0012\u0087\u0001\n\u001bcombined_validation_context\u0018\u0008 \u0001(\u000b2`.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CombinedCertificateValidationContextH\u0000\u0012\u008f\u0001\n\'validation_context_certificate_provider\u0018\n \u0001(\u000b2O.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0H\u0000\u0012\u00a0\u0001\n0validation_context_certificate_provider_instance\u0018\u000c \u0001(\u000b2W.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstanceB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0H\u0000\u0012\u0016\n\u000ealpn_protocols\u0018\u0004 \u0003(\t\u0012E\n\u0011custom_handshaker\u0018\r \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfig\u001a\u007f\n\u0013CertificateProvider\u0012\u0015\n\u0004name\u0018\u0001 \u0001(\tB\u0007\u00faB\u0004r\u0002\u0010\u0001\u0012B\n\u000ctyped_config\u0018\u0002 \u0001(\u000b2*.envoy.config.core.v3.TypedExtensionConfigH\u0000B\r\n\u0006config\u0012\u0003\u00f8B\u0001\u001aN\n\u001bCertificateProviderInstance\u0012\u0015\n\rinstance_name\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010certificate_name\u0018\u0002 \u0001(\t\u001a\u0092\u0005\n$CombinedCertificateValidationContext\u0012u\n\u001adefault_validation_context\u0018\u0001 \u0001(\u000b2G.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContextB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012r\n$validation_context_sds_secret_config\u0018\u0002 \u0001(\u000b2:.envoy.extensions.transport_sockets.tls.v3.SdsSecretConfigB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012\u008d\u0001\n\'validation_context_certificate_provider\u0018\u0003 \u0001(\u000b2O.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0\u0012\u009e\u0001\n0validation_context_certificate_provider_instance\u0018\u0004 \u0001(\u000b2W.envoy.extensions.transport_sockets.tls.v3.CommonTlsContext.CertificateProviderInstanceB\u000b\u0018\u0001\u0092\u00c7\u0086\u00d8\u0004\u00033.0:N\u009a\u00c5\u0088\u001eI\nGenvoy.api.v2.auth.CommonTlsContext.CombinedCertificateValidationContext:)\u009a\u00c5\u0088\u001e$\n\"envoy.api.v2.auth.CommonTlsContextB\u0019\n\u0017validation_context_typeJ\u0004\u0008\u0005\u0010\u0006BM\n7io.envoyproxy.envoy.extensions.transport_sockets.tls.v3B\u0008TlsProtoP\u0001\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0002b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/i;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v1, v6

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v1, v6

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v1, v6

    .line 9
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x7

    aput-object v2, v1, v6

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/16 v6, 0x8

    aput-object v2, v1, v6

    .line 11
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->a:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "CommonTlsContext"

    const-string v6, "Sni"

    const-string v7, "AllowRenegotiation"

    const-string v8, "MaxSessionKeys"

    filled-new-array {v2, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->c:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "CommonTlsContext"

    const-string v7, "RequireClientCertificate"

    const-string v8, "RequireSni"

    const-string v9, "SessionTicketKeys"

    const-string v10, "SessionTicketKeysSdsSecretConfig"

    const-string v11, "DisableStatelessSessionResumption"

    const-string v12, "SessionTimeout"

    const-string v13, "OcspStaplePolicy"

    const-string v14, "SessionTicketKeysType"

    filled-new-array/range {v6 .. v14}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->e:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "TlsParams"

    const-string v7, "TlsCertificates"

    const-string v8, "TlsCertificateSdsSecretConfigs"

    const-string v9, "TlsCertificateProviderInstance"

    const-string v10, "TlsCertificateCertificateProvider"

    const-string v11, "TlsCertificateCertificateProviderInstance"

    const-string v12, "ValidationContext"

    const-string v13, "ValidationContextSdsSecretConfig"

    const-string v14, "CombinedValidationContext"

    const-string v15, "ValidationContextCertificateProvider"

    const-string v16, "ValidationContextCertificateProviderInstance"

    const-string v17, "AlpnProtocols"

    const-string v18, "CustomHandshaker"

    const-string v19, "ValidationContextType"

    filled-new-array/range {v6 .. v19}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->g:Lcom/google/protobuf/Descriptors$b;

    .line 19
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "Name"

    const-string v6, "TypedConfig"

    const-string v7, "Config"

    filled-new-array {v3, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 20
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$b;

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->i:Lcom/google/protobuf/Descriptors$b;

    .line 21
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v3, "InstanceName"

    const-string v4, "CertificateName"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->k:Lcom/google/protobuf/Descriptors$b;

    .line 23
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "DefaultValidationContext"

    const-string v3, "ValidationContextSdsSecretConfig"

    const-string v4, "ValidationContextCertificateProvider"

    const-string v5, "ValidationContextCertificateProviderInstance"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 24
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 25
    sget-object v1, Lio/grpc/xds/shaded/envoy/annotations/a;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 26
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 27
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 28
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->b:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 29
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 30
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 31
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 32
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/v;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 33
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/c;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 34
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/i;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 35
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 36
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/envoy/annotations/a;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 38
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 39
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Versioning;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 40
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->m:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
