.class public final Lio/grpc/channelz/v1/ChannelData;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/channelz/v1/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/channelz/v1/ChannelData$b;
    }
.end annotation


# static fields
.field public static final CALLS_FAILED_FIELD_NUMBER:I = 0x6

.field public static final CALLS_STARTED_FIELD_NUMBER:I = 0x4

.field public static final CALLS_SUCCEEDED_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lio/grpc/channelz/v1/ChannelData;

.field public static final LAST_CALL_STARTED_TIMESTAMP_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/ChannelData;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_FIELD_NUMBER:I = 0x1

.field public static final TARGET_FIELD_NUMBER:I = 0x2

.field public static final TRACE_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private callsFailed_:J

.field private callsStarted_:J

.field private callsSucceeded_:J

.field private lastCallStartedTimestamp_:Lcom/google/protobuf/Timestamp;

.field private memoizedIsInitialized:B

.field private state_:Lio/grpc/channelz/v1/ChannelConnectivityState;

.field private volatile target_:Ljava/lang/Object;

.field private trace_:Lio/grpc/channelz/v1/ChannelTrace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/channelz/v1/ChannelData;

    invoke-direct {v0}, Lio/grpc/channelz/v1/ChannelData;-><init>()V

    sput-object v0, Lio/grpc/channelz/v1/ChannelData;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/ChannelData;

    .line 2
    new-instance v0, Lio/grpc/channelz/v1/ChannelData$a;

    invoke-direct {v0}, Lio/grpc/channelz/v1/ChannelData$a;-><init>()V

    sput-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/channelz/v1/ChannelData;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lio/grpc/channelz/v1/ChannelData;->target_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lio/grpc/channelz/v1/ChannelData;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/channelz/v1/ChannelData$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/channelz/v1/ChannelData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lio/grpc/channelz/v1/ChannelData;-><init>()V

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_c

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_9

    const/16 v4, 0x12

    if-eq v2, v4, :cond_8

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_6

    const/16 v4, 0x20

    if-eq v2, v4, :cond_5

    const/16 v4, 0x28

    if-eq v2, v4, :cond_4

    const/16 v4, 0x30

    if-eq v2, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 13
    :cond_1
    iget-object v2, p0, Lio/grpc/channelz/v1/ChannelData;->lastCallStartedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v2}, Lcom/google/protobuf/Timestamp;->toBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v5

    .line 15
    :cond_2
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Timestamp;

    iput-object v2, p0, Lio/grpc/channelz/v1/ChannelData;->lastCallStartedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v5, :cond_0

    .line 16
    invoke-virtual {v5, v2}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    .line 17
    invoke-virtual {v5}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/channelz/v1/ChannelData;->lastCallStartedTimestamp_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/channelz/v1/ChannelData;->callsFailed_:J

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/channelz/v1/ChannelData;->callsSucceeded_:J

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/channelz/v1/ChannelData;->callsStarted_:J

    goto :goto_0

    .line 21
    :cond_6
    iget-object v2, p0, Lio/grpc/channelz/v1/ChannelData;->trace_:Lio/grpc/channelz/v1/ChannelTrace;

    if-eqz v2, :cond_7

    .line 22
    invoke-virtual {v2}, Lio/grpc/channelz/v1/ChannelTrace;->toBuilder()Lio/grpc/channelz/v1/ChannelTrace$b;

    move-result-object v5

    .line 23
    :cond_7
    invoke-static {}, Lio/grpc/channelz/v1/ChannelTrace;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/channelz/v1/ChannelTrace;

    iput-object v2, p0, Lio/grpc/channelz/v1/ChannelData;->trace_:Lio/grpc/channelz/v1/ChannelTrace;

    if-eqz v5, :cond_0

    .line 24
    invoke-virtual {v5, v2}, Lio/grpc/channelz/v1/ChannelTrace$b;->j0(Lio/grpc/channelz/v1/ChannelTrace;)Lio/grpc/channelz/v1/ChannelTrace$b;

    .line 25
    invoke-virtual {v5}, Lio/grpc/channelz/v1/ChannelTrace$b;->Y()Lio/grpc/channelz/v1/ChannelTrace;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/channelz/v1/ChannelData;->trace_:Lio/grpc/channelz/v1/ChannelTrace;

    goto/16 :goto_0

    .line 26
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 27
    iput-object v2, p0, Lio/grpc/channelz/v1/ChannelData;->target_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 28
    :cond_9
    iget-object v2, p0, Lio/grpc/channelz/v1/ChannelData;->state_:Lio/grpc/channelz/v1/ChannelConnectivityState;

    if-eqz v2, :cond_a

    .line 29
    invoke-virtual {v2}, Lio/grpc/channelz/v1/ChannelConnectivityState;->toBuilder()Lio/grpc/channelz/v1/ChannelConnectivityState$b;

    move-result-object v5

    .line 30
    :cond_a
    invoke-static {}, Lio/grpc/channelz/v1/ChannelConnectivityState;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/channelz/v1/ChannelConnectivityState;

    iput-object v2, p0, Lio/grpc/channelz/v1/ChannelData;->state_:Lio/grpc/channelz/v1/ChannelConnectivityState;

    if-eqz v5, :cond_0

    .line 31
    invoke-virtual {v5, v2}, Lio/grpc/channelz/v1/ChannelConnectivityState$b;->g0(Lio/grpc/channelz/v1/ChannelConnectivityState;)Lio/grpc/channelz/v1/ChannelConnectivityState$b;

    .line 32
    invoke-virtual {v5}, Lio/grpc/channelz/v1/ChannelConnectivityState$b;->Y()Lio/grpc/channelz/v1/ChannelConnectivityState;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/channelz/v1/ChannelData;->state_:Lio/grpc/channelz/v1/ChannelConnectivityState;
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

    .line 33
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 34
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 35
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 37
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 38
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 39
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/channelz/v1/ChannelData$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/channelz/v1/ChannelData;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lio/grpc/channelz/v1/ChannelData;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/ChannelData;->lastCallStartedTimestamp_:Lcom/google/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/channelz/v1/ChannelData;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$402(Lio/grpc/channelz/v1/ChannelData;Lio/grpc/channelz/v1/ChannelConnectivityState;)Lio/grpc/channelz/v1/ChannelConnectivityState;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/ChannelData;->state_:Lio/grpc/channelz/v1/ChannelConnectivityState;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/channelz/v1/ChannelData;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/channelz/v1/ChannelData;->target_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lio/grpc/channelz/v1/ChannelData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/ChannelData;->target_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lio/grpc/channelz/v1/ChannelData;Lio/grpc/channelz/v1/ChannelTrace;)Lio/grpc/channelz/v1/ChannelTrace;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/ChannelData;->trace_:Lio/grpc/channelz/v1/ChannelTrace;

    return-object p1
.end method

.method static synthetic access$702(Lio/grpc/channelz/v1/ChannelData;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/channelz/v1/ChannelData;->callsStarted_:J

    return-wide p1
.end method

.method static synthetic access$802(Lio/grpc/channelz/v1/ChannelData;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/channelz/v1/ChannelData;->callsSucceeded_:J

    return-wide p1
.end method

.method static synthetic access$902(Lio/grpc/channelz/v1/ChannelData;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/channelz/v1/ChannelData;->callsFailed_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lio/grpc/channelz/v1/ChannelData;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/ChannelData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/h;->g:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/channelz/v1/ChannelData$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/ChannelData;

    invoke-virtual {v0}, Lio/grpc/channelz/v1/ChannelData;->toBuilder()Lio/grpc/channelz/v1/ChannelData$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/channelz/v1/ChannelData;)Lio/grpc/channelz/v1/ChannelData$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/ChannelData;

    invoke-virtual {v0}, Lio/grpc/channelz/v1/ChannelData;->toBuilder()Lio/grpc/channelz/v1/ChannelData$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/channelz/v1/ChannelData$b;->g0(Lio/grpc/channelz/v1/ChannelData;)Lio/grpc/channelz/v1/ChannelData$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/channelz/v1/ChannelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/channelz/v1/ChannelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/channelz/v1/ChannelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/channelz/v1/ChannelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/channelz/v1/ChannelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelData;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/channelz/v1/ChannelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/channelz/v1/ChannelData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/ChannelData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/channelz/v1/ChannelData;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/channelz/v1/ChannelData;

    .line 4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->hasState()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelData;->hasState()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->hasState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getState()Lio/grpc/channelz/v1/ChannelConnectivityState;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelData;->getState()Lio/grpc/channelz/v1/ChannelConnectivityState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/channelz/v1/ChannelConnectivityState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getTarget()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelData;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->hasTrace()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelData;->hasTrace()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->hasTrace()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getTrace()Lio/grpc/channelz/v1/ChannelTrace;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelData;->getTrace()Lio/grpc/channelz/v1/ChannelTrace;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/channelz/v1/ChannelTrace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getCallsStarted()J

    move-result-wide v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelData;->getCallsStarted()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getCallsSucceeded()J

    move-result-wide v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelData;->getCallsSucceeded()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_8

    return v3

    .line 18
    :cond_8
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getCallsFailed()J

    move-result-wide v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelData;->getCallsFailed()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->hasLastCallStartedTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelData;->hasLastCallStartedTimestamp()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 21
    :cond_a
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->hasLastCallStartedTimestamp()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getLastCallStartedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/channelz/v1/ChannelData;->getLastCallStartedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 24
    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v3

    :cond_c
    return v0
.end method

.method public getCallsFailed()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/channelz/v1/ChannelData;->callsFailed_:J

    return-wide v0
.end method

.method public getCallsStarted()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/channelz/v1/ChannelData;->callsStarted_:J

    return-wide v0
.end method

.method public getCallsSucceeded()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/channelz/v1/ChannelData;->callsSucceeded_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getDefaultInstanceForType()Lio/grpc/channelz/v1/ChannelData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getDefaultInstanceForType()Lio/grpc/channelz/v1/ChannelData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/channelz/v1/ChannelData;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/ChannelData;

    return-object v0
.end method

.method public getLastCallStartedTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelData;->lastCallStartedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLastCallStartedTimestampOrBuilder()Lcom/google/protobuf/z2;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getLastCallStartedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/ChannelData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelData;->state_:Lio/grpc/channelz/v1/ChannelConnectivityState;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getState()Lio/grpc/channelz/v1/ChannelConnectivityState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelData;->target_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lio/grpc/channelz/v1/ChannelData;->target_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelData;->trace_:Lio/grpc/channelz/v1/ChannelTrace;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getTrace()Lio/grpc/channelz/v1/ChannelTrace;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-wide v1, p0, Lio/grpc/channelz/v1/ChannelData;->callsStarted_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    .line 9
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-wide v1, p0, Lio/grpc/channelz/v1/ChannelData;->callsSucceeded_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v5, 0x5

    .line 11
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-wide v1, p0, Lio/grpc/channelz/v1/ChannelData;->callsFailed_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    const/4 v3, 0x6

    .line 13
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelData;->lastCallStartedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 15
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getLastCallStartedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getState()Lio/grpc/channelz/v1/ChannelConnectivityState;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelData;->state_:Lio/grpc/channelz/v1/ChannelConnectivityState;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/channelz/v1/ChannelConnectivityState;->getDefaultInstance()Lio/grpc/channelz/v1/ChannelConnectivityState;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStateOrBuilder()Lio/grpc/channelz/v1/b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getState()Lio/grpc/channelz/v1/ChannelConnectivityState;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelData;->target_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/channelz/v1/ChannelData;->target_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTargetBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelData;->target_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/channelz/v1/ChannelData;->target_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTrace()Lio/grpc/channelz/v1/ChannelTrace;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelData;->trace_:Lio/grpc/channelz/v1/ChannelTrace;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/channelz/v1/ChannelTrace;->getDefaultInstance()Lio/grpc/channelz/v1/ChannelTrace;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTraceOrBuilder()Lio/grpc/channelz/v1/g;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getTrace()Lio/grpc/channelz/v1/ChannelTrace;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasLastCallStartedTimestamp()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelData;->lastCallStartedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasState()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelData;->state_:Lio/grpc/channelz/v1/ChannelConnectivityState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTrace()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelData;->trace_:Lio/grpc/channelz/v1/ChannelTrace;

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
    invoke-static {}, Lio/grpc/channelz/v1/ChannelData;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->hasState()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getState()Lio/grpc/channelz/v1/ChannelConnectivityState;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/channelz/v1/ChannelConnectivityState;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->hasTrace()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getTrace()Lio/grpc/channelz/v1/ChannelTrace;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/channelz/v1/ChannelTrace;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getCallsStarted()J

    move-result-wide v1

    .line 9
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getCallsSucceeded()J

    move-result-wide v1

    .line 11
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getCallsFailed()J

    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->hasLastCallStartedTimestamp()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getLastCallStartedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 16
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/h;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/channelz/v1/ChannelData;

    const-class v2, Lio/grpc/channelz/v1/ChannelData$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/channelz/v1/ChannelData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/channelz/v1/ChannelData;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->newBuilderForType()Lio/grpc/channelz/v1/ChannelData$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/ChannelData;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/channelz/v1/ChannelData$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->newBuilderForType()Lio/grpc/channelz/v1/ChannelData$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/channelz/v1/ChannelData$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/channelz/v1/ChannelData;->newBuilder()Lio/grpc/channelz/v1/ChannelData$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/channelz/v1/ChannelData$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/channelz/v1/ChannelData$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/channelz/v1/ChannelData$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/channelz/v1/ChannelData$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/channelz/v1/ChannelData;

    invoke-direct {p1}, Lio/grpc/channelz/v1/ChannelData;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->toBuilder()Lio/grpc/channelz/v1/ChannelData$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->toBuilder()Lio/grpc/channelz/v1/ChannelData$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/channelz/v1/ChannelData$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/ChannelData;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/ChannelData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/channelz/v1/ChannelData$b;

    invoke-direct {v0, v1}, Lio/grpc/channelz/v1/ChannelData$b;-><init>(Lio/grpc/channelz/v1/ChannelData$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/channelz/v1/ChannelData$b;

    invoke-direct {v0, v1}, Lio/grpc/channelz/v1/ChannelData$b;-><init>(Lio/grpc/channelz/v1/ChannelData$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/channelz/v1/ChannelData$b;->g0(Lio/grpc/channelz/v1/ChannelData;)Lio/grpc/channelz/v1/ChannelData$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelData;->state_:Lio/grpc/channelz/v1/ChannelConnectivityState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getState()Lio/grpc/channelz/v1/ChannelConnectivityState;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelData;->target_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lio/grpc/channelz/v1/ChannelData;->target_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelData;->trace_:Lio/grpc/channelz/v1/ChannelTrace;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getTrace()Lio/grpc/channelz/v1/ChannelTrace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-wide v0, p0, Lio/grpc/channelz/v1/ChannelData;->callsStarted_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 8
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 9
    :cond_3
    iget-wide v0, p0, Lio/grpc/channelz/v1/ChannelData;->callsSucceeded_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 10
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 11
    :cond_4
    iget-wide v0, p0, Lio/grpc/channelz/v1/ChannelData;->callsFailed_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    const/4 v2, 0x6

    .line 12
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 13
    :cond_5
    iget-object v0, p0, Lio/grpc/channelz/v1/ChannelData;->lastCallStartedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lio/grpc/channelz/v1/ChannelData;->getLastCallStartedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method