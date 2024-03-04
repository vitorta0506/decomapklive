.class public final Lio/grpc/alts/internal/AltsContext;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/alts/internal/AltsContext$b;,
        Lio/grpc/alts/internal/AltsContext$c;
    }
.end annotation


# static fields
.field public static final APPLICATION_PROTOCOL_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/grpc/alts/internal/AltsContext;

.field public static final LOCAL_SERVICE_ACCOUNT_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/alts/internal/AltsContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final PEER_ATTRIBUTES_FIELD_NUMBER:I = 0x7

.field public static final PEER_RPC_VERSIONS_FIELD_NUMBER:I = 0x6

.field public static final PEER_SERVICE_ACCOUNT_FIELD_NUMBER:I = 0x4

.field public static final RECORD_PROTOCOL_FIELD_NUMBER:I = 0x2

.field public static final SECURITY_LEVEL_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private volatile applicationProtocol_:Ljava/lang/Object;

.field private volatile localServiceAccount_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private peerAttributes_:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private peerRpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

.field private volatile peerServiceAccount_:Ljava/lang/Object;

.field private volatile recordProtocol_:Ljava/lang/Object;

.field private securityLevel_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/alts/internal/AltsContext;

    invoke-direct {v0}, Lio/grpc/alts/internal/AltsContext;-><init>()V

    sput-object v0, Lio/grpc/alts/internal/AltsContext;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/AltsContext;

    .line 2
    new-instance v0, Lio/grpc/alts/internal/AltsContext$a;

    invoke-direct {v0}, Lio/grpc/alts/internal/AltsContext$a;-><init>()V

    sput-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/alts/internal/AltsContext;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext;->applicationProtocol_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext;->recordProtocol_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lio/grpc/alts/internal/AltsContext;->securityLevel_:I

    .line 10
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext;->peerServiceAccount_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext;->localServiceAccount_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lio/grpc/alts/internal/AltsContext;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/alts/internal/AltsContext$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/AltsContext;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext;-><init>()V

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

    const/4 v4, 0x1

    if-eqz v3, :cond_a

    const/16 v5, 0xa

    if-eq v3, v5, :cond_9

    const/16 v5, 0x12

    if-eq v3, v5, :cond_8

    const/16 v5, 0x18

    if-eq v3, v5, :cond_7

    const/16 v5, 0x22

    if-eq v3, v5, :cond_6

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_5

    const/16 v5, 0x32

    if-eq v3, v5, :cond_3

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1

    .line 16
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_1
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_2

    .line 17
    sget-object v3, Lio/grpc/alts/internal/AltsContext$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v3}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/alts/internal/AltsContext;->peerAttributes_:Lcom/google/protobuf/g1;

    or-int/lit8 v2, v2, 0x1

    .line 18
    :cond_2
    sget-object v3, Lio/grpc/alts/internal/AltsContext$c;->a:Lcom/google/protobuf/e1;

    .line 19
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->getParserForType()Lcom/google/protobuf/e2;

    move-result-object v3

    .line 20
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/e1;

    .line 21
    iget-object v4, p0, Lio/grpc/alts/internal/AltsContext;->peerAttributes_:Lcom/google/protobuf/g1;

    invoke-virtual {v4}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v4

    .line 22
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 23
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 24
    iget-object v4, p0, Lio/grpc/alts/internal/AltsContext;->peerRpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v4, :cond_4

    .line 25
    invoke-virtual {v4}, Lio/grpc/alts/internal/RpcProtocolVersions;->toBuilder()Lio/grpc/alts/internal/RpcProtocolVersions$b;

    move-result-object v3

    .line 26
    :cond_4
    invoke-static {}, Lio/grpc/alts/internal/RpcProtocolVersions;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/alts/internal/RpcProtocolVersions;

    iput-object v4, p0, Lio/grpc/alts/internal/AltsContext;->peerRpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v3, :cond_0

    .line 27
    invoke-virtual {v3, v4}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->g0(Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions$b;

    .line 28
    invoke-virtual {v3}, Lio/grpc/alts/internal/RpcProtocolVersions$b;->Y()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/alts/internal/AltsContext;->peerRpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    goto :goto_0

    .line 29
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 30
    iput-object v3, p0, Lio/grpc/alts/internal/AltsContext;->localServiceAccount_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 31
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 32
    iput-object v3, p0, Lio/grpc/alts/internal/AltsContext;->peerServiceAccount_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 33
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v3

    .line 34
    iput v3, p0, Lio/grpc/alts/internal/AltsContext;->securityLevel_:I

    goto/16 :goto_0

    .line 35
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 36
    iput-object v3, p0, Lio/grpc/alts/internal/AltsContext;->recordProtocol_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 37
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 38
    iput-object v3, p0, Lio/grpc/alts/internal/AltsContext;->applicationProtocol_:Ljava/lang/Object;
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

    .line 39
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 40
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 41
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 44
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 45
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/alts/internal/AltsContext$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/alts/internal/AltsContext;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lio/grpc/alts/internal/AltsContext;)Lcom/google/protobuf/g1;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/AltsContext;->peerAttributes_:Lcom/google/protobuf/g1;

    return-object p0
.end method

.method static synthetic access$1002(Lio/grpc/alts/internal/AltsContext;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext;->peerAttributes_:Lcom/google/protobuf/g1;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/alts/internal/AltsContext;)Lcom/google/protobuf/g1;
    .locals 0

    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext;->internalGetPeerAttributes()Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lio/grpc/alts/internal/AltsContext;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

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

.method static synthetic access$1500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
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

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/grpc/alts/internal/AltsContext;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/AltsContext;->applicationProtocol_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/alts/internal/AltsContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext;->applicationProtocol_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/alts/internal/AltsContext;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/AltsContext;->recordProtocol_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lio/grpc/alts/internal/AltsContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext;->recordProtocol_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lio/grpc/alts/internal/AltsContext;)I
    .locals 0

    iget p0, p0, Lio/grpc/alts/internal/AltsContext;->securityLevel_:I

    return p0
.end method

.method static synthetic access$602(Lio/grpc/alts/internal/AltsContext;I)I
    .locals 0

    iput p1, p0, Lio/grpc/alts/internal/AltsContext;->securityLevel_:I

    return p1
.end method

.method static synthetic access$700(Lio/grpc/alts/internal/AltsContext;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/AltsContext;->peerServiceAccount_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lio/grpc/alts/internal/AltsContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext;->peerServiceAccount_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lio/grpc/alts/internal/AltsContext;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/AltsContext;->localServiceAccount_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$802(Lio/grpc/alts/internal/AltsContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext;->localServiceAccount_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lio/grpc/alts/internal/AltsContext;Lio/grpc/alts/internal/RpcProtocolVersions;)Lio/grpc/alts/internal/RpcProtocolVersions;
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/AltsContext;->peerRpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/alts/internal/AltsContext;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/AltsContext;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/AltsContext;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/f;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method private internalGetPeerAttributes()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->peerAttributes_:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/alts/internal/AltsContext$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lio/grpc/alts/internal/AltsContext$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/AltsContext;

    invoke-virtual {v0}, Lio/grpc/alts/internal/AltsContext;->toBuilder()Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/alts/internal/AltsContext;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/AltsContext;

    invoke-virtual {v0}, Lio/grpc/alts/internal/AltsContext;->toBuilder()Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/alts/internal/AltsContext$b;->i0(Lio/grpc/alts/internal/AltsContext;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/alts/internal/AltsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/AltsContext;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/AltsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/AltsContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/alts/internal/AltsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/AltsContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/AltsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/AltsContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/alts/internal/AltsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/AltsContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/AltsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/AltsContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/alts/internal/AltsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/AltsContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/AltsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/AltsContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/alts/internal/AltsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/AltsContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/alts/internal/AltsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/AltsContext;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/alts/internal/AltsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/AltsContext;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/alts/internal/AltsContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/alts/internal/AltsContext;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/alts/internal/AltsContext;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public containsPeerAttributes(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext;->internalGetPeerAttributes()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

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
    instance-of v1, p1, Lio/grpc/alts/internal/AltsContext;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/alts/internal/AltsContext;

    .line 4
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/alts/internal/AltsContext;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getRecordProtocol()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/alts/internal/AltsContext;->getRecordProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 8
    :cond_3
    iget v1, p0, Lio/grpc/alts/internal/AltsContext;->securityLevel_:I

    iget v3, p1, Lio/grpc/alts/internal/AltsContext;->securityLevel_:I

    if-eq v1, v3, :cond_4

    return v2

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getPeerServiceAccount()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lio/grpc/alts/internal/AltsContext;->getPeerServiceAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getLocalServiceAccount()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lio/grpc/alts/internal/AltsContext;->getLocalServiceAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->hasPeerRpcVersions()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/alts/internal/AltsContext;->hasPeerRpcVersions()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 14
    :cond_7
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->hasPeerRpcVersions()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 15
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getPeerRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lio/grpc/alts/internal/AltsContext;->getPeerRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/alts/internal/RpcProtocolVersions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 17
    :cond_8
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext;->internalGetPeerAttributes()Lcom/google/protobuf/g1;

    move-result-object v1

    .line 18
    invoke-direct {p1}, Lio/grpc/alts/internal/AltsContext;->internalGetPeerAttributes()Lcom/google/protobuf/g1;

    move-result-object v3

    .line 19
    invoke-virtual {v1, v3}, Lcom/google/protobuf/g1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 20
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public getApplicationProtocol()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->applicationProtocol_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext;->applicationProtocol_:Ljava/lang/Object;

    return-object v0
.end method

.method public getApplicationProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->applicationProtocol_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext;->applicationProtocol_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getDefaultInstanceForType()Lio/grpc/alts/internal/AltsContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getDefaultInstanceForType()Lio/grpc/alts/internal/AltsContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/alts/internal/AltsContext;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/AltsContext;

    return-object v0
.end method

.method public getLocalServiceAccount()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->localServiceAccount_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext;->localServiceAccount_:Ljava/lang/Object;

    return-object v0
.end method

.method public getLocalServiceAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->localServiceAccount_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext;->localServiceAccount_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/alts/internal/AltsContext;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/alts/internal/AltsContext;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPeerAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getPeerAttributesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPeerAttributesCount()I
    .locals 1

    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext;->internalGetPeerAttributes()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getPeerAttributesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext;->internalGetPeerAttributes()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPeerAttributesOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext;->internalGetPeerAttributes()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public getPeerAttributesOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext;->internalGetPeerAttributes()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getPeerRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->peerRpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/alts/internal/RpcProtocolVersions;->getDefaultInstance()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPeerRpcVersionsOrBuilder()Lio/grpc/alts/internal/z;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getPeerRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v0

    return-object v0
.end method

.method public getPeerServiceAccount()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->peerServiceAccount_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext;->peerServiceAccount_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPeerServiceAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->peerServiceAccount_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext;->peerServiceAccount_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRecordProtocol()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->recordProtocol_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext;->recordProtocol_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRecordProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->recordProtocol_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/alts/internal/AltsContext;->recordProtocol_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSecurityLevel()Lio/grpc/alts/internal/SecurityLevel;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/alts/internal/AltsContext;->securityLevel_:I

    invoke-static {v0}, Lio/grpc/alts/internal/SecurityLevel;->valueOf(I)Lio/grpc/alts/internal/SecurityLevel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/alts/internal/SecurityLevel;->UNRECOGNIZED:Lio/grpc/alts/internal/SecurityLevel;

    :cond_0
    return-object v0
.end method

.method public getSecurityLevelValue()I
    .locals 1

    iget v0, p0, Lio/grpc/alts/internal/AltsContext;->securityLevel_:I

    return v0
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

    .line 2
    iget-object v1, p0, Lio/grpc/alts/internal/AltsContext;->applicationProtocol_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lio/grpc/alts/internal/AltsContext;->applicationProtocol_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lio/grpc/alts/internal/AltsContext;->recordProtocol_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lio/grpc/alts/internal/AltsContext;->recordProtocol_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lio/grpc/alts/internal/AltsContext;->securityLevel_:I

    sget-object v2, Lio/grpc/alts/internal/SecurityLevel;->SECURITY_NONE:Lio/grpc/alts/internal/SecurityLevel;

    invoke-virtual {v2}, Lio/grpc/alts/internal/SecurityLevel;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x3

    .line 7
    iget v2, p0, Lio/grpc/alts/internal/AltsContext;->securityLevel_:I

    .line 8
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget-object v1, p0, Lio/grpc/alts/internal/AltsContext;->peerServiceAccount_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 10
    iget-object v2, p0, Lio/grpc/alts/internal/AltsContext;->peerServiceAccount_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    iget-object v1, p0, Lio/grpc/alts/internal/AltsContext;->localServiceAccount_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 12
    iget-object v2, p0, Lio/grpc/alts/internal/AltsContext;->localServiceAccount_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    iget-object v1, p0, Lio/grpc/alts/internal/AltsContext;->peerRpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 14
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getPeerRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_6
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext;->internalGetPeerAttributes()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 16
    sget-object v3, Lio/grpc/alts/internal/AltsContext$c;->a:Lcom/google/protobuf/e1;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->j()Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 17
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 18
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v2

    const/4 v3, 0x7

    .line 20
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 21
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasPeerRpcVersions()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->peerRpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

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
    invoke-static {}, Lio/grpc/alts/internal/AltsContext;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getRecordProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5
    iget v1, p0, Lio/grpc/alts/internal/AltsContext;->securityLevel_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getPeerServiceAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getLocalServiceAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->hasPeerRpcVersions()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getPeerRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/alts/internal/RpcProtocolVersions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_1
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext;->internalGetPeerAttributes()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext;->internalGetPeerAttributes()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 12
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/alts/internal/f;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/alts/internal/AltsContext;

    const-class v2, Lio/grpc/alts/internal/AltsContext$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetMapField(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext;->internalGetPeerAttributes()Lcom/google/protobuf/g1;

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
    iget-byte v0, p0, Lio/grpc/alts/internal/AltsContext;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/alts/internal/AltsContext;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->newBuilderForType()Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/AltsContext;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/alts/internal/AltsContext$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->newBuilderForType()Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/alts/internal/AltsContext$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/alts/internal/AltsContext;->newBuilder()Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/alts/internal/AltsContext$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/alts/internal/AltsContext$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/alts/internal/AltsContext$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/alts/internal/AltsContext$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/alts/internal/AltsContext;

    invoke-direct {p1}, Lio/grpc/alts/internal/AltsContext;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->toBuilder()Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->toBuilder()Lio/grpc/alts/internal/AltsContext$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/alts/internal/AltsContext$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/alts/internal/AltsContext;->DEFAULT_INSTANCE:Lio/grpc/alts/internal/AltsContext;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/alts/internal/AltsContext$b;

    invoke-direct {v0, v1}, Lio/grpc/alts/internal/AltsContext$b;-><init>(Lio/grpc/alts/internal/AltsContext$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/alts/internal/AltsContext$b;

    invoke-direct {v0, v1}, Lio/grpc/alts/internal/AltsContext$b;-><init>(Lio/grpc/alts/internal/AltsContext$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/alts/internal/AltsContext$b;->i0(Lio/grpc/alts/internal/AltsContext;)Lio/grpc/alts/internal/AltsContext$b;

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

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->applicationProtocol_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lio/grpc/alts/internal/AltsContext;->applicationProtocol_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->recordProtocol_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lio/grpc/alts/internal/AltsContext;->recordProtocol_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/alts/internal/AltsContext;->securityLevel_:I

    sget-object v1, Lio/grpc/alts/internal/SecurityLevel;->SECURITY_NONE:Lio/grpc/alts/internal/SecurityLevel;

    invoke-virtual {v1}, Lio/grpc/alts/internal/SecurityLevel;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6
    iget v1, p0, Lio/grpc/alts/internal/AltsContext;->securityLevel_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->peerServiceAccount_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 8
    iget-object v1, p0, Lio/grpc/alts/internal/AltsContext;->peerServiceAccount_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->localServiceAccount_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 10
    iget-object v1, p0, Lio/grpc/alts/internal/AltsContext;->localServiceAccount_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lio/grpc/alts/internal/AltsContext;->peerRpcVersions_:Lio/grpc/alts/internal/RpcProtocolVersions;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lio/grpc/alts/internal/AltsContext;->getPeerRpcVersions()Lio/grpc/alts/internal/RpcProtocolVersions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    invoke-direct {p0}, Lio/grpc/alts/internal/AltsContext;->internalGetPeerAttributes()Lcom/google/protobuf/g1;

    move-result-object v0

    sget-object v1, Lio/grpc/alts/internal/AltsContext$c;->a:Lcom/google/protobuf/e1;

    const/4 v2, 0x7

    .line 14
    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/g1;Lcom/google/protobuf/e1;I)V

    .line 15
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
