.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CombinedCertificateValidationContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

.field public static final DEFAULT_VALIDATION_CONTEXT_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALIDATION_CONTEXT_CERTIFICATE_PROVIDER_FIELD_NUMBER:I = 0x3

.field public static final VALIDATION_CONTEXT_CERTIFICATE_PROVIDER_INSTANCE_FIELD_NUMBER:I = 0x4

.field public static final VALIDATION_CONTEXT_SDS_SECRET_CONFIG_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private defaultValidationContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

.field private memoizedIsInitialized:B

.field private validationContextCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

.field private validationContextCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

.field private validationContextSdsSecretConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$b<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;-><init>()V

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_a

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_7

    const/16 v4, 0x12

    if-eq v2, v4, :cond_5

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 12
    :cond_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance$b;

    move-result-object v5

    .line 14
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    if-eqz v5, :cond_0

    .line 15
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance$b;

    .line 16
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    goto :goto_0

    .line 17
    :cond_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider$b;

    move-result-object v5

    .line 19
    :cond_4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    if-eqz v5, :cond_0

    .line 20
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider$b;

    .line 21
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    goto :goto_0

    .line 22
    :cond_5
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextSdsSecretConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig$b;

    move-result-object v5

    .line 24
    :cond_6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextSdsSecretConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    if-eqz v5, :cond_0

    .line 25
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig$b;

    .line 26
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextSdsSecretConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    goto/16 :goto_0

    .line 27
    :cond_7
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->defaultValidationContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    if-eqz v2, :cond_8

    .line 28
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext$b;

    move-result-object v5

    .line 29
    :cond_8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->defaultValidationContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    if-eqz v5, :cond_0

    .line 30
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext$b;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext$b;

    .line 31
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->defaultValidationContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 32
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 33
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 34
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 36
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 37
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 38
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->defaultValidationContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    return-object p1
.end method

.method static synthetic access$2702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextSdsSecretConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    return-object p1
.end method

.method static synthetic access$2802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    return-object p1
.end method

.method static synthetic access$2902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    return-object p1
.end method

.method static synthetic access$3000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$3100()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasDefaultValidationContext()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasDefaultValidationContext()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasDefaultValidationContext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getDefaultValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getDefaultValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasValidationContextSdsSecretConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasValidationContextSdsSecretConfig()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasValidationContextSdsSecretConfig()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextSdsSecretConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextSdsSecretConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasValidationContextCertificateProvider()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasValidationContextCertificateProvider()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasValidationContextCertificateProvider()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasValidationContextCertificateProviderInstance()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasValidationContextCertificateProviderInstance()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasValidationContextCertificateProviderInstance()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 20
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v3

    :cond_a
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object v0
.end method

.method public getDefaultValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->defaultValidationContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefaultValidationContextOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getDefaultValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->defaultValidationContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getDefaultValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextSdsSecretConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextSdsSecretConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getValidationContextCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getValidationContextCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getValidationContextCertificateProviderInstanceOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v0

    return-object v0
.end method

.method public getValidationContextCertificateProviderOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$e;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v0

    return-object v0
.end method

.method public getValidationContextSdsSecretConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextSdsSecretConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getValidationContextSdsSecretConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/g;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextSdsSecretConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    move-result-object v0

    return-object v0
.end method

.method public hasDefaultValidationContext()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->defaultValidationContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValidationContextCertificateProvider()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValidationContextCertificateProviderInstance()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValidationContextSdsSecretConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextSdsSecretConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasDefaultValidationContext()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getDefaultValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasValidationContextSdsSecretConfig()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextSdsSecretConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasValidationContextCertificateProvider()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hasValidationContextCertificateProviderInstance()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->defaultValidationContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getDefaultValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextSdsSecretConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextSdsSecretConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->validationContextCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getValidationContextCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
