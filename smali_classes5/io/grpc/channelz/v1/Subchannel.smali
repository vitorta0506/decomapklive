.class public final Lio/grpc/channelz/v1/Subchannel;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/channelz/v1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/channelz/v1/Subchannel$b;
    }
.end annotation


# static fields
.field public static final CHANNEL_REF_FIELD_NUMBER:I = 0x3

.field public static final DATA_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/grpc/channelz/v1/Subchannel;

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/Subchannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final REF_FIELD_NUMBER:I = 0x1

.field public static final SOCKET_REF_FIELD_NUMBER:I = 0x5

.field public static final SUBCHANNEL_REF_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private channelRef_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/channelz/v1/ChannelRef;",
            ">;"
        }
    .end annotation
.end field

.field private data_:Lio/grpc/channelz/v1/ChannelData;

.field private memoizedIsInitialized:B

.field private ref_:Lio/grpc/channelz/v1/SubchannelRef;

.field private socketRef_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/channelz/v1/SocketRef;",
            ">;"
        }
    .end annotation
.end field

.field private subchannelRef_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/channelz/v1/SubchannelRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/channelz/v1/Subchannel;

    invoke-direct {v0}, Lio/grpc/channelz/v1/Subchannel;-><init>()V

    sput-object v0, Lio/grpc/channelz/v1/Subchannel;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/Subchannel;

    .line 2
    new-instance v0, Lio/grpc/channelz/v1/Subchannel$a;

    invoke-direct {v0}, Lio/grpc/channelz/v1/Subchannel$a;-><init>()V

    sput-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/channelz/v1/Subchannel;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

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
    iput-byte p1, p0, Lio/grpc/channelz/v1/Subchannel;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/channelz/v1/Subchannel$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/channelz/v1/Subchannel;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lio/grpc/channelz/v1/Subchannel;-><init>()V

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_f

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_b

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v3, v5, :cond_9

    const/16 v5, 0x12

    if-eq v3, v5, :cond_7

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_5

    const/16 v5, 0x22

    if-eq v3, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_1
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_2

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 16
    :cond_2
    iget-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    .line 17
    invoke-static {}, Lio/grpc/channelz/v1/SocketRef;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/channelz/v1/SocketRef;

    .line 18
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_4

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 20
    :cond_4
    iget-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    .line 21
    invoke-static {}, Lio/grpc/channelz/v1/SubchannelRef;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/channelz/v1/SubchannelRef;

    .line 22
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_6

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 24
    :cond_6
    iget-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    .line 25
    invoke-static {}, Lio/grpc/channelz/v1/ChannelRef;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/channelz/v1/ChannelRef;

    .line 26
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_7
    iget-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->data_:Lio/grpc/channelz/v1/ChannelData;

    if-eqz v3, :cond_8

    .line 28
    invoke-virtual {v3}, Lio/grpc/channelz/v1/ChannelData;->toBuilder()Lio/grpc/channelz/v1/ChannelData$b;

    move-result-object v6

    .line 29
    :cond_8
    invoke-static {}, Lio/grpc/channelz/v1/ChannelData;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/channelz/v1/ChannelData;

    iput-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->data_:Lio/grpc/channelz/v1/ChannelData;

    if-eqz v6, :cond_0

    .line 30
    invoke-virtual {v6, v3}, Lio/grpc/channelz/v1/ChannelData$b;->g0(Lio/grpc/channelz/v1/ChannelData;)Lio/grpc/channelz/v1/ChannelData$b;

    .line 31
    invoke-virtual {v6}, Lio/grpc/channelz/v1/ChannelData$b;->Y()Lio/grpc/channelz/v1/ChannelData;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->data_:Lio/grpc/channelz/v1/ChannelData;

    goto/16 :goto_0

    .line 32
    :cond_9
    iget-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->ref_:Lio/grpc/channelz/v1/SubchannelRef;

    if-eqz v3, :cond_a

    .line 33
    invoke-virtual {v3}, Lio/grpc/channelz/v1/SubchannelRef;->toBuilder()Lio/grpc/channelz/v1/SubchannelRef$b;

    move-result-object v6

    .line 34
    :cond_a
    invoke-static {}, Lio/grpc/channelz/v1/SubchannelRef;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/channelz/v1/SubchannelRef;

    iput-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->ref_:Lio/grpc/channelz/v1/SubchannelRef;

    if-eqz v6, :cond_0

    .line 35
    invoke-virtual {v6, v3}, Lio/grpc/channelz/v1/SubchannelRef$b;->g0(Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/SubchannelRef$b;

    .line 36
    invoke-virtual {v6}, Lio/grpc/channelz/v1/SubchannelRef$b;->Y()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->ref_:Lio/grpc/channelz/v1/SubchannelRef;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 37
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 38
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 39
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_c

    .line 40
    iget-object p2, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_d

    .line 41
    iget-object p2, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_e

    .line 42
    iget-object p2, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    .line 43
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_f
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_10

    .line 45
    iget-object p1, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    :cond_10
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_11

    .line 46
    iget-object p1, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    :cond_11
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_12

    .line 47
    iget-object p1, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    .line 48
    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 49
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/channelz/v1/Subchannel$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/channelz/v1/Subchannel;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1200(Lio/grpc/channelz/v1/Subchannel;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lio/grpc/channelz/v1/Subchannel;Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/SubchannelRef;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/Subchannel;->ref_:Lio/grpc/channelz/v1/SubchannelRef;

    return-object p1
.end method

.method static synthetic access$502(Lio/grpc/channelz/v1/Subchannel;Lio/grpc/channelz/v1/ChannelData;)Lio/grpc/channelz/v1/ChannelData;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/Subchannel;->data_:Lio/grpc/channelz/v1/ChannelData;

    return-object p1
.end method

.method static synthetic access$600(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lio/grpc/channelz/v1/Subchannel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lio/grpc/channelz/v1/Subchannel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lio/grpc/channelz/v1/Subchannel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lio/grpc/channelz/v1/Subchannel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lio/grpc/channelz/v1/Subchannel;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/Subchannel;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/h;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/channelz/v1/Subchannel$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/Subchannel;

    invoke-virtual {v0}, Lio/grpc/channelz/v1/Subchannel;->toBuilder()Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/channelz/v1/Subchannel;)Lio/grpc/channelz/v1/Subchannel$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/Subchannel;

    invoke-virtual {v0}, Lio/grpc/channelz/v1/Subchannel;->toBuilder()Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/channelz/v1/Subchannel$b;->n0(Lio/grpc/channelz/v1/Subchannel;)Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/channelz/v1/Subchannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Subchannel;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Subchannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Subchannel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/channelz/v1/Subchannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Subchannel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Subchannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Subchannel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/channelz/v1/Subchannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Subchannel;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Subchannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Subchannel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/channelz/v1/Subchannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Subchannel;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Subchannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Subchannel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/channelz/v1/Subchannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Subchannel;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Subchannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Subchannel;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/channelz/v1/Subchannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Subchannel;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/channelz/v1/Subchannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/Subchannel;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/Subchannel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/channelz/v1/Subchannel;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/channelz/v1/Subchannel;

    .line 4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->hasRef()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/Subchannel;->hasRef()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->hasRef()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getRef()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Subchannel;->getRef()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/channelz/v1/SubchannelRef;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->hasData()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/Subchannel;->hasData()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->hasData()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getData()Lio/grpc/channelz/v1/ChannelData;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Subchannel;->getData()Lio/grpc/channelz/v1/ChannelData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/channelz/v1/ChannelData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getChannelRefList()Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Subchannel;->getChannelRefList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getSubchannelRefList()Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Subchannel;->getSubchannelRefList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getSocketRefList()Ljava/util/List;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/channelz/v1/Subchannel;->getSocketRefList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 18
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v0
.end method

.method public getChannelRef(I)Lio/grpc/channelz/v1/ChannelRef;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/ChannelRef;

    return-object p1
.end method

.method public getChannelRefCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChannelRefList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/channelz/v1/ChannelRef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    return-object v0
.end method

.method public getChannelRefOrBuilder(I)Lio/grpc/channelz/v1/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/e;

    return-object p1
.end method

.method public getChannelRefOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/channelz/v1/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    return-object v0
.end method

.method public getData()Lio/grpc/channelz/v1/ChannelData;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->data_:Lio/grpc/channelz/v1/ChannelData;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/channelz/v1/ChannelData;->getDefaultInstance()Lio/grpc/channelz/v1/ChannelData;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDataOrBuilder()Lio/grpc/channelz/v1/c;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getData()Lio/grpc/channelz/v1/ChannelData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getDefaultInstanceForType()Lio/grpc/channelz/v1/Subchannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getDefaultInstanceForType()Lio/grpc/channelz/v1/Subchannel;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/channelz/v1/Subchannel;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/Subchannel;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/Subchannel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRef()Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->ref_:Lio/grpc/channelz/v1/SubchannelRef;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/channelz/v1/SubchannelRef;->getDefaultInstance()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRefOrBuilder()Lio/grpc/channelz/v1/r;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getRef()Lio/grpc/channelz/v1/SubchannelRef;

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

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->ref_:Lio/grpc/channelz/v1/SubchannelRef;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getRef()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lio/grpc/channelz/v1/Subchannel;->data_:Lio/grpc/channelz/v1/ChannelData;

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getData()Lio/grpc/channelz/v1/ChannelData;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    const/4 v2, 0x0

    .line 6
    :goto_1
    iget-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v3, 0x3

    .line 7
    iget-object v4, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    .line 8
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 9
    :goto_2
    iget-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    const/4 v3, 0x4

    .line 10
    iget-object v4, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    .line 11
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 12
    :cond_4
    :goto_3
    iget-object v2, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x5

    .line 13
    iget-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    .line 14
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSocketRef(I)Lio/grpc/channelz/v1/SocketRef;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/SocketRef;

    return-object p1
.end method

.method public getSocketRefCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSocketRefList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/channelz/v1/SocketRef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    return-object v0
.end method

.method public getSocketRefOrBuilder(I)Lio/grpc/channelz/v1/p;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/p;

    return-object p1
.end method

.method public getSocketRefOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/channelz/v1/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    return-object v0
.end method

.method public getSubchannelRef(I)Lio/grpc/channelz/v1/SubchannelRef;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/SubchannelRef;

    return-object p1
.end method

.method public getSubchannelRefCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubchannelRefList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/channelz/v1/SubchannelRef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    return-object v0
.end method

.method public getSubchannelRefOrBuilder(I)Lio/grpc/channelz/v1/r;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/r;

    return-object p1
.end method

.method public getSubchannelRefOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/channelz/v1/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->data_:Lio/grpc/channelz/v1/ChannelData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRef()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->ref_:Lio/grpc/channelz/v1/SubchannelRef;

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
    invoke-static {}, Lio/grpc/channelz/v1/Subchannel;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->hasRef()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getRef()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/channelz/v1/SubchannelRef;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->hasData()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getData()Lio/grpc/channelz/v1/ChannelData;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/channelz/v1/ChannelData;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getChannelRefCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getChannelRefList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getSubchannelRefCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getSubchannelRefList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getSocketRefCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getSocketRefList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/h;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/channelz/v1/Subchannel;

    const-class v2, Lio/grpc/channelz/v1/Subchannel$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/channelz/v1/Subchannel;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/channelz/v1/Subchannel;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->newBuilderForType()Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/Subchannel;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->newBuilderForType()Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/channelz/v1/Subchannel$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/channelz/v1/Subchannel;->newBuilder()Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/channelz/v1/Subchannel$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/channelz/v1/Subchannel$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/channelz/v1/Subchannel$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/channelz/v1/Subchannel$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/channelz/v1/Subchannel;

    invoke-direct {p1}, Lio/grpc/channelz/v1/Subchannel;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->toBuilder()Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->toBuilder()Lio/grpc/channelz/v1/Subchannel$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/channelz/v1/Subchannel$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/Subchannel;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/Subchannel;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/channelz/v1/Subchannel$b;

    invoke-direct {v0, v1}, Lio/grpc/channelz/v1/Subchannel$b;-><init>(Lio/grpc/channelz/v1/Subchannel$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/channelz/v1/Subchannel$b;

    invoke-direct {v0, v1}, Lio/grpc/channelz/v1/Subchannel$b;-><init>(Lio/grpc/channelz/v1/Subchannel$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/channelz/v1/Subchannel$b;->n0(Lio/grpc/channelz/v1/Subchannel;)Lio/grpc/channelz/v1/Subchannel$b;

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
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->ref_:Lio/grpc/channelz/v1/SubchannelRef;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getRef()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/channelz/v1/Subchannel;->data_:Lio/grpc/channelz/v1/ChannelData;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/Subchannel;->getData()Lio/grpc/channelz/v1/ChannelData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 6
    iget-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->channelRef_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_1
    iget-object v2, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 8
    iget-object v3, p0, Lio/grpc/channelz/v1/Subchannel;->subchannelRef_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_3
    :goto_2
    iget-object v1, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    .line 10
    iget-object v2, p0, Lio/grpc/channelz/v1/Subchannel;->socketRef_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
