.class public final Lcom/google/logging/type/HttpRequest;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/logging/type/HttpRequest$b;
    }
.end annotation


# static fields
.field public static final CACHE_FILL_BYTES_FIELD_NUMBER:I = 0xc

.field public static final CACHE_HIT_FIELD_NUMBER:I = 0x9

.field public static final CACHE_LOOKUP_FIELD_NUMBER:I = 0xb

.field public static final CACHE_VALIDATED_WITH_ORIGIN_SERVER_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

.field public static final LATENCY_FIELD_NUMBER:I = 0xe

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/logging/type/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_FIELD_NUMBER:I = 0xf

.field public static final REFERER_FIELD_NUMBER:I = 0x8

.field public static final REMOTE_IP_FIELD_NUMBER:I = 0x7

.field public static final REQUEST_METHOD_FIELD_NUMBER:I = 0x1

.field public static final REQUEST_SIZE_FIELD_NUMBER:I = 0x3

.field public static final REQUEST_URL_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_SIZE_FIELD_NUMBER:I = 0x5

.field public static final SERVER_IP_FIELD_NUMBER:I = 0xd

.field public static final STATUS_FIELD_NUMBER:I = 0x4

.field public static final USER_AGENT_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private cacheFillBytes_:J

.field private cacheHit_:Z

.field private cacheLookup_:Z

.field private cacheValidatedWithOriginServer_:Z

.field private latency_:Lcom/google/protobuf/Duration;

.field private memoizedIsInitialized:B

.field private volatile protocol_:Ljava/lang/Object;

.field private volatile referer_:Ljava/lang/Object;

.field private volatile remoteIp_:Ljava/lang/Object;

.field private volatile requestMethod_:Ljava/lang/Object;

.field private requestSize_:J

.field private volatile requestUrl_:Ljava/lang/Object;

.field private responseSize_:J

.field private volatile serverIp_:Ljava/lang/Object;

.field private status_:I

.field private volatile userAgent_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/logging/type/HttpRequest;

    invoke-direct {v0}, Lcom/google/logging/type/HttpRequest;-><init>()V

    sput-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    .line 2
    new-instance v0, Lcom/google/logging/type/HttpRequest$a;

    invoke-direct {v0}, Lcom/google/logging/type/HttpRequest$a;-><init>()V

    sput-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/logging/type/HttpRequest;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lcom/google/logging/type/HttpRequest;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/logging/type/HttpRequest$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/logging/type/HttpRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/google/logging/type/HttpRequest;-><init>()V

    .line 15
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 18
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    goto/16 :goto_2

    .line 19
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 20
    iput-object v2, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x0

    .line 21
    iget-object v3, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    if-eqz v3, :cond_1

    .line 22
    invoke-virtual {v3}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v2

    .line 23
    :cond_1
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Duration;

    iput-object v3, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {v2, v3}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 25
    invoke-virtual {v2}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 26
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 27
    iput-object v2, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/Object;

    goto :goto_0

    .line 28
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/logging/type/HttpRequest;->cacheFillBytes_:J

    goto :goto_0

    .line 29
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/logging/type/HttpRequest;->cacheLookup_:Z

    goto :goto_0

    .line 30
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/logging/type/HttpRequest;->cacheValidatedWithOriginServer_:Z

    goto :goto_0

    .line 31
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/logging/type/HttpRequest;->cacheHit_:Z

    goto :goto_0

    .line 32
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 33
    iput-object v2, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/Object;

    goto :goto_0

    .line 34
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 35
    iput-object v2, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/Object;

    goto :goto_0

    .line 36
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 37
    iput-object v2, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/Object;

    goto :goto_0

    .line 38
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/logging/type/HttpRequest;->responseSize_:J

    goto :goto_0

    .line 39
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->z()I

    move-result v2

    iput v2, p0, Lcom/google/logging/type/HttpRequest;->status_:I

    goto :goto_0

    .line 40
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/logging/type/HttpRequest;->requestSize_:J

    goto/16 :goto_0

    .line 41
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 42
    iput-object v2, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 43
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 44
    iput-object v2, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_f
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

    .line 45
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 46
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 48
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 51
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_e
        0x12 -> :sswitch_d
        0x18 -> :sswitch_c
        0x20 -> :sswitch_b
        0x28 -> :sswitch_a
        0x32 -> :sswitch_9
        0x3a -> :sswitch_8
        0x42 -> :sswitch_7
        0x48 -> :sswitch_6
        0x50 -> :sswitch_5
        0x58 -> :sswitch_4
        0x60 -> :sswitch_3
        0x6a -> :sswitch_2
        0x72 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/logging/type/HttpRequest$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/logging/type/HttpRequest;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/logging/type/HttpRequest;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/google/logging/type/HttpRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/logging/type/HttpRequest;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/google/logging/type/HttpRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/logging/type/HttpRequest;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/google/logging/type/HttpRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/logging/type/HttpRequest;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/logging/type/HttpRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/logging/type/HttpRequest;->cacheLookup_:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/google/logging/type/HttpRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/logging/type/HttpRequest;->cacheHit_:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/google/logging/type/HttpRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/logging/type/HttpRequest;->cacheValidatedWithOriginServer_:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/google/logging/type/HttpRequest;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/logging/type/HttpRequest;->cacheFillBytes_:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/google/logging/type/HttpRequest;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/google/logging/type/HttpRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/logging/type/HttpRequest;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/logging/type/HttpRequest;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/logging/type/HttpRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/logging/type/HttpRequest;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/google/logging/type/HttpRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/logging/type/HttpRequest;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/logging/type/HttpRequest;->requestSize_:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/google/logging/type/HttpRequest;I)I
    .locals 0

    iput p1, p0, Lcom/google/logging/type/HttpRequest;->status_:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/logging/type/HttpRequest;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/logging/type/HttpRequest;->responseSize_:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/google/logging/type/HttpRequest;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lcom/google/logging/type/HttpRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/logging/type/HttpRequest;
    .locals 1

    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/logging/type/a;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/logging/type/HttpRequest$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->toBuilder()Lcom/google/logging/type/HttpRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/logging/type/HttpRequest;)Lcom/google/logging/type/HttpRequest$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    invoke-virtual {v0}, Lcom/google/logging/type/HttpRequest;->toBuilder()Lcom/google/logging/type/HttpRequest$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/logging/type/HttpRequest$b;->d0(Lcom/google/logging/type/HttpRequest;)Lcom/google/logging/type/HttpRequest$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/logging/type/HttpRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/logging/type/HttpRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/logging/type/HttpRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/logging/type/HttpRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/logging/type/HttpRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/logging/type/HttpRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/logging/type/HttpRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/logging/type/HttpRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/logging/type/HttpRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/logging/type/HttpRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/logging/type/HttpRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/logging/type/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/logging/type/HttpRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/logging/type/HttpRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/logging/type/HttpRequest;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/logging/type/HttpRequest;

    .line 4
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getRequestSize()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getRequestSize()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getStatus()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getResponseSize()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getResponseSize()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 10
    :cond_7
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getRemoteIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getRemoteIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 11
    :cond_8
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getServerIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getServerIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getReferer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getReferer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 13
    :cond_a
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->hasLatency()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->hasLatency()Z

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    .line 14
    :cond_b
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->hasLatency()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 15
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getLatency()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getLatency()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getCacheLookup()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getCacheLookup()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getCacheHit()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getCacheHit()Z

    move-result v3

    if-eq v1, v3, :cond_e

    return v2

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getCacheValidatedWithOriginServer()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getCacheValidatedWithOriginServer()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 19
    :cond_f
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getCacheFillBytes()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getCacheFillBytes()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    return v2

    .line 20
    :cond_10
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/logging/type/HttpRequest;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 21
    :cond_11
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public getCacheFillBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/google/logging/type/HttpRequest;->cacheFillBytes_:J

    return-wide v0
.end method

.method public getCacheHit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheHit_:Z

    return v0
.end method

.method public getCacheLookup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheLookup_:Z

    return v0
.end method

.method public getCacheValidatedWithOriginServer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheValidatedWithOriginServer_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/logging/type/HttpRequest;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getDefaultInstanceForType()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getDefaultInstanceForType()Lcom/google/logging/type/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public getLatency()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLatencyOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getLatency()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/logging/type/HttpRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/logging/type/HttpRequest;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/Object;

    return-object v0
.end method

.method public getProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getReferer()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRefererBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRemoteIp()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRemoteIpBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequestMethodBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRequestSize()J
    .locals 2

    iget-wide v0, p0, Lcom/google/logging/type/HttpRequest;->requestSize_:J

    return-wide v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequestUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getResponseSize()J
    .locals 2

    iget-wide v0, p0, Lcom/google/logging/type/HttpRequest;->responseSize_:J

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
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-wide v1, p0, Lcom/google/logging/type/HttpRequest;->requestSize_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    .line 7
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget v1, p0, Lcom/google/logging/type/HttpRequest;->status_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 9
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->x(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-wide v1, p0, Lcom/google/logging/type/HttpRequest;->responseSize_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v5, 0x5

    .line 11
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 13
    iget-object v2, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 15
    iget-object v2, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    .line 17
    iget-object v2, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_8
    iget-boolean v1, p0, Lcom/google/logging/type/HttpRequest;->cacheHit_:Z

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 19
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_9
    iget-boolean v1, p0, Lcom/google/logging/type/HttpRequest;->cacheValidatedWithOriginServer_:Z

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 21
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_a
    iget-boolean v1, p0, Lcom/google/logging/type/HttpRequest;->cacheLookup_:Z

    if-eqz v1, :cond_b

    const/16 v2, 0xb

    .line 23
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_b
    iget-wide v1, p0, Lcom/google/logging/type/HttpRequest;->cacheFillBytes_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    const/16 v3, 0xc

    .line 25
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_c
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xd

    .line 27
    iget-object v2, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_d
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_e

    const/16 v1, 0xe

    .line 29
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getLatency()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_e
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0xf

    .line 31
    iget-object v2, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_f
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getServerIp()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/Object;

    return-object v0
.end method

.method public getServerIpBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/google/logging/type/HttpRequest;->status_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserAgentBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasLatency()Z
    .locals 1

    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

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
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getRequestSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getStatus()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getResponseSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getRemoteIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getServerIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getReferer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->hasLatency()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getLatency()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getCacheLookup()Z

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getCacheHit()Z

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getCacheValidatedWithOriginServer()Z

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getCacheFillBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 19
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/logging/type/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/logging/type/HttpRequest;

    const-class v2, Lcom/google/logging/type/HttpRequest$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/logging/type/HttpRequest;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/logging/type/HttpRequest;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/logging/type/HttpRequest$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/logging/type/HttpRequest;->newBuilder()Lcom/google/logging/type/HttpRequest$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/logging/type/HttpRequest$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/logging/type/HttpRequest$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/logging/type/HttpRequest$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/logging/type/HttpRequest$a;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->newBuilderForType()Lcom/google/logging/type/HttpRequest$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/logging/type/HttpRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/logging/type/HttpRequest$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->newBuilderForType()Lcom/google/logging/type/HttpRequest$b;

    move-result-object v0

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/logging/type/HttpRequest;

    invoke-direct {p1}, Lcom/google/logging/type/HttpRequest;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/google/logging/type/HttpRequest$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/logging/type/HttpRequest;->DEFAULT_INSTANCE:Lcom/google/logging/type/HttpRequest;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/logging/type/HttpRequest$b;

    invoke-direct {v0, v1}, Lcom/google/logging/type/HttpRequest$b;-><init>(Lcom/google/logging/type/HttpRequest$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/logging/type/HttpRequest$b;

    invoke-direct {v0, v1}, Lcom/google/logging/type/HttpRequest$b;-><init>(Lcom/google/logging/type/HttpRequest$a;)V

    invoke-virtual {v0, p0}, Lcom/google/logging/type/HttpRequest$b;->d0(Lcom/google/logging/type/HttpRequest;)Lcom/google/logging/type/HttpRequest$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->toBuilder()Lcom/google/logging/type/HttpRequest$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->toBuilder()Lcom/google/logging/type/HttpRequest$b;

    move-result-object v0

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
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest;->requestMethod_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest;->requestUrl_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/google/logging/type/HttpRequest;->requestSize_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    .line 6
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 7
    :cond_2
    iget v0, p0, Lcom/google/logging/type/HttpRequest;->status_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->H0(II)V

    .line 9
    :cond_3
    iget-wide v0, p0, Lcom/google/logging/type/HttpRequest;->responseSize_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 10
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 12
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest;->userAgent_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 14
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest;->remoteIp_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 16
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest;->referer_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 17
    :cond_7
    iget-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheHit_:Z

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 19
    :cond_8
    iget-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheValidatedWithOriginServer_:Z

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 21
    :cond_9
    iget-boolean v0, p0, Lcom/google/logging/type/HttpRequest;->cacheLookup_:Z

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 23
    :cond_a
    iget-wide v0, p0, Lcom/google/logging/type/HttpRequest;->cacheFillBytes_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    const/16 v2, 0xc

    .line 24
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 25
    :cond_b
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xd

    .line 26
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest;->serverIp_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 27
    :cond_c
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->latency_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    .line 28
    invoke-virtual {p0}, Lcom/google/logging/type/HttpRequest;->getLatency()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 29
    :cond_d
    iget-object v0, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0xf

    .line 30
    iget-object v1, p0, Lcom/google/logging/type/HttpRequest;->protocol_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 31
    :cond_e
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
