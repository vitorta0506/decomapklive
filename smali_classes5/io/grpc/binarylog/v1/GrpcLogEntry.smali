.class public final Lio/grpc/binarylog/v1/GrpcLogEntry;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/binarylog/v1/GrpcLogEntry$c;,
        Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;,
        Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;,
        Lio/grpc/binarylog/v1/GrpcLogEntry$EventType;
    }
.end annotation


# static fields
.field public static final CALL_ID_FIELD_NUMBER:I = 0x2

.field public static final CLIENT_HEADER_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lio/grpc/binarylog/v1/GrpcLogEntry;

.field public static final LOGGER_FIELD_NUMBER:I = 0x5

.field public static final MESSAGE_FIELD_NUMBER:I = 0x8

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/binarylog/v1/GrpcLogEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_TRUNCATED_FIELD_NUMBER:I = 0xa

.field public static final PEER_FIELD_NUMBER:I = 0xb

.field public static final SEQUENCE_ID_WITHIN_CALL_FIELD_NUMBER:I = 0x3

.field public static final SERVER_HEADER_FIELD_NUMBER:I = 0x7

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field public static final TRAILER_FIELD_NUMBER:I = 0x9

.field public static final TYPE_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private callId_:J

.field private logger_:I

.field private memoizedIsInitialized:B

.field private payloadCase_:I

.field private payloadTruncated_:Z

.field private payload_:Ljava/lang/Object;

.field private peer_:Lio/grpc/binarylog/v1/Address;

.field private sequenceIdWithinCall_:J

.field private timestamp_:Lcom/google/protobuf/Timestamp;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/binarylog/v1/GrpcLogEntry;

    invoke-direct {v0}, Lio/grpc/binarylog/v1/GrpcLogEntry;-><init>()V

    sput-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->DEFAULT_INSTANCE:Lio/grpc/binarylog/v1/GrpcLogEntry;

    .line 2
    new-instance v0, Lio/grpc/binarylog/v1/GrpcLogEntry$a;

    invoke-direct {v0}, Lio/grpc/binarylog/v1/GrpcLogEntry$a;-><init>()V

    sput-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/4 v1, -0x1

    .line 8
    iput-byte v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->memoizedIsInitialized:B

    .line 9
    iput v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->type_:I

    .line 10
    iput v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->logger_:I

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
    iput p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/binarylog/v1/GrpcLogEntry$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;-><init>()V

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_b

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 15
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    goto/16 :goto_2

    .line 16
    :sswitch_0
    iget-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->peer_:Lio/grpc/binarylog/v1/Address;

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v2}, Lio/grpc/binarylog/v1/Address;->toBuilder()Lio/grpc/binarylog/v1/Address$b;

    move-result-object v4

    .line 18
    :cond_1
    invoke-static {}, Lio/grpc/binarylog/v1/Address;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/binarylog/v1/Address;

    iput-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->peer_:Lio/grpc/binarylog/v1/Address;

    if-eqz v4, :cond_0

    .line 19
    invoke-virtual {v4, v2}, Lio/grpc/binarylog/v1/Address$b;->g0(Lio/grpc/binarylog/v1/Address;)Lio/grpc/binarylog/v1/Address$b;

    .line 20
    invoke-virtual {v4}, Lio/grpc/binarylog/v1/Address$b;->Y()Lio/grpc/binarylog/v1/Address;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->peer_:Lio/grpc/binarylog/v1/Address;

    goto :goto_0

    .line 21
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    iput-boolean v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadTruncated_:Z

    goto :goto_0

    .line 22
    :sswitch_2
    iget v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 23
    iget-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/binarylog/v1/Trailer;

    invoke-virtual {v2}, Lio/grpc/binarylog/v1/Trailer;->toBuilder()Lio/grpc/binarylog/v1/Trailer$b;

    move-result-object v4

    .line 24
    :cond_2
    invoke-static {}, Lio/grpc/binarylog/v1/Trailer;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 25
    check-cast v2, Lio/grpc/binarylog/v1/Trailer;

    invoke-virtual {v4, v2}, Lio/grpc/binarylog/v1/Trailer$b;->g0(Lio/grpc/binarylog/v1/Trailer;)Lio/grpc/binarylog/v1/Trailer$b;

    .line 26
    invoke-virtual {v4}, Lio/grpc/binarylog/v1/Trailer$b;->Y()Lio/grpc/binarylog/v1/Trailer;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    .line 27
    :cond_3
    iput v3, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    goto :goto_0

    .line 28
    :sswitch_3
    iget v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 29
    iget-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/binarylog/v1/Message;

    invoke-virtual {v2}, Lio/grpc/binarylog/v1/Message;->toBuilder()Lio/grpc/binarylog/v1/Message$b;

    move-result-object v4

    .line 30
    :cond_4
    invoke-static {}, Lio/grpc/binarylog/v1/Message;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 31
    check-cast v2, Lio/grpc/binarylog/v1/Message;

    invoke-virtual {v4, v2}, Lio/grpc/binarylog/v1/Message$b;->g0(Lio/grpc/binarylog/v1/Message;)Lio/grpc/binarylog/v1/Message$b;

    .line 32
    invoke-virtual {v4}, Lio/grpc/binarylog/v1/Message$b;->Y()Lio/grpc/binarylog/v1/Message;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    .line 33
    :cond_5
    iput v3, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    goto/16 :goto_0

    .line 34
    :sswitch_4
    iget v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 35
    iget-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/binarylog/v1/ServerHeader;

    invoke-virtual {v2}, Lio/grpc/binarylog/v1/ServerHeader;->toBuilder()Lio/grpc/binarylog/v1/ServerHeader$b;

    move-result-object v4

    .line 36
    :cond_6
    invoke-static {}, Lio/grpc/binarylog/v1/ServerHeader;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    if-eqz v4, :cond_7

    .line 37
    check-cast v2, Lio/grpc/binarylog/v1/ServerHeader;

    invoke-virtual {v4, v2}, Lio/grpc/binarylog/v1/ServerHeader$b;->g0(Lio/grpc/binarylog/v1/ServerHeader;)Lio/grpc/binarylog/v1/ServerHeader$b;

    .line 38
    invoke-virtual {v4}, Lio/grpc/binarylog/v1/ServerHeader$b;->Y()Lio/grpc/binarylog/v1/ServerHeader;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    .line 39
    :cond_7
    iput v3, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    goto/16 :goto_0

    .line 40
    :sswitch_5
    iget v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_8

    .line 41
    iget-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/binarylog/v1/ClientHeader;

    invoke-virtual {v2}, Lio/grpc/binarylog/v1/ClientHeader;->toBuilder()Lio/grpc/binarylog/v1/ClientHeader$b;

    move-result-object v4

    .line 42
    :cond_8
    invoke-static {}, Lio/grpc/binarylog/v1/ClientHeader;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    if-eqz v4, :cond_9

    .line 43
    check-cast v2, Lio/grpc/binarylog/v1/ClientHeader;

    invoke-virtual {v4, v2}, Lio/grpc/binarylog/v1/ClientHeader$b;->g0(Lio/grpc/binarylog/v1/ClientHeader;)Lio/grpc/binarylog/v1/ClientHeader$b;

    .line 44
    invoke-virtual {v4}, Lio/grpc/binarylog/v1/ClientHeader$b;->Y()Lio/grpc/binarylog/v1/ClientHeader;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    .line 45
    :cond_9
    iput v3, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    goto/16 :goto_0

    .line 46
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 47
    iput v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->logger_:I

    goto/16 :goto_0

    .line 48
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 49
    iput v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->type_:I

    goto/16 :goto_0

    .line 50
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->sequenceIdWithinCall_:J

    goto/16 :goto_0

    .line 51
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->callId_:J

    goto/16 :goto_0

    .line 52
    :sswitch_a
    iget-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v2, :cond_a

    .line 53
    invoke-virtual {v2}, Lcom/google/protobuf/Timestamp;->toBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v4

    .line 54
    :cond_a
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Timestamp;

    iput-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    .line 56
    invoke-virtual {v4}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->timestamp_:Lcom/google/protobuf/Timestamp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_b
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 57
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 58
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 59
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 61
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 62
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 63
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0xa -> :sswitch_a
        0x10 -> :sswitch_9
        0x18 -> :sswitch_8
        0x20 -> :sswitch_7
        0x28 -> :sswitch_6
        0x32 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x50 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/binarylog/v1/GrpcLogEntry$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/binarylog/v1/GrpcLogEntry;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lio/grpc/binarylog/v1/GrpcLogEntry;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadTruncated_:Z

    return p1
.end method

.method static synthetic access$1102(Lio/grpc/binarylog/v1/GrpcLogEntry;Lio/grpc/binarylog/v1/Address;)Lio/grpc/binarylog/v1/Address;
    .locals 0

    iput-object p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->peer_:Lio/grpc/binarylog/v1/Address;

    return-object p1
.end method

.method static synthetic access$1202(Lio/grpc/binarylog/v1/GrpcLogEntry;I)I
    .locals 0

    iput p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    return p1
.end method

.method static synthetic access$1300(Lio/grpc/binarylog/v1/GrpcLogEntry;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lio/grpc/binarylog/v1/GrpcLogEntry;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 0

    iput-object p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->timestamp_:Lcom/google/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$502(Lio/grpc/binarylog/v1/GrpcLogEntry;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->callId_:J

    return-wide p1
.end method

.method static synthetic access$602(Lio/grpc/binarylog/v1/GrpcLogEntry;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->sequenceIdWithinCall_:J

    return-wide p1
.end method

.method static synthetic access$700(Lio/grpc/binarylog/v1/GrpcLogEntry;)I
    .locals 0

    iget p0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->type_:I

    return p0
.end method

.method static synthetic access$702(Lio/grpc/binarylog/v1/GrpcLogEntry;I)I
    .locals 0

    iput p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->type_:I

    return p1
.end method

.method static synthetic access$800(Lio/grpc/binarylog/v1/GrpcLogEntry;)I
    .locals 0

    iget p0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->logger_:I

    return p0
.end method

.method static synthetic access$802(Lio/grpc/binarylog/v1/GrpcLogEntry;I)I
    .locals 0

    iput p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->logger_:I

    return p1
.end method

.method static synthetic access$902(Lio/grpc/binarylog/v1/GrpcLogEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 1

    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->DEFAULT_INSTANCE:Lio/grpc/binarylog/v1/GrpcLogEntry;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/binarylog/v1/b;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->DEFAULT_INSTANCE:Lio/grpc/binarylog/v1/GrpcLogEntry;

    invoke-virtual {v0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->toBuilder()Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/binarylog/v1/GrpcLogEntry;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->DEFAULT_INSTANCE:Lio/grpc/binarylog/v1/GrpcLogEntry;

    invoke-virtual {v0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->toBuilder()Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->h0(Lio/grpc/binarylog/v1/GrpcLogEntry;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/binarylog/v1/GrpcLogEntry;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/binarylog/v1/GrpcLogEntry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/binarylog/v1/GrpcLogEntry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/binarylog/v1/GrpcLogEntry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/binarylog/v1/GrpcLogEntry;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/binarylog/v1/GrpcLogEntry;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/binarylog/v1/GrpcLogEntry;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/binarylog/v1/GrpcLogEntry;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/binarylog/v1/GrpcLogEntry;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/binarylog/v1/GrpcLogEntry;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/binarylog/v1/GrpcLogEntry;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/binarylog/v1/GrpcLogEntry;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/binarylog/v1/GrpcLogEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/binarylog/v1/GrpcLogEntry;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/binarylog/v1/GrpcLogEntry;

    .line 4
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->hasTimestamp()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->hasTimestamp()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getCallId()J

    move-result-wide v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getCallId()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_4

    return v3

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getSequenceIdWithinCall()J

    move-result-wide v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getSequenceIdWithinCall()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_5

    return v3

    .line 12
    :cond_5
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->type_:I

    iget v2, p1, Lio/grpc/binarylog/v1/GrpcLogEntry;->type_:I

    if-eq v1, v2, :cond_6

    return v3

    .line 13
    :cond_6
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->logger_:I

    iget v2, p1, Lio/grpc/binarylog/v1/GrpcLogEntry;->logger_:I

    if-eq v1, v2, :cond_7

    return v3

    .line 14
    :cond_7
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getPayloadTruncated()Z

    move-result v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getPayloadTruncated()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 16
    :cond_8
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->hasPeer()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->hasPeer()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 17
    :cond_9
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->hasPeer()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 18
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getPeer()Lio/grpc/binarylog/v1/Address;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getPeer()Lio/grpc/binarylog/v1/Address;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/binarylog/v1/Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 20
    :cond_a
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getPayloadCase()Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getPayloadCase()Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 21
    :cond_b
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 22
    :pswitch_0
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getTrailer()Lio/grpc/binarylog/v1/Trailer;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getTrailer()Lio/grpc/binarylog/v1/Trailer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/binarylog/v1/Trailer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 24
    :pswitch_1
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getMessage()Lio/grpc/binarylog/v1/Message;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getMessage()Lio/grpc/binarylog/v1/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/binarylog/v1/Message;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 26
    :pswitch_2
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getServerHeader()Lio/grpc/binarylog/v1/ServerHeader;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getServerHeader()Lio/grpc/binarylog/v1/ServerHeader;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/binarylog/v1/ServerHeader;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 28
    :pswitch_3
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getClientHeader()Lio/grpc/binarylog/v1/ClientHeader;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getClientHeader()Lio/grpc/binarylog/v1/ClientHeader;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/binarylog/v1/ClientHeader;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 30
    :cond_c
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v3

    :cond_d
    return v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCallId()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->callId_:J

    return-wide v0
.end method

.method public getClientHeader()Lio/grpc/binarylog/v1/ClientHeader;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/ClientHeader;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/binarylog/v1/ClientHeader;->getDefaultInstance()Lio/grpc/binarylog/v1/ClientHeader;

    move-result-object v0

    return-object v0
.end method

.method public getClientHeaderOrBuilder()Lio/grpc/binarylog/v1/c;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/ClientHeader;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/binarylog/v1/ClientHeader;->getDefaultInstance()Lio/grpc/binarylog/v1/ClientHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getDefaultInstanceForType()Lio/grpc/binarylog/v1/GrpcLogEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getDefaultInstanceForType()Lio/grpc/binarylog/v1/GrpcLogEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/binarylog/v1/GrpcLogEntry;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->DEFAULT_INSTANCE:Lio/grpc/binarylog/v1/GrpcLogEntry;

    return-object v0
.end method

.method public getLogger()Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->logger_:I

    invoke-static {v0}, Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;->valueOf(I)Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;->UNRECOGNIZED:Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;

    :cond_0
    return-object v0
.end method

.method public getLoggerValue()I
    .locals 1

    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->logger_:I

    return v0
.end method

.method public getMessage()Lio/grpc/binarylog/v1/Message;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/Message;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/binarylog/v1/Message;->getDefaultInstance()Lio/grpc/binarylog/v1/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessageOrBuilder()Lio/grpc/binarylog/v1/d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/Message;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/binarylog/v1/Message;->getDefaultInstance()Lio/grpc/binarylog/v1/Message;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/binarylog/v1/GrpcLogEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPayloadCase()Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;
    .locals 1

    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    invoke-static {v0}, Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;->forNumber(I)Lio/grpc/binarylog/v1/GrpcLogEntry$PayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadTruncated()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadTruncated_:Z

    return v0
.end method

.method public getPeer()Lio/grpc/binarylog/v1/Address;
    .locals 1

    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->peer_:Lio/grpc/binarylog/v1/Address;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/binarylog/v1/Address;->getDefaultInstance()Lio/grpc/binarylog/v1/Address;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPeerOrBuilder()Lio/grpc/binarylog/v1/a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getPeer()Lio/grpc/binarylog/v1/Address;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceIdWithinCall()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->sequenceIdWithinCall_:J

    return-wide v0
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
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-wide v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->callId_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 5
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-wide v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->sequenceIdWithinCall_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v3, 0x3

    .line 7
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->type_:I

    sget-object v2, Lio/grpc/binarylog/v1/GrpcLogEntry$EventType;->EVENT_TYPE_UNKNOWN:Lio/grpc/binarylog/v1/GrpcLogEntry$EventType;

    invoke-virtual {v2}, Lio/grpc/binarylog/v1/GrpcLogEntry$EventType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x4

    .line 9
    iget v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->type_:I

    .line 10
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->logger_:I

    sget-object v2, Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;->LOGGER_UNKNOWN:Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;

    invoke-virtual {v2}, Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x5

    .line 12
    iget v2, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->logger_:I

    .line 13
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 15
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/binarylog/v1/ClientHeader;

    .line 16
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_6
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 18
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/binarylog/v1/ServerHeader;

    .line 19
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_7
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 21
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/binarylog/v1/Message;

    .line 22
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_8
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    .line 24
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/binarylog/v1/Trailer;

    .line 25
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_9
    iget-boolean v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadTruncated_:Z

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 27
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_a
    iget-object v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->peer_:Lio/grpc/binarylog/v1/Address;

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    .line 29
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getPeer()Lio/grpc/binarylog/v1/Address;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_b
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getServerHeader()Lio/grpc/binarylog/v1/ServerHeader;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/ServerHeader;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/binarylog/v1/ServerHeader;->getDefaultInstance()Lio/grpc/binarylog/v1/ServerHeader;

    move-result-object v0

    return-object v0
.end method

.method public getServerHeaderOrBuilder()Lio/grpc/binarylog/v1/g;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/ServerHeader;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/binarylog/v1/ServerHeader;->getDefaultInstance()Lio/grpc/binarylog/v1/ServerHeader;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimestampOrBuilder()Lcom/google/protobuf/z2;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTrailer()Lio/grpc/binarylog/v1/Trailer;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/Trailer;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/binarylog/v1/Trailer;->getDefaultInstance()Lio/grpc/binarylog/v1/Trailer;

    move-result-object v0

    return-object v0
.end method

.method public getTrailerOrBuilder()Lio/grpc/binarylog/v1/h;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/Trailer;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/binarylog/v1/Trailer;->getDefaultInstance()Lio/grpc/binarylog/v1/Trailer;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lio/grpc/binarylog/v1/GrpcLogEntry$EventType;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->type_:I

    invoke-static {v0}, Lio/grpc/binarylog/v1/GrpcLogEntry$EventType;->valueOf(I)Lio/grpc/binarylog/v1/GrpcLogEntry$EventType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry$EventType;->UNRECOGNIZED:Lio/grpc/binarylog/v1/GrpcLogEntry$EventType;

    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->type_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasClientHeader()Z
    .locals 2

    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMessage()Z
    .locals 2

    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPeer()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->peer_:Lio/grpc/binarylog/v1/Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasServerHeader()Z
    .locals 2

    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/4 v1, 0x7

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

    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTrailer()Z
    .locals 2

    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/16 v1, 0x9

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
    invoke-static {}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getCallId()J

    move-result-wide v1

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getSequenceIdWithinCall()J

    move-result-wide v1

    .line 8
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->type_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 10
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->logger_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getPayloadTruncated()Z

    move-result v1

    .line 12
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->hasPeer()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getPeer()Lio/grpc/binarylog/v1/Address;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/binarylog/v1/Address;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_2
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getTrailer()Lio/grpc/binarylog/v1/Trailer;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/binarylog/v1/Trailer;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getMessage()Lio/grpc/binarylog/v1/Message;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/binarylog/v1/Message;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getServerHeader()Lio/grpc/binarylog/v1/ServerHeader;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/binarylog/v1/ServerHeader;->hashCode()I

    move-result v1

    goto :goto_0

    :pswitch_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getClientHeader()Lio/grpc/binarylog/v1/ClientHeader;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/binarylog/v1/ClientHeader;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 20
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/binarylog/v1/b;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/binarylog/v1/GrpcLogEntry;

    const-class v2, Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->newBuilderForType()Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->newBuilderForType()Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/binarylog/v1/GrpcLogEntry;->newBuilder()Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/binarylog/v1/GrpcLogEntry$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/binarylog/v1/GrpcLogEntry;

    invoke-direct {p1}, Lio/grpc/binarylog/v1/GrpcLogEntry;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->toBuilder()Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->toBuilder()Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/binarylog/v1/GrpcLogEntry$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/binarylog/v1/GrpcLogEntry;->DEFAULT_INSTANCE:Lio/grpc/binarylog/v1/GrpcLogEntry;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    invoke-direct {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;-><init>(Lio/grpc/binarylog/v1/GrpcLogEntry$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/binarylog/v1/GrpcLogEntry$c;

    invoke-direct {v0, v1}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;-><init>(Lio/grpc/binarylog/v1/GrpcLogEntry$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/binarylog/v1/GrpcLogEntry$c;->h0(Lio/grpc/binarylog/v1/GrpcLogEntry;)Lio/grpc/binarylog/v1/GrpcLogEntry$c;

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
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->callId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 4
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 5
    :cond_1
    iget-wide v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->sequenceIdWithinCall_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v2, 0x3

    .line 6
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->type_:I

    sget-object v1, Lio/grpc/binarylog/v1/GrpcLogEntry$EventType;->EVENT_TYPE_UNKNOWN:Lio/grpc/binarylog/v1/GrpcLogEntry$EventType;

    invoke-virtual {v1}, Lio/grpc/binarylog/v1/GrpcLogEntry$EventType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x4

    .line 8
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->logger_:I

    sget-object v1, Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;->LOGGER_UNKNOWN:Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;

    invoke-virtual {v1}, Lio/grpc/binarylog/v1/GrpcLogEntry$Logger;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x5

    .line 10
    iget v1, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->logger_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/ClientHeader;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/ServerHeader;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 16
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/Message;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 18
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payload_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/binarylog/v1/Trailer;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-boolean v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->payloadTruncated_:Z

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 21
    :cond_9
    iget-object v0, p0, Lio/grpc/binarylog/v1/GrpcLogEntry;->peer_:Lio/grpc/binarylog/v1/Address;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 22
    invoke-virtual {p0}, Lio/grpc/binarylog/v1/GrpcLogEntry;->getPeer()Lio/grpc/binarylog/v1/Address;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
