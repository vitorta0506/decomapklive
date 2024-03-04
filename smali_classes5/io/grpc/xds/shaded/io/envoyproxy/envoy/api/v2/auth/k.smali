.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;
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

.field private static i:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "\n\u001benvoy/api/v2/auth/tls.proto\u0012\u0011envoy.api.v2.auth\u001a\u001eenvoy/api/v2/auth/common.proto\u001a\u001eenvoy/api/v2/auth/secret.proto\u001a\u001egoogle/protobuf/duration.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001eudpa/annotations/migrate.proto\u001a\u001dudpa/annotations/status.proto\u001a\u0017validate/validate.proto\"\u00c1\u0001\n\u0012UpstreamTlsContext\u0012?\n\u0012common_tls_context\u0018\u0001 \u0001(\u000b2#.envoy.api.v2.auth.CommonTlsContext\u0012\u0015\n\u0003sni\u0018\u0002 \u0001(\tB\u0008\u00faB\u0005r\u0003(\u00ff\u0001\u0012\u001b\n\u0013allow_renegotiation\u0018\u0003 \u0001(\u0008\u00126\n\u0010max_session_keys\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\"\u00f7\u0003\n\u0014DownstreamTlsContext\u0012?\n\u0012common_tls_context\u0018\u0001 \u0001(\u000b2#.envoy.api.v2.auth.CommonTlsContext\u0012>\n\u001arequire_client_certificate\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012/\n\u000brequire_sni\u0018\u0003 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012F\n\u0013session_ticket_keys\u0018\u0004 \u0001(\u000b2\'.envoy.api.v2.auth.TlsSessionTicketKeysH\u0000\u0012S\n%session_ticket_keys_sds_secret_config\u0018\u0005 \u0001(\u000b2\".envoy.api.v2.auth.SdsSecretConfigH\u0000\u0012.\n$disable_stateless_session_resumption\u0018\u0007 \u0001(\u0008H\u0000\u0012D\n\u000fsession_timeout\u0018\u0006 \u0001(\u000b2\u0019.google.protobuf.DurationB\u0010\u00faB\r\u00aa\u0001\n\u001a\u0006\u0008\u0080\u0080\u0080\u0080\u00102\u0000B\u001a\n\u0018session_ticket_keys_type\"\u0090\u0006\n\u0010CommonTlsContext\u00124\n\ntls_params\u0018\u0001 \u0001(\u000b2 .envoy.api.v2.auth.TlsParameters\u0012;\n\u0010tls_certificates\u0018\u0002 \u0003(\u000b2!.envoy.api.v2.auth.TlsCertificate\u0012X\n\"tls_certificate_sds_secret_configs\u0018\u0006 \u0003(\u000b2\".envoy.api.v2.auth.SdsSecretConfigB\u0008\u00faB\u0005\u0092\u0001\u0002\u0010\u0001\u0012M\n\u0012validation_context\u0018\u0003 \u0001(\u000b2/.envoy.api.v2.auth.CertificateValidationContextH\u0000\u0012R\n$validation_context_sds_secret_config\u0018\u0007 \u0001(\u000b2\".envoy.api.v2.auth.SdsSecretConfigH\u0000\u0012o\n\u001bcombined_validation_context\u0018\u0008 \u0001(\u000b2H.envoy.api.v2.auth.CommonTlsContext.CombinedCertificateValidationContextH\u0000\u0012\u0016\n\u000ealpn_protocols\u0018\u0004 \u0003(\t\u001a\u00e1\u0001\n$CombinedCertificateValidationContext\u0012]\n\u001adefault_validation_context\u0018\u0001 \u0001(\u000b2/.envoy.api.v2.auth.CertificateValidationContextB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001\u0012Z\n$validation_context_sds_secret_config\u0018\u0002 \u0001(\u000b2\".envoy.api.v2.auth.SdsSecretConfigB\u0008\u00faB\u0005\u008a\u0001\u0002\u0010\u0001B\u0019\n\u0017validation_context_typeJ\u0004\u0008\u0005\u0010\u0006Bf\n\u001fio.envoyproxy.envoy.api.v2.authB\u0008TlsProtoP\u0001\u00f2\u0098\u00fe\u008f\u0005+\u0012)envoy.extensions.transport_sockets.tls.v3\u00ba\u0080\u00c8\u00d1\u0006\u0002\u0010\u0001b\u0006proto3"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 5
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 6
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v1, v6

    .line 7
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v1, v6

    .line 8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v1, v6

    .line 9
    invoke-static {v0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->s([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->i:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->a:Lcom/google/protobuf/Descriptors$b;

    .line 11
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "CommonTlsContext"

    const-string v6, "Sni"

    const-string v7, "AllowRenegotiation"

    const-string v8, "MaxSessionKeys"

    filled-new-array {v2, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->c:Lcom/google/protobuf/Descriptors$b;

    .line 13
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v6, "CommonTlsContext"

    const-string v7, "RequireClientCertificate"

    const-string v8, "RequireSni"

    const-string v9, "SessionTicketKeys"

    const-string v10, "SessionTicketKeysSdsSecretConfig"

    const-string v11, "DisableStatelessSessionResumption"

    const-string v12, "SessionTimeout"

    const-string v13, "SessionTicketKeysType"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->e:Lcom/google/protobuf/Descriptors$b;

    .line 15
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v4, "TlsParams"

    const-string v5, "TlsCertificates"

    const-string v6, "TlsCertificateSdsSecretConfigs"

    const-string v7, "ValidationContext"

    const-string v8, "ValidationContextSdsSecretConfig"

    const-string v9, "CombinedValidationContext"

    const-string v10, "AlpnProtocols"

    const-string v11, "ValidationContextType"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 16
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$b;

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->g:Lcom/google/protobuf/Descriptors$b;

    .line 17
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$e;

    const-string v2, "DefaultValidationContext"

    const-string v3, "ValidationContextSdsSecretConfig"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;-><init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    .line 18
    invoke-static {}, Lcom/google/protobuf/d0;->k()Lcom/google/protobuf/d0;

    move-result-object v0

    .line 19
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->e:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 20
    sget-object v1, Lio/grpc/xds/shaded/udpa/annotations/Status;->a:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 21
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->c:Lcom/google/protobuf/GeneratedMessage$l;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d0;->f(Lcom/google/protobuf/GeneratedMessage$l;)V

    .line 22
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->i:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 23
    invoke-static {v1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->u(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/d0;)V

    .line 24
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/b;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 25
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/h;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 26
    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 27
    invoke-static {}, Lcom/google/protobuf/p3;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 28
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Migrate;->g()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 29
    invoke-static {}, Lio/grpc/xds/shaded/udpa/annotations/Status;->c()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 30
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/pgv/validate/Validate;->U()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method public static a()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/k;->i:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method
