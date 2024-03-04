.class public final Lio/grpc/channelz/v1/SocketOptionTcpInfo;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SocketOptionTcpInfo;

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/SocketOptionTcpInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TCPI_ADVMSS_FIELD_NUMBER:I = 0x1c

.field public static final TCPI_ATO_FIELD_NUMBER:I = 0xa

.field public static final TCPI_BACKOFF_FIELD_NUMBER:I = 0x5

.field public static final TCPI_CA_STATE_FIELD_NUMBER:I = 0x2

.field public static final TCPI_FACKETS_FIELD_NUMBER:I = 0x11

.field public static final TCPI_LAST_ACK_RECV_FIELD_NUMBER:I = 0x15

.field public static final TCPI_LAST_ACK_SENT_FIELD_NUMBER:I = 0x13

.field public static final TCPI_LAST_DATA_RECV_FIELD_NUMBER:I = 0x14

.field public static final TCPI_LAST_DATA_SENT_FIELD_NUMBER:I = 0x12

.field public static final TCPI_LOST_FIELD_NUMBER:I = 0xf

.field public static final TCPI_OPTIONS_FIELD_NUMBER:I = 0x6

.field public static final TCPI_PMTU_FIELD_NUMBER:I = 0x16

.field public static final TCPI_PROBES_FIELD_NUMBER:I = 0x4

.field public static final TCPI_RCV_MSS_FIELD_NUMBER:I = 0xc

.field public static final TCPI_RCV_SSTHRESH_FIELD_NUMBER:I = 0x17

.field public static final TCPI_RCV_WSCALE_FIELD_NUMBER:I = 0x8

.field public static final TCPI_REORDERING_FIELD_NUMBER:I = 0x1d

.field public static final TCPI_RETRANSMITS_FIELD_NUMBER:I = 0x3

.field public static final TCPI_RETRANS_FIELD_NUMBER:I = 0x10

.field public static final TCPI_RTO_FIELD_NUMBER:I = 0x9

.field public static final TCPI_RTTVAR_FIELD_NUMBER:I = 0x19

.field public static final TCPI_RTT_FIELD_NUMBER:I = 0x18

.field public static final TCPI_SACKED_FIELD_NUMBER:I = 0xe

.field public static final TCPI_SND_CWND_FIELD_NUMBER:I = 0x1b

.field public static final TCPI_SND_MSS_FIELD_NUMBER:I = 0xb

.field public static final TCPI_SND_SSTHRESH_FIELD_NUMBER:I = 0x1a

.field public static final TCPI_SND_WSCALE_FIELD_NUMBER:I = 0x7

.field public static final TCPI_STATE_FIELD_NUMBER:I = 0x1

.field public static final TCPI_UNACKED_FIELD_NUMBER:I = 0xd

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private tcpiAdvmss_:I

.field private tcpiAto_:I

.field private tcpiBackoff_:I

.field private tcpiCaState_:I

.field private tcpiFackets_:I

.field private tcpiLastAckRecv_:I

.field private tcpiLastAckSent_:I

.field private tcpiLastDataRecv_:I

.field private tcpiLastDataSent_:I

.field private tcpiLost_:I

.field private tcpiOptions_:I

.field private tcpiPmtu_:I

.field private tcpiProbes_:I

.field private tcpiRcvMss_:I

.field private tcpiRcvSsthresh_:I

.field private tcpiRcvWscale_:I

.field private tcpiReordering_:I

.field private tcpiRetrans_:I

.field private tcpiRetransmits_:I

.field private tcpiRto_:I

.field private tcpiRtt_:I

.field private tcpiRttvar_:I

.field private tcpiSacked_:I

.field private tcpiSndCwnd_:I

.field private tcpiSndMss_:I

.field private tcpiSndSsthresh_:I

.field private tcpiSndWscale_:I

.field private tcpiState_:I

.field private tcpiUnacked_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    invoke-direct {v0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;-><init>()V

    sput-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    .line 2
    new-instance v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo$a;

    invoke-direct {v0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo$a;-><init>()V

    sput-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->memoizedIsInitialized:B

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
    iput-byte p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/channelz/v1/SocketOptionTcpInfo$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;-><init>()V

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    goto/16 :goto_2

    .line 12
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiReordering_:I

    goto :goto_0

    .line 13
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiAdvmss_:I

    goto :goto_0

    .line 14
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndCwnd_:I

    goto :goto_0

    .line 15
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndSsthresh_:I

    goto :goto_0

    .line 16
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRttvar_:I

    goto :goto_0

    .line 17
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRtt_:I

    goto :goto_0

    .line 18
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRcvSsthresh_:I

    goto :goto_0

    .line 19
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiPmtu_:I

    goto :goto_0

    .line 20
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastAckRecv_:I

    goto :goto_0

    .line 21
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastDataRecv_:I

    goto :goto_0

    .line 22
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastAckSent_:I

    goto :goto_0

    .line 23
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastDataSent_:I

    goto :goto_0

    .line 24
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiFackets_:I

    goto :goto_0

    .line 25
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRetrans_:I

    goto :goto_0

    .line 26
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLost_:I

    goto :goto_0

    .line 27
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSacked_:I

    goto :goto_0

    .line 28
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiUnacked_:I

    goto/16 :goto_0

    .line 29
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRcvMss_:I

    goto/16 :goto_0

    .line 30
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndMss_:I

    goto/16 :goto_0

    .line 31
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiAto_:I

    goto/16 :goto_0

    .line 32
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRto_:I

    goto/16 :goto_0

    .line 33
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRcvWscale_:I

    goto/16 :goto_0

    .line 34
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndWscale_:I

    goto/16 :goto_0

    .line 35
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiOptions_:I

    goto/16 :goto_0

    .line 36
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiBackoff_:I

    goto/16 :goto_0

    .line 37
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiProbes_:I

    goto/16 :goto_0

    .line 38
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRetransmits_:I

    goto/16 :goto_0

    .line 39
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiCaState_:I

    goto/16 :goto_0

    .line 40
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiState_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_1d
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

    .line 44
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 45
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 46
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 47
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1d
        0x8 -> :sswitch_1c
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_1a
        0x20 -> :sswitch_19
        0x28 -> :sswitch_18
        0x30 -> :sswitch_17
        0x38 -> :sswitch_16
        0x40 -> :sswitch_15
        0x48 -> :sswitch_14
        0x50 -> :sswitch_13
        0x58 -> :sswitch_12
        0x60 -> :sswitch_11
        0x68 -> :sswitch_10
        0x70 -> :sswitch_f
        0x78 -> :sswitch_e
        0x80 -> :sswitch_d
        0x88 -> :sswitch_c
        0x90 -> :sswitch_b
        0x98 -> :sswitch_a
        0xa0 -> :sswitch_9
        0xa8 -> :sswitch_8
        0xb0 -> :sswitch_7
        0xb8 -> :sswitch_6
        0xc0 -> :sswitch_5
        0xc8 -> :sswitch_4
        0xd0 -> :sswitch_3
        0xd8 -> :sswitch_2
        0xe0 -> :sswitch_1
        0xe8 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/channelz/v1/SocketOptionTcpInfo$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndWscale_:I

    return p1
.end method

.method static synthetic access$1102(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRcvWscale_:I

    return p1
.end method

.method static synthetic access$1202(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRto_:I

    return p1
.end method

.method static synthetic access$1302(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiAto_:I

    return p1
.end method

.method static synthetic access$1402(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndMss_:I

    return p1
.end method

.method static synthetic access$1502(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRcvMss_:I

    return p1
.end method

.method static synthetic access$1602(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiUnacked_:I

    return p1
.end method

.method static synthetic access$1702(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSacked_:I

    return p1
.end method

.method static synthetic access$1802(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLost_:I

    return p1
.end method

.method static synthetic access$1902(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRetrans_:I

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2002(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiFackets_:I

    return p1
.end method

.method static synthetic access$2102(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastDataSent_:I

    return p1
.end method

.method static synthetic access$2202(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastAckSent_:I

    return p1
.end method

.method static synthetic access$2302(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastDataRecv_:I

    return p1
.end method

.method static synthetic access$2402(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastAckRecv_:I

    return p1
.end method

.method static synthetic access$2502(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiPmtu_:I

    return p1
.end method

.method static synthetic access$2602(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRcvSsthresh_:I

    return p1
.end method

.method static synthetic access$2702(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRtt_:I

    return p1
.end method

.method static synthetic access$2802(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRttvar_:I

    return p1
.end method

.method static synthetic access$2902(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndSsthresh_:I

    return p1
.end method

.method static synthetic access$3002(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndCwnd_:I

    return p1
.end method

.method static synthetic access$3102(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiAdvmss_:I

    return p1
.end method

.method static synthetic access$3202(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiReordering_:I

    return p1
.end method

.method static synthetic access$3300(Lio/grpc/channelz/v1/SocketOptionTcpInfo;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$3400()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$402(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiState_:I

    return p1
.end method

.method static synthetic access$502(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiCaState_:I

    return p1
.end method

.method static synthetic access$602(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRetransmits_:I

    return p1
.end method

.method static synthetic access$702(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiProbes_:I

    return p1
.end method

.method static synthetic access$802(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiBackoff_:I

    return p1
.end method

.method static synthetic access$902(Lio/grpc/channelz/v1/SocketOptionTcpInfo;I)I
    .locals 0

    iput p1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiOptions_:I

    return p1
.end method

.method public static getDefaultInstance()Lio/grpc/channelz/v1/SocketOptionTcpInfo;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/h;->W:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    invoke-virtual {v0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->toBuilder()Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/channelz/v1/SocketOptionTcpInfo;)Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    invoke-virtual {v0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->toBuilder()Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;->g0(Lio/grpc/channelz/v1/SocketOptionTcpInfo;)Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/channelz/v1/SocketOptionTcpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketOptionTcpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/channelz/v1/SocketOptionTcpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketOptionTcpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/channelz/v1/SocketOptionTcpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketOptionTcpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/channelz/v1/SocketOptionTcpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketOptionTcpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/channelz/v1/SocketOptionTcpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketOptionTcpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/channelz/v1/SocketOptionTcpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/channelz/v1/SocketOptionTcpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/SocketOptionTcpInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    .line 4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiState()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiState()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiCaState()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiCaState()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRetransmits()I

    move-result v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRetransmits()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiProbes()I

    move-result v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiProbes()I

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiBackoff()I

    move-result v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiBackoff()I

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiOptions()I

    move-result v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiOptions()I

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiSndWscale()I

    move-result v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiSndWscale()I

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 18
    :cond_8
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRcvWscale()I

    move-result v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRcvWscale()I

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRto()I

    move-result v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRto()I

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 22
    :cond_a
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiAto()I

    move-result v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiAto()I

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    .line 24
    :cond_b
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiSndMss()I

    move-result v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiSndMss()I

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 26
    :cond_c
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRcvMss()I

    move-result v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRcvMss()I

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 28
    :cond_d
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiUnacked()I

    move-result v1

    .line 29
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiUnacked()I

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 30
    :cond_e
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiSacked()I

    move-result v1

    .line 31
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiSacked()I

    move-result v2

    if-eq v1, v2, :cond_f

    return v3

    .line 32
    :cond_f
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiLost()I

    move-result v1

    .line 33
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiLost()I

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 34
    :cond_10
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRetrans()I

    move-result v1

    .line 35
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRetrans()I

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    .line 36
    :cond_11
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiFackets()I

    move-result v1

    .line 37
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiFackets()I

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    .line 38
    :cond_12
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiLastDataSent()I

    move-result v1

    .line 39
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiLastDataSent()I

    move-result v2

    if-eq v1, v2, :cond_13

    return v3

    .line 40
    :cond_13
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiLastAckSent()I

    move-result v1

    .line 41
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiLastAckSent()I

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    .line 42
    :cond_14
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiLastDataRecv()I

    move-result v1

    .line 43
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiLastDataRecv()I

    move-result v2

    if-eq v1, v2, :cond_15

    return v3

    .line 44
    :cond_15
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiLastAckRecv()I

    move-result v1

    .line 45
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiLastAckRecv()I

    move-result v2

    if-eq v1, v2, :cond_16

    return v3

    .line 46
    :cond_16
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiPmtu()I

    move-result v1

    .line 47
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiPmtu()I

    move-result v2

    if-eq v1, v2, :cond_17

    return v3

    .line 48
    :cond_17
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRcvSsthresh()I

    move-result v1

    .line 49
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRcvSsthresh()I

    move-result v2

    if-eq v1, v2, :cond_18

    return v3

    .line 50
    :cond_18
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRtt()I

    move-result v1

    .line 51
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRtt()I

    move-result v2

    if-eq v1, v2, :cond_19

    return v3

    .line 52
    :cond_19
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRttvar()I

    move-result v1

    .line 53
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRttvar()I

    move-result v2

    if-eq v1, v2, :cond_1a

    return v3

    .line 54
    :cond_1a
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiSndSsthresh()I

    move-result v1

    .line 55
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiSndSsthresh()I

    move-result v2

    if-eq v1, v2, :cond_1b

    return v3

    .line 56
    :cond_1b
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiSndCwnd()I

    move-result v1

    .line 57
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiSndCwnd()I

    move-result v2

    if-eq v1, v2, :cond_1c

    return v3

    .line 58
    :cond_1c
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiAdvmss()I

    move-result v1

    .line 59
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiAdvmss()I

    move-result v2

    if-eq v1, v2, :cond_1d

    return v3

    .line 60
    :cond_1d
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiReordering()I

    move-result v1

    .line 61
    invoke-virtual {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiReordering()I

    move-result v2

    if-eq v1, v2, :cond_1e

    return v3

    .line 62
    :cond_1e
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    return v3

    :cond_1f
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getDefaultInstanceForType()Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getDefaultInstanceForType()Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/channelz/v1/SocketOptionTcpInfo;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/channelz/v1/SocketOptionTcpInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->PARSER:Lcom/google/protobuf/e2;

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
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiState_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiCaState_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 5
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRetransmits_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiProbes_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 9
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiBackoff_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 11
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiOptions_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 13
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndWscale_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRcvWscale_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 17
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_8
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRto_:I

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 19
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_9
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiAto_:I

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 21
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_a
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndMss_:I

    if-eqz v1, :cond_b

    const/16 v2, 0xb

    .line 23
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_b
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRcvMss_:I

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 25
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_c
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiUnacked_:I

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 27
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_d
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSacked_:I

    if-eqz v1, :cond_e

    const/16 v2, 0xe

    .line 29
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_e
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLost_:I

    if-eqz v1, :cond_f

    const/16 v2, 0xf

    .line 31
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_f
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRetrans_:I

    if-eqz v1, :cond_10

    const/16 v2, 0x10

    .line 33
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_10
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiFackets_:I

    if-eqz v1, :cond_11

    const/16 v2, 0x11

    .line 35
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_11
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastDataSent_:I

    if-eqz v1, :cond_12

    const/16 v2, 0x12

    .line 37
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_12
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastAckSent_:I

    if-eqz v1, :cond_13

    const/16 v2, 0x13

    .line 39
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_13
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastDataRecv_:I

    if-eqz v1, :cond_14

    const/16 v2, 0x14

    .line 41
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_14
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastAckRecv_:I

    if-eqz v1, :cond_15

    const/16 v2, 0x15

    .line 43
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_15
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiPmtu_:I

    if-eqz v1, :cond_16

    const/16 v2, 0x16

    .line 45
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_16
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRcvSsthresh_:I

    if-eqz v1, :cond_17

    const/16 v2, 0x17

    .line 47
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    :cond_17
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRtt_:I

    if-eqz v1, :cond_18

    const/16 v2, 0x18

    .line 49
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_18
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRttvar_:I

    if-eqz v1, :cond_19

    const/16 v2, 0x19

    .line 51
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_19
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndSsthresh_:I

    if-eqz v1, :cond_1a

    const/16 v2, 0x1a

    .line 53
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_1a
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndCwnd_:I

    if-eqz v1, :cond_1b

    const/16 v2, 0x1b

    .line 55
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    :cond_1b
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiAdvmss_:I

    if-eqz v1, :cond_1c

    const/16 v2, 0x1c

    .line 57
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_1c
    iget v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiReordering_:I

    if-eqz v1, :cond_1d

    const/16 v2, 0x1d

    .line 59
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_1d
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTcpiAdvmss()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiAdvmss_:I

    return v0
.end method

.method public getTcpiAto()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiAto_:I

    return v0
.end method

.method public getTcpiBackoff()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiBackoff_:I

    return v0
.end method

.method public getTcpiCaState()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiCaState_:I

    return v0
.end method

.method public getTcpiFackets()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiFackets_:I

    return v0
.end method

.method public getTcpiLastAckRecv()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastAckRecv_:I

    return v0
.end method

.method public getTcpiLastAckSent()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastAckSent_:I

    return v0
.end method

.method public getTcpiLastDataRecv()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastDataRecv_:I

    return v0
.end method

.method public getTcpiLastDataSent()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastDataSent_:I

    return v0
.end method

.method public getTcpiLost()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLost_:I

    return v0
.end method

.method public getTcpiOptions()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiOptions_:I

    return v0
.end method

.method public getTcpiPmtu()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiPmtu_:I

    return v0
.end method

.method public getTcpiProbes()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiProbes_:I

    return v0
.end method

.method public getTcpiRcvMss()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRcvMss_:I

    return v0
.end method

.method public getTcpiRcvSsthresh()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRcvSsthresh_:I

    return v0
.end method

.method public getTcpiRcvWscale()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRcvWscale_:I

    return v0
.end method

.method public getTcpiReordering()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiReordering_:I

    return v0
.end method

.method public getTcpiRetrans()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRetrans_:I

    return v0
.end method

.method public getTcpiRetransmits()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRetransmits_:I

    return v0
.end method

.method public getTcpiRto()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRto_:I

    return v0
.end method

.method public getTcpiRtt()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRtt_:I

    return v0
.end method

.method public getTcpiRttvar()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRttvar_:I

    return v0
.end method

.method public getTcpiSacked()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSacked_:I

    return v0
.end method

.method public getTcpiSndCwnd()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndCwnd_:I

    return v0
.end method

.method public getTcpiSndMss()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndMss_:I

    return v0
.end method

.method public getTcpiSndSsthresh()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndSsthresh_:I

    return v0
.end method

.method public getTcpiSndWscale()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndWscale_:I

    return v0
.end method

.method public getTcpiState()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiState_:I

    return v0
.end method

.method public getTcpiUnacked()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiUnacked_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
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
    invoke-static {}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiState()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiCaState()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRetransmits()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiProbes()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiBackoff()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiOptions()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiSndWscale()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRcvWscale()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRto()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiAto()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiSndMss()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRcvMss()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiUnacked()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiSacked()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiLost()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRetrans()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiFackets()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiLastDataSent()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiLastAckSent()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 22
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiLastDataRecv()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 23
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiLastAckRecv()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiPmtu()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 25
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRcvSsthresh()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x35

    .line 26
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRtt()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x19

    mul-int/lit8 v0, v0, 0x35

    .line 27
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiRttvar()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1a

    mul-int/lit8 v0, v0, 0x35

    .line 28
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiSndSsthresh()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1b

    mul-int/lit8 v0, v0, 0x35

    .line 29
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiSndCwnd()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1c

    mul-int/lit8 v0, v0, 0x35

    .line 30
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiAdvmss()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1d

    mul-int/lit8 v0, v0, 0x35

    .line 31
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->getTcpiReordering()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 32
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/channelz/v1/h;->X:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    const-class v2, Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->newBuilderForType()Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->newBuilderForType()Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->newBuilder()Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/channelz/v1/SocketOptionTcpInfo$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    invoke-direct {p1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->toBuilder()Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->toBuilder()Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->DEFAULT_INSTANCE:Lio/grpc/channelz/v1/SocketOptionTcpInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;

    invoke-direct {v0, v1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;-><init>(Lio/grpc/channelz/v1/SocketOptionTcpInfo$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;

    invoke-direct {v0, v1}, Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;-><init>(Lio/grpc/channelz/v1/SocketOptionTcpInfo$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;->g0(Lio/grpc/channelz/v1/SocketOptionTcpInfo;)Lio/grpc/channelz/v1/SocketOptionTcpInfo$b;

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
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiState_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiCaState_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRetransmits_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiProbes_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiBackoff_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiOptions_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 13
    :cond_5
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndWscale_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 15
    :cond_6
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRcvWscale_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 17
    :cond_7
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRto_:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 19
    :cond_8
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiAto_:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 21
    :cond_9
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndMss_:I

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 23
    :cond_a
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRcvMss_:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 25
    :cond_b
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiUnacked_:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 27
    :cond_c
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSacked_:I

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 29
    :cond_d
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLost_:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 31
    :cond_e
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRetrans_:I

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 32
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 33
    :cond_f
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiFackets_:I

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 35
    :cond_10
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastDataSent_:I

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 37
    :cond_11
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastAckSent_:I

    if-eqz v0, :cond_12

    const/16 v1, 0x13

    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 39
    :cond_12
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastDataRecv_:I

    if-eqz v0, :cond_13

    const/16 v1, 0x14

    .line 40
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 41
    :cond_13
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiLastAckRecv_:I

    if-eqz v0, :cond_14

    const/16 v1, 0x15

    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 43
    :cond_14
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiPmtu_:I

    if-eqz v0, :cond_15

    const/16 v1, 0x16

    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 45
    :cond_15
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRcvSsthresh_:I

    if-eqz v0, :cond_16

    const/16 v1, 0x17

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 47
    :cond_16
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRtt_:I

    if-eqz v0, :cond_17

    const/16 v1, 0x18

    .line 48
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 49
    :cond_17
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiRttvar_:I

    if-eqz v0, :cond_18

    const/16 v1, 0x19

    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 51
    :cond_18
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndSsthresh_:I

    if-eqz v0, :cond_19

    const/16 v1, 0x1a

    .line 52
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 53
    :cond_19
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiSndCwnd_:I

    if-eqz v0, :cond_1a

    const/16 v1, 0x1b

    .line 54
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 55
    :cond_1a
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiAdvmss_:I

    if-eqz v0, :cond_1b

    const/16 v1, 0x1c

    .line 56
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 57
    :cond_1b
    iget v0, p0, Lio/grpc/channelz/v1/SocketOptionTcpInfo;->tcpiReordering_:I

    if-eqz v0, :cond_1c

    const/16 v1, 0x1d

    .line 58
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 59
    :cond_1c
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
