.class public final Lio/grpc/alts/internal/StartClientHandshakeReq;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/alts/internal/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    }
.end annotation


# static fields
.field public static final APPLICATION_PROTOCOLS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/grpc/alts/internal/StartClientHandshakeReq;

.field public static final HANDSHAKE_SECURITY_PROTOCOL_FIELD_NUMBER:I = 0x1

.field public static final LOCAL_ENDPOINT_FIELD_NUMBER:I = 0x6

.field public static final LOCAL_IDENTITY_FIELD_NUMBER:I = 0x5

.field public static final MAX_FRAME_SIZE_FIELD_NUMBER:I = 0xa

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/alts/internal/StartClientHandshakeReq;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECORD_PROTOCOLS_FIELD_NUMBER:I = 0x3

.field public static final REMOTE_ENDPOINT_FIELD_NUMBER:I = 0x7

.field public static final RPC_VERSIONS_FIELD_NUMBER:I = 0x9

.field public static final TARGET_IDENTITIES_FIELD_NUMBER:I = 0x4

.field public static final TARGET_NAME_FIELD_NUMBER:I = 0x8

.field private static final serialVersionUID:J


# instance fields
.field private applicationProtocols_:Lcom/google/protobuf/z0;

.field private handshakeSecurityProtocol_:I

.field private localEndpoint_:Lio/grpc/alts/internal/Endpoint;

.field private localIdentity_:Lio/grpc/alts/internal/Identity;

.field private maxFrameSize_:I

.field private memoizedIsInitialized:B

.field private recordProtocols_:Lcom/google/protobuf/z0;

.field private remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

.field private rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

.field private targetIdentities_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/alts/internal/Identity;",
            ">;"
        }
    .end annotation
.end field

.field private volatile targetName_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/alts/internal/StartClientHandshakeReq;

    invoke-direct {v0}, Lio/grpc/alts/internal/StartClientHandshakeReq;-><init>()V

    sput-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/StartClientHandshakeReq;

    .line 2
    new-instance v0, Lio/grpc/alts/internal/StartClientHandshakeReq$a;

    invoke-direct {v0}, Lio/grpc/alts/internal/StartClientHandshakeReq$a;-><init>()V

    sput-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->handshakeSecurityProtocol_:I

    .line 8
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    .line 9
    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetName_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/alts/internal/StartClientHandshakeReq$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;-><init>()V

    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    .line 15
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 16
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_2

    .line 17
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v3

    iput v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->maxFrameSize_:I

    goto :goto_0

    .line 18
    :sswitch_1
    iget-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v3, :cond_1

    .line 19
    invoke-virtual {v3}, Lio/grpc/alts/internal/RpcProtocolVersions;->toBuilder()Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object v4

    .line 20
    :cond_1
    invoke-static {}, Lio/grpc/alts/internal/RpcProtocolVersions;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/alts/internal/RpcProtocolVersions;

    iput-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v4, :cond_0

    .line 21
    invoke-virtual {v4, v3}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->g0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    .line 22
    invoke-virtual {v4}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->Y()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    goto :goto_0

    .line 23
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 24
    iput-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetName_:Ljava/lang/Object;

    goto :goto_0

    .line 25
    :sswitch_3
    iget-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v3, :cond_2

    .line 26
    invoke-virtual {v3}, Lio/grpc/alts/internal/Endpoint;->toBuilder()Lio/grpc/alts/internal/Endpoint$b;

    move-result-object v4

    .line 27
    :cond_2
    invoke-static {}, Lio/grpc/alts/internal/Endpoint;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/alts/internal/Endpoint;

    iput-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v4, :cond_0

    .line 28
    invoke-virtual {v4, v3}, Lio/grpc/alts/internal/Endpoint$b;->g0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint$b;

    .line 29
    invoke-virtual {v4}, Lio/grpc/alts/internal/Endpoint$b;->Y()Lio/grpc/alts/internal/Endpoint;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

    goto :goto_0

    .line 30
    :sswitch_4
    iget-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v3, :cond_3

    .line 31
    invoke-virtual {v3}, Lio/grpc/alts/internal/Endpoint;->toBuilder()Lio/grpc/alts/internal/Endpoint$b;

    move-result-object v4

    .line 32
    :cond_3
    invoke-static {}, Lio/grpc/alts/internal/Endpoint;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/alts/internal/Endpoint;

    iput-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v4, :cond_0

    .line 33
    invoke-virtual {v4, v3}, Lio/grpc/alts/internal/Endpoint$b;->g0(Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint$b;

    .line 34
    invoke-virtual {v4}, Lio/grpc/alts/internal/Endpoint$b;->Y()Lio/grpc/alts/internal/Endpoint;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    goto :goto_0

    .line 35
    :sswitch_5
    iget-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localIdentity_:Lio/grpc/alts/internal/Identity;

    if-eqz v3, :cond_4

    .line 36
    invoke-virtual {v3}, Lio/grpc/alts/internal/Identity;->toBuilder()Lio/grpc/alts/internal/Identity$d;

    move-result-object v4

    .line 37
    :cond_4
    invoke-static {}, Lio/grpc/alts/internal/Identity;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/alts/internal/Identity;

    iput-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localIdentity_:Lio/grpc/alts/internal/Identity;

    if-eqz v4, :cond_0

    .line 38
    invoke-virtual {v4, v3}, Lio/grpc/alts/internal/Identity$d;->i0(Lio/grpc/alts/internal/Identity;)Lio/grpc/alts/internal/Identity$d;

    .line 39
    invoke-virtual {v4}, Lio/grpc/alts/internal/Identity$d;->Y()Lio/grpc/alts/internal/Identity;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localIdentity_:Lio/grpc/alts/internal/Identity;

    goto/16 :goto_0

    :sswitch_6
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_5

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 41
    :cond_5
    iget-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    .line 42
    invoke-static {}, Lio/grpc/alts/internal/Identity;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/alts/internal/Identity;

    .line 43
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 44
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_6

    .line 45
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x2

    .line 46
    :cond_6
    iget-object v4, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 47
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_7

    .line 48
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x1

    .line 49
    :cond_7
    iget-object v4, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 50
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v3

    .line 51
    iput v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->handshakeSecurityProtocol_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_a
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

    .line 52
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 53
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 54
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_8

    .line 55
    iget-object p2, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    :cond_8
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_9

    .line 56
    iget-object p2, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    :cond_9
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_a

    .line 57
    iget-object p2, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    .line 58
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 59
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_b
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_c

    .line 60
    iget-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    :cond_c
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_d

    .line 61
    iget-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    :cond_d
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_e

    .line 62
    iget-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    .line 63
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 64
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x2a -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/alts/internal/StartClientHandshakeReq$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/alts/internal/StartClientHandshakeReq;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lio/grpc/alts/internal/StartClientHandshakeReq;Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/alts/internal/StartClientHandshakeReq;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lio/grpc/alts/internal/StartClientHandshakeReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lio/grpc/alts/internal/StartClientHandshakeReq;Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    return-object p1
.end method

.method static synthetic access$1302(Lio/grpc/alts/internal/StartClientHandshakeReq;I)I
    .locals 0

    iput p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->maxFrameSize_:I

    return p1
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1500(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1600()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$400(Lio/grpc/alts/internal/StartClientHandshakeReq;)I
    .locals 0

    iget p0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->handshakeSecurityProtocol_:I

    return p0
.end method

.method static synthetic access$402(Lio/grpc/alts/internal/StartClientHandshakeReq;I)I
    .locals 0

    iput p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->handshakeSecurityProtocol_:I

    return p1
.end method

.method static synthetic access$500(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$502(Lio/grpc/alts/internal/StartClientHandshakeReq;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$600(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$602(Lio/grpc/alts/internal/StartClientHandshakeReq;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$700(Lio/grpc/alts/internal/StartClientHandshakeReq;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lio/grpc/alts/internal/StartClientHandshakeReq;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$802(Lio/grpc/alts/internal/StartClientHandshakeReq;Lio/grpc/alts/internal/Identity;)Lio/grpc/alts/internal/Identity;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localIdentity_:Lio/grpc/alts/internal/Identity;

    return-object p1
.end method

.method static synthetic access$902(Lio/grpc/alts/internal/StartClientHandshakeReq;Lio/grpc/alts/internal/Endpoint;)Lio/grpc/alts/internal/Endpoint;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/StartClientHandshakeReq;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/r;->g:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/StartClientHandshakeReq;

    invoke-virtual {v0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->toBuilder()Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/StartClientHandshakeReq;

    invoke-virtual {v0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->toBuilder()Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->n0(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartClientHandshakeReq;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartClientHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartClientHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartClientHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartClientHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartClientHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartClientHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartClientHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartClientHandshakeReq;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartClientHandshakeReq;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartClientHandshakeReq;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/StartClientHandshakeReq;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/alts/internal/StartClientHandshakeReq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/alts/internal/StartClientHandshakeReq;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/alts/internal/StartClientHandshakeReq;

    .line 4
    iget v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->handshakeSecurityProtocol_:I

    iget v2, p1, Lio/grpc/alts/internal/StartClientHandshakeReq;->handshakeSecurityProtocol_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getApplicationProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getApplicationProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 7
    :cond_3
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRecordProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRecordProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getTargetIdentitiesList()Ljava/util/List;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getTargetIdentitiesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasLocalIdentity()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasLocalIdentity()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 12
    :cond_6
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasLocalIdentity()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getLocalIdentity()Lio/grpc/alts/internal/Identity;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getLocalIdentity()Lio/grpc/alts/internal/Identity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/alts/internal/Identity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 15
    :cond_7
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasLocalEndpoint()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasLocalEndpoint()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 16
    :cond_8
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasLocalEndpoint()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 17
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/alts/internal/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 19
    :cond_9
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasRemoteEndpoint()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasRemoteEndpoint()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 20
    :cond_a
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasRemoteEndpoint()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 21
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/alts/internal/Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 23
    :cond_b
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getTargetName()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getTargetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 25
    :cond_c
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasRpcVersions()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasRpcVersions()Z

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 26
    :cond_d
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasRpcVersions()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 27
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/alts/internal/RpcProtocolVersions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    .line 29
    :cond_e
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getMaxFrameSize()I

    move-result v1

    .line 30
    invoke-virtual {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getMaxFrameSize()I

    move-result v2

    if-eq v1, v2, :cond_f

    return v3

    .line 31
    :cond_f
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v3

    :cond_10
    return v0
.end method

.method public getApplicationProtocols(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getApplicationProtocolsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getApplicationProtocolsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getApplicationProtocolsList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getApplicationProtocolsList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getApplicationProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getDefaultInstanceForType()Lio/grpc/alts/internal/StartClientHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getDefaultInstanceForType()Lio/grpc/alts/internal/StartClientHandshakeReq;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/alts/internal/StartClientHandshakeReq;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/StartClientHandshakeReq;

    return-object v0
.end method

.method public getHandshakeSecurityProtocol()Lio/grpc/alts/internal/HandshakeProtocol;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->handshakeSecurityProtocol_:I

    invoke-static {v0}, Lio/grpc/alts/internal/HandshakeProtocol;->valueOf(I)Lio/grpc/alts/internal/HandshakeProtocol;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/alts/internal/HandshakeProtocol;->UNRECOGNIZED:Lio/grpc/alts/internal/HandshakeProtocol;

    :cond_0
    return-object v0
.end method

.method public getHandshakeSecurityProtocolValue()I
    .locals 1

    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->handshakeSecurityProtocol_:I

    return v0
.end method

.method public getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/alts/internal/Endpoint;->getDefaultInstance()Lio/grpc/alts/internal/Endpoint;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLocalEndpointOrBuilder()Lio/grpc/alts/internal/q;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIdentity()Lio/grpc/alts/internal/Identity;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localIdentity_:Lio/grpc/alts/internal/Identity;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/alts/internal/Identity;->getDefaultInstance()Lio/grpc/alts/internal/Identity;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLocalIdentityOrBuilder()Lio/grpc/alts/internal/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getLocalIdentity()Lio/grpc/alts/internal/Identity;

    move-result-object v0

    return-object v0
.end method

.method public getMaxFrameSize()I
    .locals 1

    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->maxFrameSize_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/alts/internal/StartClientHandshakeReq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRecordProtocols(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRecordProtocolsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRecordProtocolsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecordProtocolsList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getRecordProtocolsList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRecordProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/alts/internal/Endpoint;->getDefaultInstance()Lio/grpc/alts/internal/Endpoint;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRemoteEndpointOrBuilder()Lio/grpc/alts/internal/q;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v0

    return-object v0
.end method

.method public getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/alts/internal/RpcProtocolVersions;->getDefaultInstance()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRpcVersionsOrBuilder()Lio/grpc/alts/internal/z;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

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
    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->handshakeSecurityProtocol_:I

    sget-object v1, Lio/grpc/alts/internal/HandshakeProtocol;->HANDSHAKE_PROTOCOL_UNSPECIFIED:Lio/grpc/alts/internal/HandshakeProtocol;

    invoke-virtual {v1}, Lio/grpc/alts/internal/HandshakeProtocol;->getNumber()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 3
    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->handshakeSecurityProtocol_:I

    .line 4
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_1
    iget-object v5, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 6
    iget-object v5, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v4

    .line 7
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getApplicationProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 8
    :goto_2
    iget-object v5, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 9
    iget-object v5, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v4

    .line 10
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRecordProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 11
    :goto_3
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    const/4 v1, 0x4

    .line 12
    iget-object v2, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    .line 13
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 14
    :cond_4
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localIdentity_:Lio/grpc/alts/internal/Identity;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 15
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getLocalIdentity()Lio/grpc/alts/internal/Identity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_5
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 17
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_6
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 19
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_7
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetName_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    .line 21
    iget-object v2, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_8
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 23
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_9
    iget v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->maxFrameSize_:I

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 25
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTargetIdentities(I)Lio/grpc/alts/internal/Identity;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/Identity;

    return-object p1
.end method

.method public getTargetIdentitiesCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTargetIdentitiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/alts/internal/Identity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    return-object v0
.end method

.method public getTargetIdentitiesOrBuilder(I)Lio/grpc/alts/internal/v;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/v;

    return-object p1
.end method

.method public getTargetIdentitiesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/alts/internal/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    return-object v0
.end method

.method public getTargetName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTargetNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasLocalEndpoint()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLocalIdentity()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localIdentity_:Lio/grpc/alts/internal/Identity;

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

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

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

    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

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
    invoke-static {}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    iget v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->handshakeSecurityProtocol_:I

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getApplicationProtocolsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getApplicationProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRecordProtocolsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRecordProtocolsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getTargetIdentitiesCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getTargetIdentitiesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasLocalIdentity()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getLocalIdentity()Lio/grpc/alts/internal/Identity;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/alts/internal/Identity;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasLocalEndpoint()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/alts/internal/Endpoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasRemoteEndpoint()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/alts/internal/Endpoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getTargetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->hasRpcVersions()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/alts/internal/RpcProtocolVersions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getMaxFrameSize()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 20
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/alts/internal/r;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/alts/internal/StartClientHandshakeReq;

    const-class v2, Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->newBuilderForType()Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->newBuilderForType()Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/alts/internal/StartClientHandshakeReq;->newBuilder()Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/alts/internal/StartClientHandshakeReq$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/alts/internal/StartClientHandshakeReq;

    invoke-direct {p1}, Lio/grpc/alts/internal/StartClientHandshakeReq;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->toBuilder()Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->toBuilder()Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/alts/internal/StartClientHandshakeReq$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/alts/internal/StartClientHandshakeReq;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/StartClientHandshakeReq;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    invoke-direct {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;-><init>(Lio/grpc/alts/internal/StartClientHandshakeReq$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/alts/internal/StartClientHandshakeReq$b;

    invoke-direct {v0, v1}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;-><init>(Lio/grpc/alts/internal/StartClientHandshakeReq$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/alts/internal/StartClientHandshakeReq$b;->n0(Lio/grpc/alts/internal/StartClientHandshakeReq;)Lio/grpc/alts/internal/StartClientHandshakeReq$b;

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
    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->handshakeSecurityProtocol_:I

    sget-object v1, Lio/grpc/alts/internal/HandshakeProtocol;->HANDSHAKE_PROTOCOL_UNSPECIFIED:Lio/grpc/alts/internal/HandshakeProtocol;

    invoke-virtual {v1}, Lio/grpc/alts/internal/HandshakeProtocol;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->handshakeSecurityProtocol_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->applicationProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_1
    iget-object v2, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 6
    iget-object v3, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->recordProtocols_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_2
    :goto_2
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x4

    .line 8
    iget-object v2, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetIdentities_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localIdentity_:Lio/grpc/alts/internal/Identity;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getLocalIdentity()Lio/grpc/alts/internal/Identity;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->localEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getLocalEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->remoteEndpoint_:Lio/grpc/alts/internal/Endpoint;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRemoteEndpoint()Lio/grpc/alts/internal/Endpoint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetName_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 16
    iget-object v1, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->targetName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->rpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 18
    invoke-virtual {p0}, Lio/grpc/alts/internal/StartClientHandshakeReq;->getRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget v0, p0, Lio/grpc/alts/internal/StartClientHandshakeReq;->maxFrameSize_:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
