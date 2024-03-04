.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$ConfigSourceSpecifierCase;
    }
.end annotation


# static fields
.field public static final ADS_FIELD_NUMBER:I = 0x3

.field public static final API_CONFIG_SOURCE_FIELD_NUMBER:I = 0x2

.field public static final AUTHORITIES_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

.field public static final INITIAL_FETCH_TIMEOUT_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x1

.field public static final RESOURCE_API_VERSION_FIELD_NUMBER:I = 0x6

.field public static final SELF_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private authorities_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/com/github/xds/core/v3/Authority;",
            ">;"
        }
    .end annotation
.end field

.field private configSourceSpecifierCase_:I

.field private configSourceSpecifier_:Ljava/lang/Object;

.field private initialFetchTimeout_:Lcom/google/protobuf/Duration;

.field private memoizedIsInitialized:B

.field private resourceApiVersion_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, -0x1

    .line 8
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->memoizedIsInitialized:B

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    .line 10
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->resourceApiVersion_:I

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;-><init>()V

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_12

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    if-eqz v4, :cond_10

    const/16 v5, 0xa

    if-eq v4, v5, :cond_f

    const/16 v5, 0x12

    const/4 v6, 0x0

    if-eq v4, v5, :cond_c

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_9

    const/16 v5, 0x22

    if-eq v4, v5, :cond_7

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_3

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_1

    .line 15
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_1
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_2

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 17
    :cond_2
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    .line 18
    invoke-static {}, Lio/grpc/xds/shaded/com/github/xds/core/v3/Authority;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/com/github/xds/core/v3/Authority;

    .line 19
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 21
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->resourceApiVersion_:I

    goto :goto_0

    .line 22
    :cond_4
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    .line 23
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource$b;

    move-result-object v6

    .line 24
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    if-eqz v6, :cond_6

    .line 25
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource$b;

    .line 26
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    .line 27
    :cond_6
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    goto :goto_0

    .line 28
    :cond_7
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->initialFetchTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_8

    .line 29
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v6

    .line 30
    :cond_8
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->initialFetchTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v6, :cond_0

    .line 31
    invoke-virtual {v6, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 32
    invoke-virtual {v6}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->initialFetchTimeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 33
    :cond_9
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 34
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource$b;

    move-result-object v6

    .line 35
    :cond_a
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    if-eqz v6, :cond_b

    .line 36
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource$b;

    .line 37
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    .line 38
    :cond_b
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    goto/16 :goto_0

    .line 39
    :cond_c
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    .line 40
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object v6

    .line 41
    :cond_d
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    if-eqz v6, :cond_e

    .line 42
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    .line 43
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    .line 44
    :cond_e
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    goto/16 :goto_0

    .line 45
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 46
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    .line 47
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_10
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 48
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 49
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 50
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_11

    .line 51
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    .line 52
    :cond_11
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 53
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_12
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_13

    .line 54
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    .line 55
    :cond_13
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 56
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->initialFetchTimeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->resourceApiVersion_:I

    return p0
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->resourceApiVersion_:I

    return p1
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    return p1
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getAuthoritiesList()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getAuthoritiesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->hasInitialFetchTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->hasInitialFetchTimeout()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 7
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->hasInitialFetchTimeout()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getInitialFetchTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getInitialFetchTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 10
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->resourceApiVersion_:I

    iget v3, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->resourceApiVersion_:I

    if-eq v1, v3, :cond_5

    return v2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getConfigSourceSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$ConfigSourceSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getConfigSourceSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$ConfigSourceSpecifierCase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 12
    :cond_6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    if-eq v1, v0, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_9

    const/4 v3, 0x3

    if-eq v1, v3, :cond_8

    const/4 v3, 0x5

    if-eq v1, v3, :cond_7

    goto :goto_0

    .line 13
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getSelf()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getSelf()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 15
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getAds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getAds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 17
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getApiConfigSource()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getApiConfigSource()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 19
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 21
    :cond_b
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public getAds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public getAdsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/c;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public getApiConfigSource()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public getApiConfigSourceOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorities(I)Lio/grpc/xds/shaded/com/github/xds/core/v3/Authority;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/github/xds/core/v3/Authority;

    return-object p1
.end method

.method public getAuthoritiesCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAuthoritiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/com/github/xds/core/v3/Authority;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    return-object v0
.end method

.method public getAuthoritiesOrBuilder(I)Lio/grpc/xds/shaded/com/github/xds/core/v3/a;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/com/github/xds/core/v3/a;

    return-object p1
.end method

.method public getAuthoritiesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/com/github/xds/core/v3/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    return-object v0
.end method

.method public getConfigSourceSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$ConfigSourceSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$ConfigSourceSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$ConfigSourceSpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object v0
.end method

.method public getInitialFetchTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->initialFetchTimeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInitialFetchTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getInitialFetchTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getResourceApiVersion()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiVersion;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->resourceApiVersion_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiVersion;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiVersion;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiVersion;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiVersion;

    :cond_0
    return-object v0
.end method

.method public getResourceApiVersionValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->resourceApiVersion_:I

    return v0
.end method

.method public getSelf()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public getSelfOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/a1;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 5
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    .line 6
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7
    :cond_2
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 8
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    .line 9
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10
    :cond_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->initialFetchTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getInitialFetchTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12
    :cond_4
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 13
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

    .line 14
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15
    :cond_5
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->resourceApiVersion_:I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiVersion;->AUTO:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiVersion;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiVersion;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_6

    const/4 v2, 0x6

    .line 16
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->resourceApiVersion_:I

    .line 17
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 18
    :cond_6
    :goto_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/4 v2, 0x7

    .line 19
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    .line 20
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

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

.method public hasAds()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasApiConfigSource()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInitialFetchTimeout()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->initialFetchTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPath()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSelf()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x5

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getAuthoritiesCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getAuthoritiesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->hasInitialFetchTimeout()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getInitialFetchTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 7
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->resourceApiVersion_:I

    add-int/2addr v0, v1

    .line 8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getSelf()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getAds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_5
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getApiConfigSource()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_6
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
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
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/AggregatedConfigSource;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->initialFetchTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getInitialFetchTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->configSourceSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SelfConfigSource;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->resourceApiVersion_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiVersion;->AUTO:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiVersion;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiVersion;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_5

    const/4 v0, 0x6

    .line 12
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->resourceApiVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    :cond_5
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x7

    .line 14
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->authorities_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
