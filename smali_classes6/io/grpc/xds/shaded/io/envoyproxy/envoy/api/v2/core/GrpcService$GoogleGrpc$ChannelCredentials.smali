.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelCredentials"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

.field public static final GOOGLE_DEFAULT_FIELD_NUMBER:I = 0x2

.field public static final LOCAL_CREDENTIALS_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;",
            ">;"
        }
    .end annotation
.end field

.field public static final SSL_CREDENTIALS_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private credentialSpecifierCase_:I

.field private credentialSpecifier_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->memoizedIsInitialized:B

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_7

    const/16 v4, 0x12

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 15
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials$b;

    move-result-object v5

    .line 16
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 17
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials$b;

    .line 18
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    .line 19
    :cond_3
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    goto :goto_0

    .line 20
    :cond_4
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 21
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/Empty;

    invoke-virtual {v2}, Lcom/google/protobuf/Empty;->toBuilder()Lcom/google/protobuf/Empty$b;

    move-result-object v5

    .line 22
    :cond_5
    invoke-static {}, Lcom/google/protobuf/Empty;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 23
    check-cast v2, Lcom/google/protobuf/Empty;

    invoke-virtual {v5, v2}, Lcom/google/protobuf/Empty$b;->e0(Lcom/google/protobuf/Empty;)Lcom/google/protobuf/Empty$b;

    .line 24
    invoke-virtual {v5}, Lcom/google/protobuf/Empty$b;->Y()Lcom/google/protobuf/Empty;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    .line 25
    :cond_6
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    goto :goto_0

    .line 26
    :cond_7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    if-ne v2, v3, :cond_8

    .line 27
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials$b;

    move-result-object v5

    .line 28
    :cond_8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_9

    .line 29
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials$b;

    .line 30
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    .line 31
    :cond_9
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
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
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 38
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$2800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    return p1
.end method

.method static synthetic access$3200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$3300()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->getCredentialSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->getCredentialSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    if-eq v1, v0, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->getLocalCredentials()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->getLocalCredentials()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 8
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->getGoogleDefault()Lcom/google/protobuf/Empty;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->getGoogleDefault()Lcom/google/protobuf/Empty;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Empty;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 10
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->getSslCredentials()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->getSslCredentials()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 12
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getCredentialSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$CredentialSpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    return-object v0
.end method

.method public getGoogleDefault()Lcom/google/protobuf/Empty;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Empty;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Empty;->getDefaultInstance()Lcom/google/protobuf/Empty;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleDefaultOrBuilder()Lcom/google/protobuf/y;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Empty;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Empty;->getDefaultInstance()Lcom/google/protobuf/Empty;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCredentials()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getLocalCredentialsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->PARSER:Lcom/google/protobuf/e2;

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
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;

    .line 4
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v1, Lcom/google/protobuf/Empty;

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;

    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSslCredentials()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getSslCredentialsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$f;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasGoogleDefault()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLocalCredentials()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSslCredentials()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->getLocalCredentials()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->getGoogleDefault()Lcom/google/protobuf/Empty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Empty;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->getSslCredentials()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials$b;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$SslCredentials;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Empty;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$ChannelCredentials;->credentialSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/GrpcService$GoogleGrpc$GoogleLocalCredentials;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
