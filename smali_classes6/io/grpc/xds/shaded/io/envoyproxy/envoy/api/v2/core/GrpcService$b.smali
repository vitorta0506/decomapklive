.class synthetic Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$TargetSpecifierCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$TargetSpecifierCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->d:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$TargetSpecifierCase;->ENVOY_GRPC:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$TargetSpecifierCase;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->d:[I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$TargetSpecifierCase;->GOOGLE_GRPC:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$TargetSpecifierCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->d:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$TargetSpecifierCase;->TARGETSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$TargetSpecifierCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 2
    :catch_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->c:[I

    :try_start_3
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->ACCESS_TOKEN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->c:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->GOOGLE_COMPUTE_ENGINE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->c:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->GOOGLE_REFRESH_TOKEN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v3, 0x4

    :try_start_6
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->c:[I

    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->SERVICE_ACCOUNT_JWT_ACCESS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->c:[I

    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->GOOGLE_IAM:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->c:[I

    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->FROM_PLUGIN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->c:[I

    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->STS_SERVICE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->c:[I

    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;->CREDENTIALSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$CredentialSpecifierCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 3
    :catch_a
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin$ConfigTypeCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin$ConfigTypeCase;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->b:[I

    :try_start_b
    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin$ConfigTypeCase;->CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin$ConfigTypeCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->b:[I

    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin$ConfigTypeCase;->TYPED_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin$ConfigTypeCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->b:[I

    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin$ConfigTypeCase;->CONFIGTYPE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$CallCredentials$MetadataCredentialsFromPlugin$ConfigTypeCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 4
    :catch_d
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->a:[I

    :try_start_e
    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;->SSL_CREDENTIALS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->a:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;->GOOGLE_DEFAULT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;->LOCAL_CREDENTIALS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;->CREDENTIALSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method
