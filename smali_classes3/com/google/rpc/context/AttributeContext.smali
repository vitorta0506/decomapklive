.class public final Lcom/google/rpc/context/AttributeContext;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/context/AttributeContext$d;,
        Lcom/google/rpc/context/AttributeContext$Resource;,
        Lcom/google/rpc/context/AttributeContext$g;,
        Lcom/google/rpc/context/AttributeContext$Response;,
        Lcom/google/rpc/context/AttributeContext$h;,
        Lcom/google/rpc/context/AttributeContext$Request;,
        Lcom/google/rpc/context/AttributeContext$f;,
        Lcom/google/rpc/context/AttributeContext$Auth;,
        Lcom/google/rpc/context/AttributeContext$c;,
        Lcom/google/rpc/context/AttributeContext$Api;,
        Lcom/google/rpc/context/AttributeContext$b;,
        Lcom/google/rpc/context/AttributeContext$Peer;,
        Lcom/google/rpc/context/AttributeContext$e;
    }
.end annotation


# static fields
.field public static final API_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext;

.field public static final DESTINATION_FIELD_NUMBER:I = 0x2

.field public static final EXTENSIONS_FIELD_NUMBER:I = 0x8

.field public static final ORIGIN_FIELD_NUMBER:I = 0x7

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/rpc/context/AttributeContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_FIELD_NUMBER:I = 0x3

.field public static final RESOURCE_FIELD_NUMBER:I = 0x5

.field public static final RESPONSE_FIELD_NUMBER:I = 0x4

.field public static final SOURCE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private api_:Lcom/google/rpc/context/AttributeContext$Api;

.field private destination_:Lcom/google/rpc/context/AttributeContext$Peer;

.field private extensions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private origin_:Lcom/google/rpc/context/AttributeContext$Peer;

.field private request_:Lcom/google/rpc/context/AttributeContext$Request;

.field private resource_:Lcom/google/rpc/context/AttributeContext$Resource;

.field private response_:Lcom/google/rpc/context/AttributeContext$Response;

.field private source_:Lcom/google/rpc/context/AttributeContext$Peer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/rpc/context/AttributeContext;

    invoke-direct {v0}, Lcom/google/rpc/context/AttributeContext;-><init>()V

    sput-object v0, Lcom/google/rpc/context/AttributeContext;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext;

    .line 2
    new-instance v0, Lcom/google/rpc/context/AttributeContext$a;

    invoke-direct {v0}, Lcom/google/rpc/context/AttributeContext$a;-><init>()V

    sput-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lcom/google/rpc/context/AttributeContext;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

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
    iput-byte p1, p0, Lcom/google/rpc/context/AttributeContext;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lcom/google/rpc/context/AttributeContext$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext;-><init>()V

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

    if-nez v1, :cond_13

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    if-eqz v4, :cond_11

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v4, v5, :cond_f

    const/16 v5, 0x12

    if-eq v4, v5, :cond_d

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_b

    const/16 v5, 0x22

    if-eq v4, v5, :cond_9

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_7

    const/16 v5, 0x32

    if-eq v4, v5, :cond_5

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x42

    if-eq v4, v5, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_1
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_2

    .line 13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 14
    :cond_2
    iget-object v4, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    .line 15
    invoke-static {}, Lcom/google/protobuf/Any;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    .line 16
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_3
    iget-object v4, p0, Lcom/google/rpc/context/AttributeContext;->origin_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-eqz v4, :cond_4

    .line 18
    invoke-virtual {v4}, Lcom/google/rpc/context/AttributeContext$Peer;->toBuilder()Lcom/google/rpc/context/AttributeContext$Peer$b;

    move-result-object v6

    .line 19
    :cond_4
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Peer;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 20
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/rpc/context/AttributeContext$Peer;

    iput-object v4, p0, Lcom/google/rpc/context/AttributeContext;->origin_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-eqz v6, :cond_0

    .line 21
    invoke-virtual {v6, v4}, Lcom/google/rpc/context/AttributeContext$Peer$b;->i0(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer$b;

    .line 22
    invoke-virtual {v6}, Lcom/google/rpc/context/AttributeContext$Peer$b;->Y()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/rpc/context/AttributeContext;->origin_:Lcom/google/rpc/context/AttributeContext$Peer;

    goto :goto_0

    .line 23
    :cond_5
    iget-object v4, p0, Lcom/google/rpc/context/AttributeContext;->api_:Lcom/google/rpc/context/AttributeContext$Api;

    if-eqz v4, :cond_6

    .line 24
    invoke-virtual {v4}, Lcom/google/rpc/context/AttributeContext$Api;->toBuilder()Lcom/google/rpc/context/AttributeContext$Api$b;

    move-result-object v6

    .line 25
    :cond_6
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Api;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 26
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/rpc/context/AttributeContext$Api;

    iput-object v4, p0, Lcom/google/rpc/context/AttributeContext;->api_:Lcom/google/rpc/context/AttributeContext$Api;

    if-eqz v6, :cond_0

    .line 27
    invoke-virtual {v6, v4}, Lcom/google/rpc/context/AttributeContext$Api$b;->g0(Lcom/google/rpc/context/AttributeContext$Api;)Lcom/google/rpc/context/AttributeContext$Api$b;

    .line 28
    invoke-virtual {v6}, Lcom/google/rpc/context/AttributeContext$Api$b;->Y()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v4

    iput-object v4, p0, Lcom/google/rpc/context/AttributeContext;->api_:Lcom/google/rpc/context/AttributeContext$Api;

    goto/16 :goto_0

    .line 29
    :cond_7
    iget-object v4, p0, Lcom/google/rpc/context/AttributeContext;->resource_:Lcom/google/rpc/context/AttributeContext$Resource;

    if-eqz v4, :cond_8

    .line 30
    invoke-virtual {v4}, Lcom/google/rpc/context/AttributeContext$Resource;->toBuilder()Lcom/google/rpc/context/AttributeContext$Resource$c;

    move-result-object v6

    .line 31
    :cond_8
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Resource;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 32
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/rpc/context/AttributeContext$Resource;

    iput-object v4, p0, Lcom/google/rpc/context/AttributeContext;->resource_:Lcom/google/rpc/context/AttributeContext$Resource;

    if-eqz v6, :cond_0

    .line 33
    invoke-virtual {v6, v4}, Lcom/google/rpc/context/AttributeContext$Resource$c;->m0(Lcom/google/rpc/context/AttributeContext$Resource;)Lcom/google/rpc/context/AttributeContext$Resource$c;

    .line 34
    invoke-virtual {v6}, Lcom/google/rpc/context/AttributeContext$Resource$c;->Y()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v4

    iput-object v4, p0, Lcom/google/rpc/context/AttributeContext;->resource_:Lcom/google/rpc/context/AttributeContext$Resource;

    goto/16 :goto_0

    .line 35
    :cond_9
    iget-object v4, p0, Lcom/google/rpc/context/AttributeContext;->response_:Lcom/google/rpc/context/AttributeContext$Response;

    if-eqz v4, :cond_a

    .line 36
    invoke-virtual {v4}, Lcom/google/rpc/context/AttributeContext$Response;->toBuilder()Lcom/google/rpc/context/AttributeContext$Response$b;

    move-result-object v6

    .line 37
    :cond_a
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Response;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 38
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/rpc/context/AttributeContext$Response;

    iput-object v4, p0, Lcom/google/rpc/context/AttributeContext;->response_:Lcom/google/rpc/context/AttributeContext$Response;

    if-eqz v6, :cond_0

    .line 39
    invoke-virtual {v6, v4}, Lcom/google/rpc/context/AttributeContext$Response$b;->j0(Lcom/google/rpc/context/AttributeContext$Response;)Lcom/google/rpc/context/AttributeContext$Response$b;

    .line 40
    invoke-virtual {v6}, Lcom/google/rpc/context/AttributeContext$Response$b;->Y()Lcom/google/rpc/context/AttributeContext$Response;

    move-result-object v4

    iput-object v4, p0, Lcom/google/rpc/context/AttributeContext;->response_:Lcom/google/rpc/context/AttributeContext$Response;

    goto/16 :goto_0

    .line 41
    :cond_b
    iget-object v4, p0, Lcom/google/rpc/context/AttributeContext;->request_:Lcom/google/rpc/context/AttributeContext$Request;

    if-eqz v4, :cond_c

    .line 42
    invoke-virtual {v4}, Lcom/google/rpc/context/AttributeContext$Request;->toBuilder()Lcom/google/rpc/context/AttributeContext$Request$b;

    move-result-object v6

    .line 43
    :cond_c
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 44
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/rpc/context/AttributeContext$Request;

    iput-object v4, p0, Lcom/google/rpc/context/AttributeContext;->request_:Lcom/google/rpc/context/AttributeContext$Request;

    if-eqz v6, :cond_0

    .line 45
    invoke-virtual {v6, v4}, Lcom/google/rpc/context/AttributeContext$Request$b;->j0(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request$b;

    .line 46
    invoke-virtual {v6}, Lcom/google/rpc/context/AttributeContext$Request$b;->Y()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v4

    iput-object v4, p0, Lcom/google/rpc/context/AttributeContext;->request_:Lcom/google/rpc/context/AttributeContext$Request;

    goto/16 :goto_0

    .line 47
    :cond_d
    iget-object v4, p0, Lcom/google/rpc/context/AttributeContext;->destination_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-eqz v4, :cond_e

    .line 48
    invoke-virtual {v4}, Lcom/google/rpc/context/AttributeContext$Peer;->toBuilder()Lcom/google/rpc/context/AttributeContext$Peer$b;

    move-result-object v6

    .line 49
    :cond_e
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Peer;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 50
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/rpc/context/AttributeContext$Peer;

    iput-object v4, p0, Lcom/google/rpc/context/AttributeContext;->destination_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-eqz v6, :cond_0

    .line 51
    invoke-virtual {v6, v4}, Lcom/google/rpc/context/AttributeContext$Peer$b;->i0(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer$b;

    .line 52
    invoke-virtual {v6}, Lcom/google/rpc/context/AttributeContext$Peer$b;->Y()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/rpc/context/AttributeContext;->destination_:Lcom/google/rpc/context/AttributeContext$Peer;

    goto/16 :goto_0

    .line 53
    :cond_f
    iget-object v4, p0, Lcom/google/rpc/context/AttributeContext;->source_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-eqz v4, :cond_10

    .line 54
    invoke-virtual {v4}, Lcom/google/rpc/context/AttributeContext$Peer;->toBuilder()Lcom/google/rpc/context/AttributeContext$Peer$b;

    move-result-object v6

    .line 55
    :cond_10
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Peer;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 56
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/rpc/context/AttributeContext$Peer;

    iput-object v4, p0, Lcom/google/rpc/context/AttributeContext;->source_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-eqz v6, :cond_0

    .line 57
    invoke-virtual {v6, v4}, Lcom/google/rpc/context/AttributeContext$Peer$b;->i0(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer$b;

    .line 58
    invoke-virtual {v6}, Lcom/google/rpc/context/AttributeContext$Peer$b;->Y()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/rpc/context/AttributeContext;->source_:Lcom/google/rpc/context/AttributeContext$Peer;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_11
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 59
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 60
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_12

    .line 61
    iget-object p2, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    .line 62
    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 63
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 64
    throw p1

    :cond_13
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_14

    .line 65
    iget-object p1, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    .line 66
    :cond_14
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 67
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/rpc/context/AttributeContext$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$11800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$12002(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext;->origin_:Lcom/google/rpc/context/AttributeContext$Peer;

    return-object p1
.end method

.method static synthetic access$12102(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext;->source_:Lcom/google/rpc/context/AttributeContext$Peer;

    return-object p1
.end method

.method static synthetic access$12202(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext;->destination_:Lcom/google/rpc/context/AttributeContext$Peer;

    return-object p1
.end method

.method static synthetic access$12302(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext;->request_:Lcom/google/rpc/context/AttributeContext$Request;

    return-object p1
.end method

.method static synthetic access$12402(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Response;)Lcom/google/rpc/context/AttributeContext$Response;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext;->response_:Lcom/google/rpc/context/AttributeContext$Response;

    return-object p1
.end method

.method static synthetic access$12502(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Resource;)Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext;->resource_:Lcom/google/rpc/context/AttributeContext$Resource;

    return-object p1
.end method

.method static synthetic access$12602(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Api;)Lcom/google/rpc/context/AttributeContext$Api;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext;->api_:Lcom/google/rpc/context/AttributeContext$Api;

    return-object p1
.end method

.method static synthetic access$12700(Lcom/google/rpc/context/AttributeContext;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$12702(Lcom/google/rpc/context/AttributeContext;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$12900(Lcom/google/rpc/context/AttributeContext;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$13000()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/rpc/context/AttributeContext;
    .locals 1

    sget-object v0, Lcom/google/rpc/context/AttributeContext;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/rpc/context/a;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/context/AttributeContext$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->toBuilder()Lcom/google/rpc/context/AttributeContext$d;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/context/AttributeContext;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->toBuilder()Lcom/google/rpc/context/AttributeContext$d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/rpc/context/AttributeContext$d;->k0(Lcom/google/rpc/context/AttributeContext;)Lcom/google/rpc/context/AttributeContext$d;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lcom/google/rpc/context/AttributeContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/context/AttributeContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/rpc/context/AttributeContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lcom/google/rpc/context/AttributeContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/rpc/context/AttributeContext;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lcom/google/rpc/context/AttributeContext;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lcom/google/rpc/context/AttributeContext;

    .line 4
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasOrigin()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->hasOrigin()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasOrigin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getOrigin()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->getOrigin()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/rpc/context/AttributeContext$Peer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasSource()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->hasSource()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getSource()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->getSource()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/rpc/context/AttributeContext$Peer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 10
    :cond_5
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasDestination()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->hasDestination()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 11
    :cond_6
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasDestination()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getDestination()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->getDestination()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/rpc/context/AttributeContext$Peer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 13
    :cond_7
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasRequest()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->hasRequest()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 14
    :cond_8
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasRequest()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 15
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getRequest()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->getRequest()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/rpc/context/AttributeContext$Request;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 16
    :cond_9
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasResponse()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->hasResponse()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 17
    :cond_a
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 18
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getResponse()Lcom/google/rpc/context/AttributeContext$Response;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->getResponse()Lcom/google/rpc/context/AttributeContext$Response;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/rpc/context/AttributeContext$Response;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 19
    :cond_b
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasResource()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->hasResource()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 20
    :cond_c
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasResource()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 21
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getResource()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->getResource()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/rpc/context/AttributeContext$Resource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 22
    :cond_d
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasApi()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->hasApi()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 23
    :cond_e
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasApi()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 24
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getApi()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->getApi()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/rpc/context/AttributeContext$Api;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 25
    :cond_f
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getExtensionsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext;->getExtensionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    .line 26
    :cond_10
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v3

    :cond_11
    return v0
.end method

.method public getApi()Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->api_:Lcom/google/rpc/context/AttributeContext$Api;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Api;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getApiOrBuilder()Lcom/google/rpc/context/AttributeContext$b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getApi()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getDefaultInstanceForType()Lcom/google/rpc/context/AttributeContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getDefaultInstanceForType()Lcom/google/rpc/context/AttributeContext;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/rpc/context/AttributeContext;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext;

    return-object v0
.end method

.method public getDestination()Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->destination_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Peer;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDestinationOrBuilder()Lcom/google/rpc/context/AttributeContext$e;
    .locals 1

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getDestination()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions(I)Lcom/google/protobuf/Any;
    .locals 1

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    return-object p1
.end method

.method public getExtensionsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtensionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    return-object v0
.end method

.method public getExtensionsOrBuilder(I)Lcom/google/protobuf/f;
    .locals 1

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/f;

    return-object p1
.end method

.method public getExtensionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    return-object v0
.end method

.method public getOrigin()Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->origin_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Peer;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOriginOrBuilder()Lcom/google/rpc/context/AttributeContext$e;
    .locals 1

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getOrigin()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lcom/google/rpc/context/AttributeContext;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/rpc/context/AttributeContext;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRequest()Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->request_:Lcom/google/rpc/context/AttributeContext$Request;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRequestOrBuilder()Lcom/google/rpc/context/AttributeContext$f;
    .locals 1

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getRequest()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->resource_:Lcom/google/rpc/context/AttributeContext$Resource;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Resource;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResourceOrBuilder()Lcom/google/rpc/context/AttributeContext$g;
    .locals 1

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getResource()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->response_:Lcom/google/rpc/context/AttributeContext$Response;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Response;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Response;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResponseOrBuilder()Lcom/google/rpc/context/AttributeContext$h;
    .locals 1

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getResponse()Lcom/google/rpc/context/AttributeContext$Response;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->source_:Lcom/google/rpc/context/AttributeContext$Peer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getSource()Lcom/google/rpc/context/AttributeContext$Peer;

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
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext;->destination_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getDestination()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext;->request_:Lcom/google/rpc/context/AttributeContext$Request;

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 7
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getRequest()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext;->response_:Lcom/google/rpc/context/AttributeContext$Response;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 9
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getResponse()Lcom/google/rpc/context/AttributeContext$Response;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10
    :cond_4
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext;->resource_:Lcom/google/rpc/context/AttributeContext$Resource;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 11
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getResource()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12
    :cond_5
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext;->api_:Lcom/google/rpc/context/AttributeContext$Api;

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    .line 13
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getApi()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14
    :cond_6
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext;->origin_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    .line 15
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getOrigin()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0x8

    .line 17
    iget-object v3, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSource()Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->source_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Peer;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSourceOrBuilder()Lcom/google/rpc/context/AttributeContext$e;
    .locals 1

    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getSource()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasApi()Z
    .locals 1

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->api_:Lcom/google/rpc/context/AttributeContext$Api;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDestination()Z
    .locals 1

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->destination_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOrigin()Z
    .locals 1

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->origin_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRequest()Z
    .locals 1

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->request_:Lcom/google/rpc/context/AttributeContext$Request;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResource()Z
    .locals 1

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->resource_:Lcom/google/rpc/context/AttributeContext$Resource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResponse()Z
    .locals 1

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->response_:Lcom/google/rpc/context/AttributeContext$Response;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSource()Z
    .locals 1

    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->source_:Lcom/google/rpc/context/AttributeContext$Peer;

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
    invoke-static {}, Lcom/google/rpc/context/AttributeContext;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasOrigin()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getOrigin()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/rpc/context/AttributeContext$Peer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getSource()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/rpc/context/AttributeContext$Peer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasDestination()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getDestination()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/rpc/context/AttributeContext$Peer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasRequest()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getRequest()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/rpc/context/AttributeContext$Request;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getResponse()Lcom/google/rpc/context/AttributeContext$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/rpc/context/AttributeContext$Response;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasResource()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getResource()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/rpc/context/AttributeContext$Resource;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_6
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->hasApi()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getApi()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/rpc/context/AttributeContext$Api;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_7
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getExtensionsCount()I

    move-result v1

    if-lez v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getExtensionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
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
    sget-object v0, Lcom/google/rpc/context/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lcom/google/rpc/context/AttributeContext;

    const-class v2, Lcom/google/rpc/context/AttributeContext$d;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/rpc/context/AttributeContext;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lcom/google/rpc/context/AttributeContext;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->newBuilderForType()Lcom/google/rpc/context/AttributeContext$d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/rpc/context/AttributeContext;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/rpc/context/AttributeContext$d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->newBuilderForType()Lcom/google/rpc/context/AttributeContext$d;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/rpc/context/AttributeContext$d;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/rpc/context/AttributeContext;->newBuilder()Lcom/google/rpc/context/AttributeContext$d;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/rpc/context/AttributeContext$d;
    .locals 2

    .line 5
    new-instance v0, Lcom/google/rpc/context/AttributeContext$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/rpc/context/AttributeContext$d;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lcom/google/rpc/context/AttributeContext$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/google/rpc/context/AttributeContext;

    invoke-direct {p1}, Lcom/google/rpc/context/AttributeContext;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->toBuilder()Lcom/google/rpc/context/AttributeContext$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->toBuilder()Lcom/google/rpc/context/AttributeContext$d;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/rpc/context/AttributeContext$d;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/rpc/context/AttributeContext;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/rpc/context/AttributeContext$d;

    invoke-direct {v0, v1}, Lcom/google/rpc/context/AttributeContext$d;-><init>(Lcom/google/rpc/context/AttributeContext$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/rpc/context/AttributeContext$d;

    invoke-direct {v0, v1}, Lcom/google/rpc/context/AttributeContext$d;-><init>(Lcom/google/rpc/context/AttributeContext$a;)V

    invoke-virtual {v0, p0}, Lcom/google/rpc/context/AttributeContext$d;->k0(Lcom/google/rpc/context/AttributeContext;)Lcom/google/rpc/context/AttributeContext$d;

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
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->source_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getSource()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->destination_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getDestination()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->request_:Lcom/google/rpc/context/AttributeContext$Request;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getRequest()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->response_:Lcom/google/rpc/context/AttributeContext$Response;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getResponse()Lcom/google/rpc/context/AttributeContext$Response;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->resource_:Lcom/google/rpc/context/AttributeContext$Resource;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getResource()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->api_:Lcom/google/rpc/context/AttributeContext$Api;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getApi()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext;->origin_:Lcom/google/rpc/context/AttributeContext$Peer;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext;->getOrigin()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_6
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/16 v1, 0x8

    .line 16
    iget-object v2, p0, Lcom/google/rpc/context/AttributeContext;->extensions_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
