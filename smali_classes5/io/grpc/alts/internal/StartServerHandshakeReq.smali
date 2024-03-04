.class public final Lio/grpc/alts/internal/StartServerHandshakeReq;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/alts/internal/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/alts/internal/StartServerHandshakeReq$b;,
        Lio/grpc/alts/internal/StartServerHandshakeReq$c;
    }
.end annotation


# static fields
.field public static final APPLICATION_PROTOCOLS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/grpc/alts/internal/StartServerHandshakeReq;

.field public static final HANDSHAKE_PARAMETERS_FIELD_NUMBER:I = 0x2

.field public static final IN_BYTES_FIELD_NUMBER:I = 0x3

.field public static final LOCAL_ENDPOINT_FIELD_NUMBER:I = 0x4

.field public static final MAX_FRAME_SIZE_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/alts/internal/StartServerHandshakeReq;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOTE_ENDPOINT_FIELD_NUMBER:I = 0x5

.field public static final RPC_VERSIONS_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private applicationProtocols_:Lcom/google/protobuf/z0;

.field private handshakeParameters_:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Integer;",
            "Lio/grpc/alts/internal/ServerHandshakeParameters;",
            ">;"
        }
    .end annotation
.end field

.field private inBytes_:Lcom/google/protobuf/ByteString;

.field private localEndpoint_:Lio/grpc/alts/internal/Endpoint;

.field private maxFrameSize_:I

.field private memoizedIsInitialized:B

.field private remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

.field private rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/alts/internal/StartServerHandshakeReq;

    invoke-direct {v0}, Lio/grpc/alts/internal/StartServerHandshakeReq;-><init>()V

    sput-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/StartServerHandshakeReq;

    .line 2
    new-instance v0, Lio/grpc/alts/internal/StartServerHandshakeReq$a;

    invoke-direct {v0}, Lio/grpc/alts/internal/StartServerHandshakeReq$a;-><init>()V

    sput-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->memoizedIsInitialized:B

    .line 7
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    .line 8
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->inBytes_:Lcom/google/protobuf/ByteString;

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
    iput-byte p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/alts/internal/StartServerHandshakeReq$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_f

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v5, 0xa

    if-eq v4, v5, :cond_b

    const/16 v5, 0x12

    if-eq v4, v5, :cond_9

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_8

    const/16 v5, 0x22

    const/4 v6, 0x0

    if-eq v4, v5, :cond_6

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_4

    const/16 v5, 0x32

    if-eq v4, v5, :cond_2

    const/16 v5, 0x38

    if-eq v4, v5, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v4

    iput v4, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->maxFrameSize_:I

    goto :goto_0

    .line 15
    :cond_2
    iget-object v4, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v4}, Lio/grpc/alts/internal/RpcProtocolVersions;->toBuilder()Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object v6

    .line 17
    :cond_3
    invoke-static {}, Lio/grpc/alts/internal/RpcProtocolVersions;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/alts/internal/RpcProtocolVersions;

    iput-object v4, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v6, :cond_0

    .line 18
    invoke-virtual {v6, v4}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->g0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    .line 19
    invoke-virtual {v6}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->Y()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    goto :goto_0

    .line 20
    :cond_4
    iget-object v4, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v4, :cond_5

    .line 21
    invoke-virtual {v4}, Lio/grpc/alts/internal/Endpoint;->toBuilder()Lio/grpc/alts/internal/Endpoint$b;

    move-result-object v6

    .line 22
    :cond_5
    invoke-static {}, Lio/grpc/alts/internal/Endpoint;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/alts/internal/Endpoint;

    iput-object v4, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v6, :cond_0

    .line 23
    invoke-virtual {v6, v4}, Lio/grpc/alts/internal/Endpoint$b;->g0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint$b;

    .line 24
    invoke-virtual {v6}, Lio/grpc/alts/internal/Endpoint$b;->Y()Lio/grpc/alts/internal/Endpoint;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

    goto :goto_0

    .line 25
    :cond_6
    iget-object v4, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v4, :cond_7

    .line 26
    invoke-virtual {v4}, Lio/grpc/alts/internal/Endpoint;->toBuilder()Lio/grpc/alts/internal/Endpoint$b;

    move-result-object v6

    .line 27
    :cond_7
    invoke-static {}, Lio/grpc/alts/internal/Endpoint;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/alts/internal/Endpoint;

    iput-object v4, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v6, :cond_0

    .line 28
    invoke-virtual {v6, v4}, Lio/grpc/alts/internal/Endpoint$b;->g0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint$b;

    .line 29
    invoke-virtual {v6}, Lio/grpc/alts/internal/Endpoint$b;->Y()Lio/grpc/alts/internal/Endpoint;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    goto/16 :goto_0

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->s()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->inBytes_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    :cond_9
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_a

    .line 31
    sget-object v4, Lio/grpc/alts/internal/StartServerHandshakeReq$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v4}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->handshakeParameters_:Lcom/google/protobuf/g1;

    or-int/lit8 v2, v2, 0x2

    .line 32
    :cond_a
    sget-object v4, Lio/grpc/alts/internal/StartServerHandshakeReq$c;->a:Lcom/google/protobuf/e1;

    .line 33
    invoke-virtual {v4}, Lcom/google/protobuf/e1;->getParserForType()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 34
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/e1;

    .line 35
    iget-object v5, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->handshakeParameters_:Lcom/google/protobuf/g1;

    invoke-virtual {v5}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v5

    .line 36
    invoke-virtual {v4}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v4}, Lcom/google/protobuf/e1;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/alts/internal/ServerHandshakeParameters;

    .line 37
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 38
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_c

    .line 39
    new-instance v5, Lcom/google/protobuf/y0;

    invoke-direct {v5}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v5, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x1

    .line 40
    :cond_c
    iget-object v5, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 41
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 42
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 43
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_e

    .line 44
    iget-object p2, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    .line 45
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 46
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_f
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_10

    .line 47
    iget-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    .line 48
    :cond_10
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 49
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/alts/internal/StartServerHandshakeReq$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/alts/internal/StartServerHandshakeReq;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lio/grpc/alts/internal/StartServerHandshakeReq;I)I
    .locals 0

    iput p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->maxFrameSize_:I

    return p1
.end method

.method static synthetic access$1100(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lcom/google/protobuf/g1;
    .locals 0

    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->internalGetHandshakeParameters()Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/alts/internal/StartServerHandshakeReq;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lcom/google/protobuf/g1;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->handshakeParameters_:Lcom/google/protobuf/g1;

    return-object p0
.end method

.method static synthetic access$502(Lio/grpc/alts/internal/StartServerHandshakeReq;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->handshakeParameters_:Lcom/google/protobuf/g1;

    return-object p1
.end method

.method static synthetic access$602(Lio/grpc/alts/internal/StartServerHandshakeReq;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->inBytes_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$702(Lio/grpc/alts/internal/StartServerHandshakeReq;Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    return-object p1
.end method

.method static synthetic access$802(Lio/grpc/alts/internal/StartServerHandshakeReq;Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

    return-object p1
.end method

.method static synthetic access$902(Lio/grpc/alts/internal/StartServerHandshakeReq;Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/StartServerHandshakeReq;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/r;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method private internalGetHandshakeParameters()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/Integer;",
            "Lio/grpc/alts/internal/ServerHandshakeParameters;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->handshakeParameters_:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/StartServerHandshakeReq;

    invoke-virtual {v0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->toBuilder()Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/StartServerHandshakeReq;

    invoke-virtual {v0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->toBuilder()Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->k0(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartServerHandshakeReq;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartServerHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartServerHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartServerHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartServerHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartServerHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartServerHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartServerHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartServerHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartServerHandshakeReq;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartServerHandshakeReq;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartServerHandshakeReq;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/alts/internal/StartServerHandshakeReq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public containsHandshakeParameters(I)Z
    .locals 1

    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->internalGetHandshakeParameters()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/alts/internal/StartServerHandshakeReq;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/alts/internal/StartServerHandshakeReq;

    .line 4
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getApplicationProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getApplicationProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->internalGetHandshakeParameters()Lcom/google/protobuf/g1;

    move-result-object v1

    .line 7
    invoke-direct {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->internalGetHandshakeParameters()Lcom/google/protobuf/g1;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v3}, Lcom/google/protobuf/g1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getInBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getInBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 11
    :cond_4
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->hasLocalEndpoint()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->hasLocalEndpoint()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->hasLocalEndpoint()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/alts/internal/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 15
    :cond_6
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->hasRemoteEndpoint()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->hasRemoteEndpoint()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->hasRemoteEndpoint()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 17
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/alts/internal/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 19
    :cond_8
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->hasRpcVersions()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->hasRpcVersions()Z

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->hasRpcVersions()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 21
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/alts/internal/RpcProtocolVersions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 23
    :cond_a
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getMaxFrameSize()I

    move-result v1

    .line 24
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getMaxFrameSize()I

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    .line 25
    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public getApplicationProtocols(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getApplicationProtocolsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationProtocolsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getApplicationProtocolsList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getApplicationProtocolsList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getApplicationProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getDefaultInstanceForType()Lio/grpc/alts/internal/StartServerHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getDefaultInstanceForType()Lio/grpc/alts/internal/StartServerHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/alts/internal/StartServerHandshakeReq;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/StartServerHandshakeReq;

    return-object v0
.end method

.method public getHandshakeParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/grpc/alts/internal/ServerHandshakeParameters;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getHandshakeParametersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeParametersCount()I
    .locals 1

    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->internalGetHandshakeParameters()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getHandshakeParametersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/grpc/alts/internal/ServerHandshakeParameters;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->internalGetHandshakeParameters()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeParametersOrDefault(ILio/grpc/alts/internal/ServerHandshakeParameters;)Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->internalGetHandshakeParameters()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lio/grpc/alts/internal/ServerHandshakeParameters;

    :cond_0
    return-object p2
.end method

.method public getHandshakeParametersOrThrow(I)Lio/grpc/alts/internal/ServerHandshakeParameters;
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->internalGetHandshakeParameters()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/ServerHandshakeParameters;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getInBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->inBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/alts/internal/Endpoint;->getDefaultInstance()Lio/grpc/alts/internal/Endpoint;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLocalEndpointOrBuilder()Lio/grpc/alts/internal/q;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v0

    return-object v0
.end method

.method public getMaxFrameSize()I
    .locals 1

    iget v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->maxFrameSize_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/alts/internal/StartServerHandshakeReq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/alts/internal/Endpoint;->getDefaultInstance()Lio/grpc/alts/internal/Endpoint;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRemoteEndpointOrBuilder()Lio/grpc/alts/internal/q;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v0

    return-object v0
.end method

.method public getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/alts/internal/RpcProtocolVersions;->getDefaultInstance()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRpcVersionsOrBuilder()Lio/grpc/alts/internal/z;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3
    iget-object v3, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 4
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getApplicationProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 5
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->internalGetHandshakeParameters()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    sget-object v3, Lio/grpc/alts/internal/StartServerHandshakeReq$c;->a:Lcom/google/protobuf/e1;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->j()Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/alts/internal/ServerHandshakeParameters;

    invoke-virtual {v3, v2}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v2

    const/4 v3, 0x2

    .line 10
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 11
    :cond_2
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->inBytes_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 12
    iget-object v2, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->inBytes_:Lcom/google/protobuf/ByteString;

    .line 13
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->h(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_3
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 15
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_4
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 17
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_5
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 19
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_6
    iget v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->maxFrameSize_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 21
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasLocalEndpoint()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRemoteEndpoint()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRpcVersions()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

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
    invoke-static {}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getApplicationProtocolsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getApplicationProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->internalGetHandshakeParameters()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->internalGetHandshakeParameters()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getInBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->hasLocalEndpoint()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/alts/internal/Endpoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->hasRemoteEndpoint()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/alts/internal/Endpoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->hasRpcVersions()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/alts/internal/RpcProtocolVersions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getMaxFrameSize()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 15
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/alts/internal/r;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/alts/internal/StartServerHandshakeReq;

    const-class v2, Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetMapField(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->internalGetHandshakeParameters()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->newBuilderForType()Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->newBuilderForType()Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/alts/internal/StartServerHandshakeReq;->newBuilder()Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/alts/internal/StartServerHandshakeReq$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/alts/internal/StartServerHandshakeReq;

    invoke-direct {p1}, Lio/grpc/alts/internal/StartServerHandshakeReq;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->toBuilder()Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->toBuilder()Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/alts/internal/StartServerHandshakeReq$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/alts/internal/StartServerHandshakeReq;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/StartServerHandshakeReq;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    invoke-direct {v0, v1}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;-><init>(Lio/grpc/alts/internal/StartServerHandshakeReq$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    invoke-direct {v0, v1}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;-><init>(Lio/grpc/alts/internal/StartServerHandshakeReq$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/alts/internal/StartServerHandshakeReq$b;->k0(Lio/grpc/alts/internal/StartServerHandshakeReq;)Lio/grpc/alts/internal/StartServerHandshakeReq$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v1, v0}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->internalGetHandshakeParameters()Lcom/google/protobuf/g1;

    move-result-object v0

    sget-object v1, Lio/grpc/alts/internal/StartServerHandshakeReq$c;->a:Lcom/google/protobuf/e1;

    const/4 v2, 0x2

    .line 4
    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->serializeIntegerMapTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/g1;Lcom/google/protobuf/e1;I)V

    .line 5
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->inBytes_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 6
    iget-object v1, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->inBytes_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->r0(ILcom/google/protobuf/ByteString;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartServerHandshakeReq;->getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_4
    iget v0, p0, Lio/grpc/alts/internal/StartServerHandshakeReq;->maxFrameSize_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
