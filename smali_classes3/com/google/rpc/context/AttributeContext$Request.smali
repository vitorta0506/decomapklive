.class public final Lcom/google/rpc/context/AttributeContext$Request;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/context/AttributeContext$Request$b;,
        Lcom/google/rpc/context/AttributeContext$Request$c;
    }
.end annotation


# static fields
.field public static final AUTH_FIELD_NUMBER:I = 0xd

.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

.field public static final HEADERS_FIELD_NUMBER:I = 0x3

.field public static final HOST_FIELD_NUMBER:I = 0x5

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final METHOD_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/rpc/context/AttributeContext$Request;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x4

.field public static final PROTOCOL_FIELD_NUMBER:I = 0xb

.field public static final QUERY_FIELD_NUMBER:I = 0x7

.field public static final REASON_FIELD_NUMBER:I = 0xc

.field public static final SCHEME_FIELD_NUMBER:I = 0x6

.field public static final SIZE_FIELD_NUMBER:I = 0xa

.field public static final TIME_FIELD_NUMBER:I = 0x9

.field private static final serialVersionUID:J


# instance fields
.field private auth_:Lcom/google/rpc/context/AttributeContext$Auth;

.field private headers_:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile host_:Ljava/lang/Object;

.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile method_:Ljava/lang/Object;

.field private volatile path_:Ljava/lang/Object;

.field private volatile protocol_:Ljava/lang/Object;

.field private volatile query_:Ljava/lang/Object;

.field private volatile reason_:Ljava/lang/Object;

.field private volatile scheme_:Ljava/lang/Object;

.field private size_:J

.field private time_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-direct {v0}, Lcom/google/rpc/context/AttributeContext$Request;-><init>()V

    sput-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    .line 2
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Request$a;

    invoke-direct {v0}, Lcom/google/rpc/context/AttributeContext$Request$a;-><init>()V

    sput-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/rpc/context/AttributeContext$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;-><init>()V

    .line 16
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 19
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_2

    .line 20
    :sswitch_0
    iget-object v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->auth_:Lcom/google/rpc/context/AttributeContext$Auth;

    if-eqz v3, :cond_1

    .line 21
    invoke-virtual {v3}, Lcom/google/rpc/context/AttributeContext$Auth;->toBuilder()Lcom/google/rpc/context/AttributeContext$Auth$b;

    move-result-object v4

    .line 22
    :cond_1
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Auth;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    .line 23
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/rpc/context/AttributeContext$Auth;

    iput-object v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->auth_:Lcom/google/rpc/context/AttributeContext$Auth;

    if-eqz v4, :cond_0

    .line 24
    invoke-virtual {v4, v3}, Lcom/google/rpc/context/AttributeContext$Auth$b;->j0(Lcom/google/rpc/context/AttributeContext$Auth;)Lcom/google/rpc/context/AttributeContext$Auth$b;

    .line 25
    invoke-virtual {v4}, Lcom/google/rpc/context/AttributeContext$Auth$b;->Y()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v3

    iput-object v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->auth_:Lcom/google/rpc/context/AttributeContext$Auth;

    goto :goto_0

    .line 26
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 27
    iput-object v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/Object;

    goto :goto_0

    .line 28
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 29
    iput-object v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/Object;

    goto :goto_0

    .line 30
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->size_:J

    goto :goto_0

    .line 31
    :sswitch_4
    iget-object v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->time_:Lcom/google/protobuf/Timestamp;

    if-eqz v3, :cond_2

    .line 32
    invoke-virtual {v3}, Lcom/google/protobuf/Timestamp;->toBuilder()Lcom/google/protobuf/Timestamp$b;

    move-result-object v4

    .line 33
    :cond_2
    invoke-static {}, Lcom/google/protobuf/Timestamp;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Timestamp;

    iput-object v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->time_:Lcom/google/protobuf/Timestamp;

    if-eqz v4, :cond_0

    .line 34
    invoke-virtual {v4, v3}, Lcom/google/protobuf/Timestamp$b;->g0(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$b;

    .line 35
    invoke-virtual {v4}, Lcom/google/protobuf/Timestamp$b;->Y()Lcom/google/protobuf/Timestamp;

    move-result-object v3

    iput-object v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->time_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 36
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 37
    iput-object v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/Object;

    goto :goto_0

    .line 38
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 39
    iput-object v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/Object;

    goto :goto_0

    .line 40
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 41
    iput-object v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/Object;

    goto :goto_0

    .line 42
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 43
    iput-object v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_3

    .line 44
    sget-object v3, Lcom/google/rpc/context/AttributeContext$Request$c;->a:Lcom/google/protobuf/e1;

    .line 45
    invoke-static {v3}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v3

    iput-object v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->headers_:Lcom/google/protobuf/g1;

    or-int/lit8 v2, v2, 0x1

    .line 46
    :cond_3
    sget-object v3, Lcom/google/rpc/context/AttributeContext$Request$c;->a:Lcom/google/protobuf/e1;

    .line 47
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->getParserForType()Lcom/google/protobuf/e2;

    move-result-object v3

    .line 48
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/e1;

    .line 49
    iget-object v4, p0, Lcom/google/rpc/context/AttributeContext$Request;->headers_:Lcom/google/protobuf/g1;

    invoke-virtual {v4}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->h()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 50
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 51
    iput-object v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 52
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 53
    iput-object v3, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_c
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

    .line 54
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

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

    .line 56
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 57
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 58
    throw p1

    .line 59
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 60
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0xa -> :sswitch_b
        0x12 -> :sswitch_a
        0x1a -> :sswitch_9
        0x22 -> :sswitch_8
        0x2a -> :sswitch_7
        0x32 -> :sswitch_6
        0x3a -> :sswitch_5
        0x4a -> :sswitch_4
        0x50 -> :sswitch_3
        0x5a -> :sswitch_2
        0x62 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/rpc/context/AttributeContext$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Request;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$4900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5102(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5202(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/protobuf/g1;
    .locals 0

    iget-object p0, p0, Lcom/google/rpc/context/AttributeContext$Request;->headers_:Lcom/google/protobuf/g1;

    return-object p0
.end method

.method static synthetic access$5302(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->headers_:Lcom/google/protobuf/g1;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5402(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5502(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5602(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5702(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->time_:Lcom/google/protobuf/Timestamp;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/google/rpc/context/AttributeContext$Request;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->size_:J

    return-wide p1
.end method

.method static synthetic access$6000(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6002(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6102(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6202(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/rpc/context/AttributeContext$Auth;)Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->auth_:Lcom/google/rpc/context/AttributeContext$Auth;

    return-object p1
.end method

.method static synthetic access$6300(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/protobuf/g1;
    .locals 0

    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6400(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$6500()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1

    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/rpc/context/a;->k:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method private internalGetHeaders()Lcom/google/protobuf/g1;
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
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->headers_:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->toBuilder()Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->toBuilder()Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->j0(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/rpc/context/AttributeContext$Request;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public containsHeaders(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/rpc/context/AttributeContext$Request;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/rpc/context/AttributeContext$Request;

    .line 4
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-direct {p1}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/g1;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/g1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 10
    :cond_7
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 11
    :cond_8
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->hasTime()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->hasTime()Z

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    .line 12
    :cond_9
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->hasTime()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 13
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 14
    :cond_a
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getSize()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getSize()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    .line 15
    :cond_b
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 16
    :cond_c
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 17
    :cond_d
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->hasAuth()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->hasAuth()Z

    move-result v3

    if-eq v1, v3, :cond_e

    return v2

    .line 18
    :cond_e
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->hasAuth()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 19
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getAuth()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request;->getAuth()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/rpc/context/AttributeContext$Auth;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 20
    :cond_f
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public getAuth()Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->auth_:Lcom/google/rpc/context/AttributeContext$Auth;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Auth;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAuthOrBuilder()Lcom/google/rpc/context/AttributeContext$c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getAuth()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getDefaultInstanceForType()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getDefaultInstanceForType()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
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

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersCount()I
    .locals 1

    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersMap()Ljava/util/Map;
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

    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/g1;

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

.method public getHeadersOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/g1;

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

.method public getHost()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/Object;

    return-object v0
.end method

.method public getHostBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMethodBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/Object;

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
            "Lcom/google/rpc/context/AttributeContext$Request;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/Object;

    return-object v0
.end method

.method public getProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/Object;

    return-object v0
.end method

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/Object;

    return-object v0
.end method

.method public getReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSchemeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

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
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/g1;

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

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    sget-object v3, Lcom/google/rpc/context/AttributeContext$Request$c;->a:Lcom/google/protobuf/e1;

    .line 8
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->j()Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v2

    const/4 v3, 0x3

    .line 12
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 14
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 16
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 18
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_6
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 20
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_7
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->time_:Lcom/google/protobuf/Timestamp;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 22
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_8
    iget-wide v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->size_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_9

    const/16 v3, 0xa

    .line 24
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_9
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xb

    .line 26
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_a
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xc

    .line 28
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_b
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->auth_:Lcom/google/rpc/context/AttributeContext$Auth;

    if-eqz v1, :cond_c

    const/16 v1, 0xd

    .line 30
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getAuth()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->size_:J

    return-wide v0
.end method

.method public getTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->time_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimeOrBuilder()Lcom/google/protobuf/z2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasAuth()Z
    .locals 1

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->auth_:Lcom/google/rpc/context/AttributeContext$Auth;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTime()Z
    .locals 1

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->time_:Lcom/google/protobuf/Timestamp;

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
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->hasTime()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->hasAuth()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getAuth()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/rpc/context/AttributeContext$Auth;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 18
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/rpc/context/a;->l:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/rpc/context/AttributeContext$Request;

    const-class v2, Lcom/google/rpc/context/AttributeContext$Request$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetMapField(I)Lcom/google/protobuf/g1;
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/g1;

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
    iget-byte v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->newBuilderForType()Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->newBuilderForType()Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->newBuilder()Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Request$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/rpc/context/AttributeContext$Request$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/rpc/context/AttributeContext$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-direct {p1}, Lcom/google/rpc/context/AttributeContext$Request;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->toBuilder()Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->toBuilder()Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/rpc/context/AttributeContext$Request$b;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/rpc/context/AttributeContext$Request$b;

    invoke-direct {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request$b;-><init>(Lcom/google/rpc/context/AttributeContext$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Request$b;

    invoke-direct {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request$b;-><init>(Lcom/google/rpc/context/AttributeContext$a;)V

    invoke-virtual {v0, p0}, Lcom/google/rpc/context/AttributeContext$Request$b;->j0(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request$b;

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
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/g1;

    move-result-object v0

    sget-object v1, Lcom/google/rpc/context/AttributeContext$Request$c;->a:Lcom/google/protobuf/e1;

    const/4 v2, 0x3

    .line 6
    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/g1;Lcom/google/protobuf/e1;I)V

    .line 7
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    .line 8
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x5

    .line 10
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    .line 12
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x7

    .line 14
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->time_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_6

    const/16 v0, 0x9

    .line 16
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_6
    iget-wide v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->size_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    const/16 v2, 0xa

    .line 18
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0xb

    .line 20
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21
    :cond_8
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xc

    .line 22
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23
    :cond_9
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->auth_:Lcom/google/rpc/context/AttributeContext$Auth;

    if-eqz v0, :cond_a

    const/16 v0, 0xd

    .line 24
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getAuth()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
