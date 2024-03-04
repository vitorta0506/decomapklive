.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpHealthCheck"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;
    }
.end annotation


# static fields
.field public static final CODEC_CLIENT_TYPE_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

.field public static final EXPECTED_STATUSES_FIELD_NUMBER:I = 0x9

.field public static final HOST_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x2

.field public static final RECEIVE_FIELD_NUMBER:I = 0x4

.field public static final REQUEST_HEADERS_TO_ADD_FIELD_NUMBER:I = 0x6

.field public static final REQUEST_HEADERS_TO_REMOVE_FIELD_NUMBER:I = 0x8

.field public static final SEND_FIELD_NUMBER:I = 0x3

.field public static final SERVICE_NAME_MATCHER_FIELD_NUMBER:I = 0xb

.field private static final serialVersionUID:J


# instance fields
.field private codecClientType_:I

.field private expectedStatuses_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int64Range;",
            ">;"
        }
    .end annotation
.end field

.field private volatile host_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile path_:Ljava/lang/Object;

.field private receive_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

.field private requestHeadersToAdd_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;",
            ">;"
        }
    .end annotation
.end field

.field private requestHeadersToRemove_:Lcom/google/protobuf/z0;

.field private send_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

.field private serviceNameMatcher_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->host_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->path_:Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    .line 10
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->codecClientType_:I

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;-><init>()V

    .line 14
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_14

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_10

    const/16 v5, 0xa

    if-eq v3, v5, :cond_f

    const/16 v5, 0x12

    if-eq v3, v5, :cond_e

    const/16 v5, 0x1a

    const/4 v6, 0x0

    if-eq v3, v5, :cond_c

    const/16 v5, 0x22

    if-eq v3, v5, :cond_a

    const/16 v5, 0x32

    if-eq v3, v5, :cond_8

    const/16 v5, 0x42

    if-eq v3, v5, :cond_6

    const/16 v5, 0x4a

    if-eq v3, v5, :cond_4

    const/16 v5, 0x50

    if-eq v3, v5, :cond_3

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_1

    .line 17
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 18
    :cond_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->serviceNameMatcher_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$c;

    move-result-object v6

    .line 20
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->serviceNameMatcher_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    if-eqz v6, :cond_0

    .line 21
    invoke-virtual {v6, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$c;

    .line 22
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->serviceNameMatcher_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v3

    .line 24
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->codecClientType_:I

    goto :goto_0

    :cond_4
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_5

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 26
    :cond_5
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    .line 27
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int64Range;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int64Range;

    .line 28
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_7

    .line 30
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x2

    .line 31
    :cond_7
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_9

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 33
    :cond_9
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    .line 34
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;

    .line 35
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 36
    :cond_a
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->receive_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    if-eqz v3, :cond_b

    .line 37
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload$b;

    move-result-object v6

    .line 38
    :cond_b
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->receive_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    if-eqz v6, :cond_0

    .line 39
    invoke-virtual {v6, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload$b;

    .line 40
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->receive_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    goto/16 :goto_0

    .line 41
    :cond_c
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->send_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    if-eqz v3, :cond_d

    .line 42
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload$b;

    move-result-object v6

    .line 43
    :cond_d
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->send_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    if-eqz v6, :cond_0

    .line 44
    invoke-virtual {v6, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload$b;

    .line 45
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->send_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    goto/16 :goto_0

    .line 46
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 47
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->path_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 48
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 49
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->host_:Ljava/lang/Object;
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

    .line 50
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 51
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 52
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_11

    .line 53
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    :cond_11
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_12

    .line 54
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    :cond_12
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_13

    .line 55
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    .line 56
    :cond_13
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 57
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_14
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_15

    .line 58
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    :cond_15
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_16

    .line 59
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    :cond_16
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_17

    .line 60
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    .line 61
    :cond_17
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 62
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->host_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->host_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->path_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->path_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->send_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    return-object p1
.end method

.method static synthetic access$1702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->receive_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    return-object p1
.end method

.method static synthetic access$1800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$1902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$2000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->codecClientType_:I

    return p0
.end method

.method static synthetic access$2102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->codecClientType_:I

    return p1
.end method

.method static synthetic access$2202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->serviceNameMatcher_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    return-object p1
.end method

.method static synthetic access$2300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$2600()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
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

.method static synthetic access$2800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->hasSend()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->hasSend()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->hasSend()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getSend()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getSend()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->hasReceive()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->hasReceive()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->hasReceive()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getReceive()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getReceive()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getRequestHeadersToAddList()Ljava/util/List;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getRequestHeadersToAddList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 18
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getExpectedStatusesList()Ljava/util/List;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getExpectedStatusesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 22
    :cond_a
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->codecClientType_:I

    iget v3, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->codecClientType_:I

    if-eq v1, v3, :cond_b

    return v2

    .line 23
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->hasServiceNameMatcher()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->hasServiceNameMatcher()Z

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    .line 24
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->hasServiceNameMatcher()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getServiceNameMatcher()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getServiceNameMatcher()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 27
    :cond_d
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public getCodecClientType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/CodecClientType;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->codecClientType_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/CodecClientType;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/CodecClientType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/CodecClientType;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/CodecClientType;

    :cond_0
    return-object v0
.end method

.method public getCodecClientTypeValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->codecClientType_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object v0
.end method

.method public getExpectedStatuses(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int64Range;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int64Range;

    return-object p1
.end method

.method public getExpectedStatusesCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExpectedStatusesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/Int64Range;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    return-object v0
.end method

.method public getExpectedStatusesOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/e;

    return-object p1
.end method

.method public getExpectedStatusesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->host_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->host_:Ljava/lang/Object;

    return-object v0
.end method

.method public getHostBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->host_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->host_:Ljava/lang/Object;

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->path_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->path_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->path_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->path_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getReceive()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->receive_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getReceiveOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$g;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getReceive()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeadersToAdd(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;

    return-object p1
.end method

.method public getRequestHeadersToAddCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestHeadersToAddList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestHeadersToAddOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/y;

    return-object p1
.end method

.method public getRequestHeadersToAddOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestHeadersToRemove(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRequestHeadersToRemoveBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRequestHeadersToRemoveCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getRequestHeadersToRemoveList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getSend()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->send_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSendOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$g;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getSend()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->host_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->host_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->path_:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    .line 5
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->path_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 6
    :cond_2
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->send_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getSend()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    .line 8
    :cond_3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->receive_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getReceive()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    const/4 v3, 0x0

    .line 10
    :goto_1
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    const/4 v4, 0x6

    .line 11
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    .line 12
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 13
    :goto_2
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 14
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v3}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    add-int/2addr v0, v4

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 16
    :goto_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    const/16 v1, 0x9

    .line 17
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    .line 18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 19
    :cond_7
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->codecClientType_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/CodecClientType;->HTTP1:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/CodecClientType;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/CodecClientType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_8

    const/16 v1, 0xa

    .line 20
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->codecClientType_:I

    .line 21
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->serviceNameMatcher_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    if-eqz v1, :cond_9

    const/16 v1, 0xb

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getServiceNameMatcher()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getServiceNameMatcher()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->serviceNameMatcher_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getServiceNameMatcherOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/n;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getServiceNameMatcher()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasReceive()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->receive_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSend()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->send_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasServiceNameMatcher()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->serviceNameMatcher_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->hasSend()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getSend()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->hasReceive()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getReceive()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getRequestHeadersToAddCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getRequestHeadersToAddList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getRequestHeadersToRemoveCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getExpectedStatusesCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getExpectedStatusesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 15
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->codecClientType_:I

    add-int/2addr v0, v1

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->hasServiceNameMatcher()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getServiceNameMatcher()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
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
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->host_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->host_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->path_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->path_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->send_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getSend()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->receive_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getReceive()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x6

    .line 10
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 11
    :goto_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/16 v2, 0x8

    .line 12
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_5
    :goto_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/16 v1, 0x9

    .line 14
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->expectedStatuses_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15
    :cond_6
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->codecClientType_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/CodecClientType;->HTTP1:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/CodecClientType;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/CodecClientType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_7

    const/16 v0, 0xa

    .line 16
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->codecClientType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 17
    :cond_7
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->serviceNameMatcher_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getServiceNameMatcher()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/StringMatcher;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
