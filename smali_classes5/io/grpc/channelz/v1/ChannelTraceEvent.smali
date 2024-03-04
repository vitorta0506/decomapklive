.class public final Lio/grpc/channelz/v1/ChannelTraceEvent;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/channelz/v1/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/channelz/v1/ChannelTraceEvent$c;,
        Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;,
        Lio/grpc/channelz/v1/ChannelTraceEvent$Severity;
    }
.end annotation


# static fields
.field public static final CHANNEL_REF_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lio/grpc/channelz/v1/ChannelTraceEvent;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/ChannelTraceEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEVERITY_FIELD_NUMBER:I = 0x2

.field public static final SUBCHANNEL_REF_FIELD_NUMBER:I = 0x5

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private childRefCase_:I

.field private childRef_:Ljava/lang/Object;

.field private volatile description_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private severity_:I

.field private timestamp_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/channelz/v1/ChannelTraceEvent;

    invoke-direct {v0}, Lio/grpc/channelz/v1/ChannelTraceEvent;-><init>()V

    sput-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/ChannelTraceEvent;

    .line 2
    new-instance v0, Lio/grpc/channelz/v1/ChannelTraceEvent$a;

    invoke-direct {v0}, Lio/grpc/channelz/v1/ChannelTraceEvent$a;-><init>()V

    sput-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 v1, -0x1

    .line 8
    iput-byte v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->memoizedIsInitialized:B

    const-string v1, ""

    .line 9
    iput-object v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->description_:Ljava/lang/Object;

    .line 10
    iput v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->severity_:I

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
    iput p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/channelz/v1/ChannelTraceEvent$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;-><init>()V

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    const/16 v4, 0xa

    if-eq v2, v4, :cond_a

    const/16 v4, 0x10

    if-eq v2, v4, :cond_9

    const/16 v4, 0x1a

    const/4 v5, 0x0

    if-eq v2, v4, :cond_7

    const/16 v4, 0x22

    if-eq v2, v4, :cond_4

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_1

    .line 15
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 16
    :cond_1
    iget v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 17
    iget-object v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRef_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/channelz/v1/SubchannelRef;

    invoke-virtual {v2}, Lio/grpc/channelz/v1/SubchannelRef;->toBuilder()Lio/grpc/channelz/v1/SubchannelRef$b;

    move-result-object v5

    .line 18
    :cond_2
    invoke-static {}, Lio/grpc/channelz/v1/SubchannelRef;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRef_:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 19
    check-cast v2, Lio/grpc/channelz/v1/SubchannelRef;

    invoke-virtual {v5, v2}, Lio/grpc/channelz/v1/SubchannelRef$b;->g0(Lio/grpc/channelz/v1/SubchannelRef;)Lio/grpc/channelz/v1/SubchannelRef$b;

    .line 20
    invoke-virtual {v5}, Lio/grpc/channelz/v1/SubchannelRef$b;->Y()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRef_:Ljava/lang/Object;

    .line 21
    :cond_3
    iput v3, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    goto :goto_0

    .line 22
    :cond_4
    iget v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 23
    iget-object v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRef_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/channelz/v1/ChannelRef;

    invoke-virtual {v2}, Lio/grpc/channelz/v1/ChannelRef;->toBuilder()Lio/grpc/channelz/v1/ChannelRef$b;

    move-result-object v5

    .line 24
    :cond_5
    invoke-static {}, Lio/grpc/channelz/v1/ChannelRef;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRef_:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 25
    check-cast v2, Lio/grpc/channelz/v1/ChannelRef;

    invoke-virtual {v5, v2}, Lio/grpc/channelz/v1/ChannelRef$b;->g0(Lio/grpc/channelz/v1/ChannelRef;)Lio/grpc/channelz/v1/ChannelRef$b;

    .line 26
    invoke-virtual {v5}, Lio/grpc/channelz/v1/ChannelRef$b;->Y()Lio/grpc/channelz/v1/ChannelRef;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRef_:Ljava/lang/Object;

    .line 27
    :cond_6
    iput v3, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    goto :goto_0

    .line 28
    :cond_7
    iget-object v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v2, :cond_8

    .line 29
    invoke-virtual {v2}, Lcom/google/protobuf/Timestamp;->toBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v5

    .line 30
    :cond_8
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Timestamp;

    iput-object v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v5, :cond_0

    .line 31
    invoke-virtual {v5, v2}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    .line 32
    invoke-virtual {v5}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->timestamp_:Lcom/google/protobuf/Timestamp;

    goto/16 :goto_0

    .line 33
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 34
    iput v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->severity_:I

    goto/16 :goto_0

    .line 35
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 36
    iput-object v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->description_:Ljava/lang/Object;
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

    .line 40
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 41
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 42
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 43
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/channelz/v1/ChannelTraceEvent$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/channelz/v1/ChannelTraceEvent;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$400(Lio/grpc/channelz/v1/ChannelTraceEvent;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->description_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/channelz/v1/ChannelTraceEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/channelz/v1/ChannelTraceEvent;)I
    .locals 0

    iget p0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->severity_:I

    return p0
.end method

.method static synthetic access$502(Lio/grpc/channelz/v1/ChannelTraceEvent;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->severity_:I

    return p1
.end method

.method static synthetic access$602(Lio/grpc/channelz/v1/ChannelTraceEvent;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->timestamp_:Lcom/google/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$702(Lio/grpc/channelz/v1/ChannelTraceEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRef_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lio/grpc/channelz/v1/ChannelTraceEvent;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    return p1
.end method

.method static synthetic access$900(Lio/grpc/channelz/v1/ChannelTraceEvent;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method public static getDefaultInstance()Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/ChannelTraceEvent;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/h;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/ChannelTraceEvent;

    invoke-virtual {v0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->toBuilder()Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/channelz/v1/ChannelTraceEvent;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/ChannelTraceEvent;

    invoke-virtual {v0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->toBuilder()Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->h0(Lio/grpc/channelz/v1/ChannelTraceEvent;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelTraceEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelTraceEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelTraceEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelTraceEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelTraceEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelTraceEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelTraceEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelTraceEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelTraceEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelTraceEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelTraceEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelTraceEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/ChannelTraceEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/channelz/v1/ChannelTraceEvent;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/channelz/v1/ChannelTraceEvent;

    .line 4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    iget v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->severity_:I

    iget v3, p1, Lio/grpc/channelz/v1/ChannelTraceEvent;->severity_:I

    if-eq v1, v3, :cond_3

    return v2

    .line 7
    :cond_3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->hasTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->hasTimestamp()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 8
    :cond_4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getChildRefCase()Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getChildRefCase()Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 12
    :cond_6
    iget v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_8

    const/4 v3, 0x5

    if-eq v1, v3, :cond_7

    goto :goto_0

    .line 13
    :cond_7
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getSubchannelRef()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getSubchannelRef()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/channelz/v1/SubchannelRef;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 15
    :cond_8
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getChannelRef()Lio/grpc/channelz/v1/ChannelRef;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getChannelRef()Lio/grpc/channelz/v1/ChannelRef;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/channelz/v1/ChannelRef;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 17
    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public getChannelRef()Lio/grpc/channelz/v1/ChannelRef;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRef_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/channelz/v1/ChannelRef;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/channelz/v1/ChannelRef;->getDefaultInstance()Lio/grpc/channelz/v1/ChannelRef;

    move-result-object v0

    return-object v0
.end method

.method public getChannelRefOrBuilder()Lio/grpc/channelz/v1/e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRef_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/channelz/v1/ChannelRef;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/channelz/v1/ChannelRef;->getDefaultInstance()Lio/grpc/channelz/v1/ChannelRef;

    move-result-object v0

    return-object v0
.end method

.method public getChildRefCase()Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    invoke-static {v0}, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;->forNumber(I)Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getDefaultInstanceForType()Lio/grpc/channelz/v1/ChannelTraceEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getDefaultInstanceForType()Lio/grpc/channelz/v1/ChannelTraceEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/channelz/v1/ChannelTraceEvent;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/ChannelTraceEvent;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->description_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->description_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->description_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->description_:Ljava/lang/Object;

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
            "Lio/grpc/channelz/v1/ChannelTraceEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->PARSER:Lcom/google/protobuf/e2;

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
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->description_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->description_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->severity_:I

    sget-object v2, Lio/grpc/channelz/v1/ChannelTraceEvent$Severity;->CT_UNKNOWN:Lio/grpc/channelz/v1/ChannelTraceEvent$Severity;

    invoke-virtual {v2}, Lio/grpc/channelz/v1/ChannelTraceEvent$Severity;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x2

    .line 5
    iget v2, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->severity_:I

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 10
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRef_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/channelz/v1/ChannelRef;

    .line 11
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 13
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRef_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/channelz/v1/SubchannelRef;

    .line 14
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

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

.method public getSeverity()Lio/grpc/channelz/v1/ChannelTraceEvent$Severity;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->severity_:I

    invoke-static {v0}, Lio/grpc/channelz/v1/ChannelTraceEvent$Severity;->valueOf(I)Lio/grpc/channelz/v1/ChannelTraceEvent$Severity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent$Severity;->UNRECOGNIZED:Lio/grpc/channelz/v1/ChannelTraceEvent$Severity;

    :cond_0
    return-object v0
.end method

.method public getSeverityValue()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->severity_:I

    return v0
.end method

.method public getSubchannelRef()Lio/grpc/channelz/v1/SubchannelRef;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRef_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/channelz/v1/SubchannelRef;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/channelz/v1/SubchannelRef;->getDefaultInstance()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v0

    return-object v0
.end method

.method public getSubchannelRefOrBuilder()Lio/grpc/channelz/v1/r;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRef_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/channelz/v1/SubchannelRef;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/channelz/v1/SubchannelRef;->getDefaultInstance()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimestampOrBuilder()Lcom/google/protobuf/z2;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasChannelRef()Z
    .locals 2

    iget v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSubchannelRef()Z
    .locals 2

    iget v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

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
    invoke-static {}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    iget v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->severity_:I

    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_1
    iget v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getSubchannelRef()Lio/grpc/channelz/v1/SubchannelRef;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/channelz/v1/SubchannelRef;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getChannelRef()Lio/grpc/channelz/v1/ChannelRef;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/channelz/v1/ChannelRef;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 10
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/h;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/channelz/v1/ChannelTraceEvent;

    const-class v2, Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->newBuilderForType()Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->newBuilderForType()Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/channelz/v1/ChannelTraceEvent;->newBuilder()Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/channelz/v1/ChannelTraceEvent$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/channelz/v1/ChannelTraceEvent;

    invoke-direct {p1}, Lio/grpc/channelz/v1/ChannelTraceEvent;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->toBuilder()Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->toBuilder()Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/channelz/v1/ChannelTraceEvent$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/ChannelTraceEvent;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    invoke-direct {v0, v1}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;-><init>(Lio/grpc/channelz/v1/ChannelTraceEvent$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/channelz/v1/ChannelTraceEvent$c;

    invoke-direct {v0, v1}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;-><init>(Lio/grpc/channelz/v1/ChannelTraceEvent$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$c;->h0(Lio/grpc/channelz/v1/ChannelTraceEvent;)Lio/grpc/channelz/v1/ChannelTraceEvent$c;

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
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->description_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->description_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->severity_:I

    sget-object v1, Lio/grpc/channelz/v1/ChannelTraceEvent$Severity;->CT_UNKNOWN:Lio/grpc/channelz/v1/ChannelTraceEvent$Severity;

    invoke-virtual {v1}, Lio/grpc/channelz/v1/ChannelTraceEvent$Severity;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 4
    iget v1, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->severity_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRef_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/channelz/v1/ChannelRef;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRefCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent;->childRef_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/channelz/v1/SubchannelRef;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
