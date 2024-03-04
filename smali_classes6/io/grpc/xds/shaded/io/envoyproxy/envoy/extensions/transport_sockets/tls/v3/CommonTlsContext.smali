.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$f;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$e;
    }
.end annotation


# static fields
.field public static final ALPN_PROTOCOLS_FIELD_NUMBER:I = 0x4

.field public static final COMBINED_VALIDATION_CONTEXT_FIELD_NUMBER:I = 0x8

.field public static final CUSTOM_HANDSHAKER_FIELD_NUMBER:I = 0xd

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final TLS_CERTIFICATES_FIELD_NUMBER:I = 0x2

.field public static final TLS_CERTIFICATE_CERTIFICATE_PROVIDER_FIELD_NUMBER:I = 0x9

.field public static final TLS_CERTIFICATE_CERTIFICATE_PROVIDER_INSTANCE_FIELD_NUMBER:I = 0xb

.field public static final TLS_CERTIFICATE_PROVIDER_INSTANCE_FIELD_NUMBER:I = 0xe

.field public static final TLS_CERTIFICATE_SDS_SECRET_CONFIGS_FIELD_NUMBER:I = 0x6

.field public static final TLS_PARAMS_FIELD_NUMBER:I = 0x1

.field public static final VALIDATION_CONTEXT_CERTIFICATE_PROVIDER_FIELD_NUMBER:I = 0xa

.field public static final VALIDATION_CONTEXT_CERTIFICATE_PROVIDER_INSTANCE_FIELD_NUMBER:I = 0xc

.field public static final VALIDATION_CONTEXT_FIELD_NUMBER:I = 0x3

.field public static final VALIDATION_CONTEXT_SDS_SECRET_CONFIG_FIELD_NUMBER:I = 0x7

.field private static final serialVersionUID:J


# instance fields
.field private alpnProtocols_:Lcom/google/protobuf/z0;

.field private customHandshaker_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

.field private memoizedIsInitialized:B

.field private tlsCertificateCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

.field private tlsCertificateCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

.field private tlsCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

.field private tlsCertificateSdsSecretConfigs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;",
            ">;"
        }
    .end annotation
.end field

.field private tlsCertificates_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private tlsParams_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

.field private validationContextTypeCase_:I

.field private validationContextType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->memoizedIsInitialized:B

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    .line 11
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

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

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;-><init>()V

    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_16

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    .line 16
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_2

    .line 17
    :sswitch_0
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    if-eqz v3, :cond_1

    .line 18
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance$b;

    move-result-object v5

    .line 19
    :cond_1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    if-eqz v5, :cond_0

    .line 20
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance$b;

    .line 21
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    goto :goto_0

    .line 22
    :sswitch_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->customHandshaker_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v3, :cond_2

    .line 23
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;

    move-result-object v5

    .line 24
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->customHandshaker_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v5, :cond_0

    .line 25
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;

    .line 26
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->customHandshaker_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    goto :goto_0

    .line 27
    :sswitch_2
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_3

    .line 28
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance$b;

    move-result-object v5

    .line 29
    :cond_3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 30
    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance$b;

    .line 31
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    .line 32
    :cond_4
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    goto :goto_0

    .line 33
    :sswitch_3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    if-eqz v3, :cond_5

    .line 34
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance$b;

    move-result-object v5

    .line 35
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    if-eqz v5, :cond_0

    .line 36
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance$b;

    .line 37
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    goto/16 :goto_0

    .line 38
    :sswitch_4
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_6

    .line 39
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider$b;

    move-result-object v5

    .line 40
    :cond_6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    if-eqz v5, :cond_7

    .line 41
    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider$b;

    .line 42
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    .line 43
    :cond_7
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    goto/16 :goto_0

    .line 44
    :sswitch_5
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    if-eqz v3, :cond_8

    .line 45
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider$b;

    move-result-object v5

    .line 46
    :cond_8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    if-eqz v5, :cond_0

    .line 47
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider$b;

    .line 48
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    goto/16 :goto_0

    .line 49
    :sswitch_6
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_9

    .line 50
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    move-result-object v5

    .line 51
    :cond_9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    if-eqz v5, :cond_a

    .line 52
    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;

    .line 53
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    .line 54
    :cond_a
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    goto/16 :goto_0

    .line 55
    :sswitch_7
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_b

    .line 56
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig$b;

    move-result-object v5

    .line 57
    :cond_b
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    if-eqz v5, :cond_c

    .line 58
    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig$b;

    .line 59
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    .line 60
    :cond_c
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_d

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 62
    :cond_d
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    .line 63
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    .line 64
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 65
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_e

    .line 66
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x4

    .line 67
    :cond_e
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 68
    :sswitch_a
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    .line 69
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext$b;

    move-result-object v5

    .line 70
    :cond_f
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    if-eqz v5, :cond_10

    .line 71
    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext$b;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext$b;

    .line 72
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    .line 73
    :cond_10
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    goto/16 :goto_0

    :sswitch_b
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_11

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 75
    :cond_11
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    .line 76
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsCertificate;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsCertificate;

    .line 77
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 78
    :sswitch_c
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsParams_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    if-eqz v3, :cond_12

    .line 79
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters$b;

    move-result-object v5

    .line 80
    :cond_12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsParams_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    if-eqz v5, :cond_0

    .line 81
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters$b;

    .line 82
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsParams_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_d
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 83
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 84
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 85
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_13

    .line 86
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    :cond_13
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_14

    .line 87
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    :cond_14
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_15

    .line 88
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    .line 89
    :cond_15
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 90
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_16
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_17

    .line 91
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    :cond_17
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_18

    .line 92
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    :cond_18
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_19

    .line 93
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    .line 94
    :cond_19
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 95
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_c
        0x12 -> :sswitch_b
        0x1a -> :sswitch_a
        0x22 -> :sswitch_9
        0x32 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x52 -> :sswitch_4
        0x5a -> :sswitch_3
        0x62 -> :sswitch_2
        0x6a -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$3500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsParams_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    return-object p1
.end method

.method static synthetic access$3800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    return-object p1
.end method

.method static synthetic access$4102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    return-object p1
.end method

.method static synthetic access$4202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    return-object p1
.end method

.method static synthetic access$4302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$4402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$4502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->customHandshaker_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    return-object p1
.end method

.method static synthetic access$4602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    return p1
.end method

.method static synthetic access$4700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$5000()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsParams()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsParams()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsParams()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsParams()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsParams()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificatesList()Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificatesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateSdsSecretConfigsList()Ljava/util/List;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateSdsSecretConfigsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsCertificateProviderInstance()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsCertificateProviderInstance()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsCertificateProviderInstance()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsCertificateCertificateProvider()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsCertificateCertificateProvider()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsCertificateCertificateProvider()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsCertificateCertificateProviderInstance()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsCertificateCertificateProviderInstance()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 21
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsCertificateCertificateProviderInstance()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 24
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getAlpnProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getAlpnProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 26
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasCustomHandshaker()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasCustomHandshaker()Z

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 27
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasCustomHandshaker()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getCustomHandshaker()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getCustomHandshaker()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    .line 30
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContextTypeCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContextTypeCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 31
    :cond_f
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    const/16 v2, 0xa

    if-eq v1, v2, :cond_13

    const/16 v2, 0xc

    if-eq v1, v2, :cond_12

    const/4 v2, 0x7

    if-eq v1, v2, :cond_11

    const/16 v2, 0x8

    if-eq v1, v2, :cond_10

    goto :goto_0

    .line 32
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getCombinedValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getCombinedValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    .line 34
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContextSdsSecretConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContextSdsSecretConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    .line 36
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContextCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContextCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    .line 38
    :cond_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContextCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContextCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    .line 40
    :cond_14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    .line 42
    :cond_15
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v3

    :cond_16
    return v0
.end method

.method public getAlpnProtocols(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAlpnProtocolsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAlpnProtocolsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlpnProtocolsList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getAlpnProtocolsList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getAlpnProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getCombinedValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    move-result-object v0

    return-object v0
.end method

.method public getCombinedValidationContextOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$f;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    move-result-object v0

    return-object v0
.end method

.method public getCustomHandshaker()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->customHandshaker_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCustomHandshakerOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/i1;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getCustomHandshaker()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsParams_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsParams()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 4
    :goto_1
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v4, 0x2

    .line 5
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    .line 6
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7
    :cond_2
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 8
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    .line 9
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 10
    :goto_2
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 11
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v3}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v0, v4

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getAlpnProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 13
    :goto_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    const/4 v1, 0x6

    .line 14
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    .line 15
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 16
    :cond_5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    .line 17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    .line 18
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    .line 20
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    .line 21
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    .line 25
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    .line 26
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_a
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_b

    .line 30
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    .line 31
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_b
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->customHandshaker_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v1, :cond_c

    const/16 v1, 0xd

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getCustomHandshaker()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_c
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    if-eqz v1, :cond_d

    const/16 v1, 0xe

    .line 35
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTlsCertificateCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTlsCertificateCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTlsCertificateCertificateProviderInstanceOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$d;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v0

    return-object v0
.end method

.method public getTlsCertificateCertificateProviderOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$e;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v0

    return-object v0
.end method

.method public getTlsCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTlsCertificateProviderInstanceOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    move-result-object v0

    return-object v0
.end method

.method public getTlsCertificateSdsSecretConfigs(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    return-object p1
.end method

.method public getTlsCertificateSdsSecretConfigsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTlsCertificateSdsSecretConfigsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public getTlsCertificateSdsSecretConfigsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/g;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/g;

    return-object p1
.end method

.method public getTlsCertificateSdsSecretConfigsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public getTlsCertificates(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsCertificate;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsCertificate;

    return-object p1
.end method

.method public getTlsCertificatesCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTlsCertificatesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsCertificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    return-object v0
.end method

.method public getTlsCertificatesOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/j;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/j;

    return-object p1
.end method

.method public getTlsCertificatesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    return-object v0
.end method

.method public getTlsParams()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsParams_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTlsParamsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/k;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsParams()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v0

    return-object v0
.end method

.method public getValidationContextCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v0

    return-object v0
.end method

.method public getValidationContextCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v0

    return-object v0
.end method

.method public getValidationContextCertificateProviderInstanceOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$d;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v0

    return-object v0
.end method

.method public getValidationContextCertificateProviderOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$e;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v0

    return-object v0
.end method

.method public getValidationContextOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/b;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v0

    return-object v0
.end method

.method public getValidationContextSdsSecretConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    move-result-object v0

    return-object v0
.end method

.method public getValidationContextSdsSecretConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/g;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    move-result-object v0

    return-object v0
.end method

.method public getValidationContextTypeCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$ValidationContextTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasCombinedValidationContext()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCustomHandshaker()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->customHandshaker_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTlsCertificateCertificateProvider()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTlsCertificateCertificateProviderInstance()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTlsCertificateProviderInstance()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTlsParams()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsParams_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValidationContext()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValidationContextCertificateProvider()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValidationContextCertificateProviderInstance()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValidationContextSdsSecretConfig()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsParams()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsParams()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificatesCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificatesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateSdsSecretConfigsCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateSdsSecretConfigsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsCertificateProviderInstance()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsCertificateCertificateProvider()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasTlsCertificateCertificateProviderInstance()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getAlpnProtocolsCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getAlpnProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->hasCustomHandshaker()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getCustomHandshaker()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    const/16 v2, 0xa

    if-eq v1, v2, :cond_c

    const/16 v2, 0xc

    if-eq v1, v2, :cond_b

    const/4 v2, 0x7

    if-eq v1, v2, :cond_a

    const/16 v2, 0x8

    if-eq v1, v2, :cond_9

    goto :goto_1

    :cond_9
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getCombinedValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_a
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContextSdsSecretConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_b
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContextCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_c
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContextCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_d
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getValidationContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 25
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/l;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsParams_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsParams()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/TlsParameters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificates_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateValidationContext;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 8
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->alpnProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_3
    :goto_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x6

    .line 10
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateSdsSecretConfigs_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/SdsSecretConfig;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CombinedCertificateValidationContext;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProvider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateCertificateProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 18
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProvider;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_9
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextTypeCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    .line 22
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->validationContextType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext$CertificateProviderInstance;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_a
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->customHandshaker_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v0, :cond_b

    const/16 v0, 0xd

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getCustomHandshaker()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 25
    :cond_b
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->tlsCertificateProviderInstance_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    if-eqz v0, :cond_c

    const/16 v0, 0xe

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CommonTlsContext;->getTlsCertificateProviderInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/transport_sockets/tls/v3/CertificateProviderPluginInstance;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 27
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
