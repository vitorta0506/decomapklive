.class public final Lio/grpc/channelz/v1/SocketData;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/channelz/v1/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/channelz/v1/SocketData$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SocketData;

.field public static final KEEP_ALIVES_SENT_FIELD_NUMBER:I = 0x6

.field public static final LAST_LOCAL_STREAM_CREATED_TIMESTAMP_FIELD_NUMBER:I = 0x7

.field public static final LAST_MESSAGE_RECEIVED_TIMESTAMP_FIELD_NUMBER:I = 0xa

.field public static final LAST_MESSAGE_SENT_TIMESTAMP_FIELD_NUMBER:I = 0x9

.field public static final LAST_REMOTE_STREAM_CREATED_TIMESTAMP_FIELD_NUMBER:I = 0x8

.field public static final LOCAL_FLOW_CONTROL_WINDOW_FIELD_NUMBER:I = 0xb

.field public static final MESSAGES_RECEIVED_FIELD_NUMBER:I = 0x5

.field public static final MESSAGES_SENT_FIELD_NUMBER:I = 0x4

.field public static final OPTION_FIELD_NUMBER:I = 0xd

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/SocketData;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOTE_FLOW_CONTROL_WINDOW_FIELD_NUMBER:I = 0xc

.field public static final STREAMS_FAILED_FIELD_NUMBER:I = 0x3

.field public static final STREAMS_STARTED_FIELD_NUMBER:I = 0x1

.field public static final STREAMS_SUCCEEDED_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private keepAlivesSent_:J

.field private lastLocalStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

.field private lastMessageReceivedTimestamp_:Lcom/google/protobuf/Timestamp;

.field private lastMessageSentTimestamp_:Lcom/google/protobuf/Timestamp;

.field private lastRemoteStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

.field private localFlowControlWindow_:Lcom/google/protobuf/Int64Value;

.field private memoizedIsInitialized:B

.field private messagesReceived_:J

.field private messagesSent_:J

.field private option_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/channelz/v1/SocketOption;",
            ">;"
        }
    .end annotation
.end field

.field private remoteFlowControlWindow_:Lcom/google/protobuf/Int64Value;

.field private streamsFailed_:J

.field private streamsStarted_:J

.field private streamsSucceeded_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/channelz/v1/SocketData;

    invoke-direct {v0}, Lio/grpc/channelz/v1/SocketData;-><init>()V

    sput-object v0, Lio/grpc/channelz/v1/SocketData;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SocketData;

    .line 2
    new-instance v0, Lio/grpc/channelz/v1/SocketData$a;

    invoke-direct {v0}, Lio/grpc/channelz/v1/SocketData$a;-><init>()V

    sput-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/channelz/v1/SocketData;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

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
    iput-byte p1, p0, Lio/grpc/channelz/v1/SocketData;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/channelz/v1/SocketData$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/channelz/v1/SocketData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/channelz/v1/SocketData;-><init>()V

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_9

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 12
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    goto/16 :goto_2

    :sswitch_0
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_1

    .line 13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 14
    :cond_1
    iget-object v4, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    .line 15
    invoke-static {}, Lio/grpc/channelz/v1/SocketOption;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/channelz/v1/SocketOption;

    .line 16
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :sswitch_1
    iget-object v4, p0, Lio/grpc/channelz/v1/SocketData;->remoteFlowControlWindow_:Lcom/google/protobuf/Int64Value;

    if-eqz v4, :cond_2

    .line 18
    invoke-virtual {v4}, Lcom/google/protobuf/Int64Value;->toBuilder()Lcom/google/protobuf/Int64Value$b;

    move-result-object v5

    .line 19
    :cond_2
    invoke-static {}, Lcom/google/protobuf/Int64Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Int64Value;

    iput-object v4, p0, Lio/grpc/channelz/v1/SocketData;->remoteFlowControlWindow_:Lcom/google/protobuf/Int64Value;

    if-eqz v5, :cond_0

    .line 20
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Int64Value$b;->e0(Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value$b;

    .line 21
    invoke-virtual {v5}, Lcom/google/protobuf/Int64Value$b;->Y()Lcom/google/protobuf/Int64Value;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/channelz/v1/SocketData;->remoteFlowControlWindow_:Lcom/google/protobuf/Int64Value;

    goto :goto_0

    .line 22
    :sswitch_2
    iget-object v4, p0, Lio/grpc/channelz/v1/SocketData;->localFlowControlWindow_:Lcom/google/protobuf/Int64Value;

    if-eqz v4, :cond_3

    .line 23
    invoke-virtual {v4}, Lcom/google/protobuf/Int64Value;->toBuilder()Lcom/google/protobuf/Int64Value$b;

    move-result-object v5

    .line 24
    :cond_3
    invoke-static {}, Lcom/google/protobuf/Int64Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Int64Value;

    iput-object v4, p0, Lio/grpc/channelz/v1/SocketData;->localFlowControlWindow_:Lcom/google/protobuf/Int64Value;

    if-eqz v5, :cond_0

    .line 25
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Int64Value$b;->e0(Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value$b;

    .line 26
    invoke-virtual {v5}, Lcom/google/protobuf/Int64Value$b;->Y()Lcom/google/protobuf/Int64Value;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/channelz/v1/SocketData;->localFlowControlWindow_:Lcom/google/protobuf/Int64Value;

    goto :goto_0

    .line 27
    :sswitch_3
    iget-object v4, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageReceivedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v4, :cond_4

    .line 28
    invoke-virtual {v4}, Lcom/google/protobuf/Timestamp;->toBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v5

    .line 29
    :cond_4
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Timestamp;

    iput-object v4, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageReceivedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v5, :cond_0

    .line 30
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    .line 31
    invoke-virtual {v5}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageReceivedTimestamp_:Lcom/google/protobuf/Timestamp;

    goto/16 :goto_0

    .line 32
    :sswitch_4
    iget-object v4, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageSentTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v4, :cond_5

    .line 33
    invoke-virtual {v4}, Lcom/google/protobuf/Timestamp;->toBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v5

    .line 34
    :cond_5
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Timestamp;

    iput-object v4, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageSentTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v5, :cond_0

    .line 35
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    .line 36
    invoke-virtual {v5}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageSentTimestamp_:Lcom/google/protobuf/Timestamp;

    goto/16 :goto_0

    .line 37
    :sswitch_5
    iget-object v4, p0, Lio/grpc/channelz/v1/SocketData;->lastRemoteStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v4, :cond_6

    .line 38
    invoke-virtual {v4}, Lcom/google/protobuf/Timestamp;->toBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v5

    .line 39
    :cond_6
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Timestamp;

    iput-object v4, p0, Lio/grpc/channelz/v1/SocketData;->lastRemoteStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v5, :cond_0

    .line 40
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    .line 41
    invoke-virtual {v5}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/channelz/v1/SocketData;->lastRemoteStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    goto/16 :goto_0

    .line 42
    :sswitch_6
    iget-object v4, p0, Lio/grpc/channelz/v1/SocketData;->lastLocalStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v4, :cond_7

    .line 43
    invoke-virtual {v4}, Lcom/google/protobuf/Timestamp;->toBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v5

    .line 44
    :cond_7
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Timestamp;

    iput-object v4, p0, Lio/grpc/channelz/v1/SocketData;->lastLocalStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v5, :cond_0

    .line 45
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    .line 46
    invoke-virtual {v5}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/channelz/v1/SocketData;->lastLocalStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    goto/16 :goto_0

    .line 47
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v4

    iput-wide v4, p0, Lio/grpc/channelz/v1/SocketData;->keepAlivesSent_:J

    goto/16 :goto_0

    .line 48
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v4

    iput-wide v4, p0, Lio/grpc/channelz/v1/SocketData;->messagesReceived_:J

    goto/16 :goto_0

    .line 49
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v4

    iput-wide v4, p0, Lio/grpc/channelz/v1/SocketData;->messagesSent_:J

    goto/16 :goto_0

    .line 50
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v4

    iput-wide v4, p0, Lio/grpc/channelz/v1/SocketData;->streamsFailed_:J

    goto/16 :goto_0

    .line 51
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v4

    iput-wide v4, p0, Lio/grpc/channelz/v1/SocketData;->streamsSucceeded_:J

    goto/16 :goto_0

    .line 52
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v4

    iput-wide v4, p0, Lio/grpc/channelz/v1/SocketData;->streamsStarted_:J
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
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 53
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 54
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 55
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_8

    .line 56
    iget-object p2, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    .line 57
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 58
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_9
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_a

    .line 59
    iget-object p1, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    .line 60
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 61
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x18 -> :sswitch_a
        0x20 -> :sswitch_9
        0x28 -> :sswitch_8
        0x30 -> :sswitch_7
        0x3a -> :sswitch_6
        0x42 -> :sswitch_5
        0x4a -> :sswitch_4
        0x52 -> :sswitch_3
        0x5a -> :sswitch_2
        0x62 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/channelz/v1/SocketData$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/channelz/v1/SocketData;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData;->lastLocalStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$1102(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData;->lastRemoteStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$1202(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageSentTimestamp_:Lcom/google/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$1302(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageReceivedTimestamp_:Lcom/google/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$1402(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData;->localFlowControlWindow_:Lcom/google/protobuf/Int64Value;

    return-object p1
.end method

.method static synthetic access$1502(Lio/grpc/channelz/v1/SocketData;Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData;->remoteFlowControlWindow_:Lcom/google/protobuf/Int64Value;

    return-object p1
.end method

.method static synthetic access$1600(Lio/grpc/channelz/v1/SocketData;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1602(Lio/grpc/channelz/v1/SocketData;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1800(Lio/grpc/channelz/v1/SocketData;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1900()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lio/grpc/channelz/v1/SocketData;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/channelz/v1/SocketData;->streamsStarted_:J

    return-wide p1
.end method

.method static synthetic access$502(Lio/grpc/channelz/v1/SocketData;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/channelz/v1/SocketData;->streamsSucceeded_:J

    return-wide p1
.end method

.method static synthetic access$602(Lio/grpc/channelz/v1/SocketData;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/channelz/v1/SocketData;->streamsFailed_:J

    return-wide p1
.end method

.method static synthetic access$702(Lio/grpc/channelz/v1/SocketData;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/channelz/v1/SocketData;->messagesSent_:J

    return-wide p1
.end method

.method static synthetic access$802(Lio/grpc/channelz/v1/SocketData;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/channelz/v1/SocketData;->messagesReceived_:J

    return-wide p1
.end method

.method static synthetic access$902(Lio/grpc/channelz/v1/SocketData;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/channelz/v1/SocketData;->keepAlivesSent_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lio/grpc/channelz/v1/SocketData;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/SocketData;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SocketData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/h;->A:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/channelz/v1/SocketData$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SocketData;

    invoke-virtual {v0}, Lio/grpc/channelz/v1/SocketData;->toBuilder()Lio/grpc/channelz/v1/SocketData$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/channelz/v1/SocketData;)Lio/grpc/channelz/v1/SocketData$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SocketData;

    invoke-virtual {v0}, Lio/grpc/channelz/v1/SocketData;->toBuilder()Lio/grpc/channelz/v1/SocketData$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/channelz/v1/SocketData$b;->i0(Lio/grpc/channelz/v1/SocketData;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/channelz/v1/SocketData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/channelz/v1/SocketData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/channelz/v1/SocketData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/channelz/v1/SocketData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/channelz/v1/SocketData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketData;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/channelz/v1/SocketData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/SocketData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/channelz/v1/SocketData;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/channelz/v1/SocketData;

    .line 4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getStreamsStarted()J

    move-result-wide v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getStreamsStarted()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_2

    return v5

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getStreamsSucceeded()J

    move-result-wide v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getStreamsSucceeded()J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-eqz v6, :cond_3

    return v5

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getStreamsFailed()J

    move-result-wide v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getStreamsFailed()J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-eqz v6, :cond_4

    return v5

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getMessagesSent()J

    move-result-wide v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getMessagesSent()J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-eqz v6, :cond_5

    return v5

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getMessagesReceived()J

    move-result-wide v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getMessagesReceived()J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-eqz v6, :cond_6

    return v5

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getKeepAlivesSent()J

    move-result-wide v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getKeepAlivesSent()J

    move-result-wide v3

    cmp-long v6, v1, v3

    if-eqz v6, :cond_7

    return v5

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasLastLocalStreamCreatedTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->hasLastLocalStreamCreatedTimestamp()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v5

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasLastLocalStreamCreatedTimestamp()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastLocalStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getLastLocalStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v5

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasLastRemoteStreamCreatedTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->hasLastRemoteStreamCreatedTimestamp()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v5

    .line 21
    :cond_a
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasLastRemoteStreamCreatedTimestamp()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastRemoteStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getLastRemoteStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v5

    .line 24
    :cond_b
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasLastMessageSentTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->hasLastMessageSentTimestamp()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v5

    .line 25
    :cond_c
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasLastMessageSentTimestamp()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 26
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastMessageSentTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getLastMessageSentTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v5

    .line 28
    :cond_d
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasLastMessageReceivedTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->hasLastMessageReceivedTimestamp()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v5

    .line 29
    :cond_e
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasLastMessageReceivedTimestamp()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 30
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastMessageReceivedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getLastMessageReceivedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v5

    .line 32
    :cond_f
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasLocalFlowControlWindow()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->hasLocalFlowControlWindow()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v5

    .line 33
    :cond_10
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasLocalFlowControlWindow()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 34
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLocalFlowControlWindow()Lcom/google/protobuf/Int64Value;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getLocalFlowControlWindow()Lcom/google/protobuf/Int64Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Int64Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v5

    .line 36
    :cond_11
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasRemoteFlowControlWindow()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->hasRemoteFlowControlWindow()Z

    move-result v2

    if-eq v1, v2, :cond_12

    return v5

    .line 37
    :cond_12
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasRemoteFlowControlWindow()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 38
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getRemoteFlowControlWindow()Lcom/google/protobuf/Int64Value;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getRemoteFlowControlWindow()Lcom/google/protobuf/Int64Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Int64Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v5

    .line 40
    :cond_13
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getOptionList()Ljava/util/List;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketData;->getOptionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v5

    .line 42
    :cond_14
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    return v5

    :cond_15
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getDefaultInstanceForType()Lio/grpc/channelz/v1/SocketData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getDefaultInstanceForType()Lio/grpc/channelz/v1/SocketData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/channelz/v1/SocketData;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SocketData;

    return-object v0
.end method

.method public getKeepAlivesSent()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/channelz/v1/SocketData;->keepAlivesSent_:J

    return-wide v0
.end method

.method public getLastLocalStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->lastLocalStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLastLocalStreamCreatedTimestampOrBuilder()Lcom/google/protobuf/z2;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastLocalStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getLastMessageReceivedTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageReceivedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLastMessageReceivedTimestampOrBuilder()Lcom/google/protobuf/z2;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastMessageReceivedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getLastMessageSentTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageSentTimestamp_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLastMessageSentTimestampOrBuilder()Lcom/google/protobuf/z2;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastMessageSentTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getLastRemoteStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->lastRemoteStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLastRemoteStreamCreatedTimestampOrBuilder()Lcom/google/protobuf/z2;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastRemoteStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getLocalFlowControlWindow()Lcom/google/protobuf/Int64Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->localFlowControlWindow_:Lcom/google/protobuf/Int64Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Int64Value;->getDefaultInstance()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLocalFlowControlWindowOrBuilder()Lcom/google/protobuf/s0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLocalFlowControlWindow()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesReceived()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/channelz/v1/SocketData;->messagesReceived_:J

    return-wide v0
.end method

.method public getMessagesSent()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/channelz/v1/SocketData;->messagesSent_:J

    return-wide v0
.end method

.method public getOption(I)Lio/grpc/channelz/v1/SocketOption;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/SocketOption;

    return-object p1
.end method

.method public getOptionCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/channelz/v1/SocketOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    return-object v0
.end method

.method public getOptionOrBuilder(I)Lio/grpc/channelz/v1/n;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/channelz/v1/n;

    return-object p1
.end method

.method public getOptionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/channelz/v1/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/SocketData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/channelz/v1/SocketData;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRemoteFlowControlWindow()Lcom/google/protobuf/Int64Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->remoteFlowControlWindow_:Lcom/google/protobuf/Int64Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Int64Value;->getDefaultInstance()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRemoteFlowControlWindowOrBuilder()Lcom/google/protobuf/s0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getRemoteFlowControlWindow()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-wide v0, p0, Lio/grpc/channelz/v1/SocketData;->streamsStarted_:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 3
    invoke-static {v5, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-wide v5, p0, Lio/grpc/channelz/v1/SocketData;->streamsSucceeded_:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-wide v5, p0, Lio/grpc/channelz/v1/SocketData;->streamsFailed_:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-wide v5, p0, Lio/grpc/channelz/v1/SocketData;->messagesSent_:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-wide v5, p0, Lio/grpc/channelz/v1/SocketData;->messagesReceived_:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 11
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-wide v5, p0, Lio/grpc/channelz/v1/SocketData;->keepAlivesSent_:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 13
    invoke-static {v1, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData;->lastLocalStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 15
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastLocalStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData;->lastRemoteStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 17
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastRemoteStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_8
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageSentTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 19
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastMessageSentTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_9
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageReceivedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 21
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastMessageReceivedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_a
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData;->localFlowControlWindow_:Lcom/google/protobuf/Int64Value;

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    .line 23
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLocalFlowControlWindow()Lcom/google/protobuf/Int64Value;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_b
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData;->remoteFlowControlWindow_:Lcom/google/protobuf/Int64Value;

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    .line 25
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getRemoteFlowControlWindow()Lcom/google/protobuf/Int64Value;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_c
    :goto_1
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_d

    const/16 v1, 0xd

    .line 27
    iget-object v3, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    .line 28
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 29
    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getStreamsFailed()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/channelz/v1/SocketData;->streamsFailed_:J

    return-wide v0
.end method

.method public getStreamsStarted()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/channelz/v1/SocketData;->streamsStarted_:J

    return-wide v0
.end method

.method public getStreamsSucceeded()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/channelz/v1/SocketData;->streamsSucceeded_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasLastLocalStreamCreatedTimestamp()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->lastLocalStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLastMessageReceivedTimestamp()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageReceivedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLastMessageSentTimestamp()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageSentTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLastRemoteStreamCreatedTimestamp()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->lastRemoteStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLocalFlowControlWindow()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->localFlowControlWindow_:Lcom/google/protobuf/Int64Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRemoteFlowControlWindow()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->remoteFlowControlWindow_:Lcom/google/protobuf/Int64Value;

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
    invoke-static {}, Lio/grpc/channelz/v1/SocketData;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getStreamsStarted()J

    move-result-wide v1

    .line 4
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getStreamsSucceeded()J

    move-result-wide v1

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getStreamsFailed()J

    move-result-wide v1

    .line 8
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getMessagesSent()J

    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getMessagesReceived()J

    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getKeepAlivesSent()J

    move-result-wide v1

    .line 14
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasLastLocalStreamCreatedTimestamp()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastLocalStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasLastRemoteStreamCreatedTimestamp()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastRemoteStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasLastMessageSentTimestamp()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastMessageSentTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasLastMessageReceivedTimestamp()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 22
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastMessageReceivedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasLocalFlowControlWindow()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLocalFlowControlWindow()Lcom/google/protobuf/Int64Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Int64Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_5
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->hasRemoteFlowControlWindow()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 26
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getRemoteFlowControlWindow()Lcom/google/protobuf/Int64Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Int64Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getOptionCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 28
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getOptionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x1d

    .line 29
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/h;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/channelz/v1/SocketData;

    const-class v2, Lio/grpc/channelz/v1/SocketData$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/channelz/v1/SocketData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/channelz/v1/SocketData;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->newBuilderForType()Lio/grpc/channelz/v1/SocketData$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/SocketData;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/channelz/v1/SocketData$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->newBuilderForType()Lio/grpc/channelz/v1/SocketData$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/channelz/v1/SocketData$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/channelz/v1/SocketData;->newBuilder()Lio/grpc/channelz/v1/SocketData$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/channelz/v1/SocketData$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/channelz/v1/SocketData$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/channelz/v1/SocketData$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/channelz/v1/SocketData$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/channelz/v1/SocketData;

    invoke-direct {p1}, Lio/grpc/channelz/v1/SocketData;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->toBuilder()Lio/grpc/channelz/v1/SocketData$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->toBuilder()Lio/grpc/channelz/v1/SocketData$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/channelz/v1/SocketData$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/SocketData;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SocketData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/channelz/v1/SocketData$b;

    invoke-direct {v0, v1}, Lio/grpc/channelz/v1/SocketData$b;-><init>(Lio/grpc/channelz/v1/SocketData$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/channelz/v1/SocketData$b;

    invoke-direct {v0, v1}, Lio/grpc/channelz/v1/SocketData$b;-><init>(Lio/grpc/channelz/v1/SocketData$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/channelz/v1/SocketData$b;->i0(Lio/grpc/channelz/v1/SocketData;)Lio/grpc/channelz/v1/SocketData$b;

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
    iget-wide v0, p0, Lio/grpc/channelz/v1/SocketData;->streamsStarted_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 2
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lio/grpc/channelz/v1/SocketData;->streamsSucceeded_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 4
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 5
    :cond_1
    iget-wide v0, p0, Lio/grpc/channelz/v1/SocketData;->streamsFailed_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    .line 6
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 7
    :cond_2
    iget-wide v0, p0, Lio/grpc/channelz/v1/SocketData;->messagesSent_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 8
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 9
    :cond_3
    iget-wide v0, p0, Lio/grpc/channelz/v1/SocketData;->messagesReceived_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 10
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 11
    :cond_4
    iget-wide v0, p0, Lio/grpc/channelz/v1/SocketData;->keepAlivesSent_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    const/4 v2, 0x6

    .line 12
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 13
    :cond_5
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->lastLocalStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastLocalStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->lastRemoteStreamCreatedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastRemoteStreamCreatedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageSentTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 18
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastMessageSentTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->lastMessageReceivedTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 20
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLastMessageReceivedTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_9
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->localFlowControlWindow_:Lcom/google/protobuf/Int64Value;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 22
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getLocalFlowControlWindow()Lcom/google/protobuf/Int64Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_a
    iget-object v0, p0, Lio/grpc/channelz/v1/SocketData;->remoteFlowControlWindow_:Lcom/google/protobuf/Int64Value;

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    .line 24
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketData;->getRemoteFlowControlWindow()Lcom/google/protobuf/Int64Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_b
    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v1, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/16 v1, 0xd

    .line 26
    iget-object v2, p0, Lio/grpc/channelz/v1/SocketData;->option_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_c
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
