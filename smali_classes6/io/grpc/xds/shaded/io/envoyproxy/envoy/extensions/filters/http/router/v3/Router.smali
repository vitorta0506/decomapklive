.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

.field public static final DYNAMIC_STATS_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPECT_EXPECTED_RQ_TIMEOUT_FIELD_NUMBER:I = 0x6

.field public static final START_CHILD_SPAN_FIELD_NUMBER:I = 0x2

.field public static final STRICT_CHECK_HEADERS_FIELD_NUMBER:I = 0x5

.field public static final SUPPRESS_ENVOY_HEADERS_FIELD_NUMBER:I = 0x4

.field public static final SUPPRESS_GRPC_REQUEST_FAILURE_CODE_STATS_FIELD_NUMBER:I = 0x7

.field public static final UPSTREAM_LOG_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private dynamicStats_:Lcom/google/protobuf/BoolValue;

.field private memoizedIsInitialized:B

.field private respectExpectedRqTimeout_:Z

.field private startChildSpan_:Z

.field private strictCheckHeaders_:Lcom/google/protobuf/z0;

.field private suppressEnvoyHeaders_:Z

.field private suppressGrpcRequestFailureCodeStats_:Z

.field private upstreamLog_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    .line 8
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_e

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_b

    const/16 v5, 0xa

    if-eq v3, v5, :cond_9

    const/16 v5, 0x10

    if-eq v3, v5, :cond_8

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_6

    const/16 v5, 0x20

    if-eq v3, v5, :cond_5

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_3

    const/16 v5, 0x30

    if-eq v3, v5, :cond_2

    const/16 v5, 0x38

    if-eq v3, v5, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->suppressGrpcRequestFailureCodeStats_:Z

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->respectExpectedRqTimeout_:Z

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_4

    .line 17
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x2

    .line 18
    :cond_4
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->suppressEnvoyHeaders_:Z

    goto :goto_0

    :cond_6
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_7

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 21
    :cond_7
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLog;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLog;

    .line 23
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->startChildSpan_:Z

    goto :goto_0

    :cond_9
    const/4 v3, 0x0

    .line 25
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->dynamicStats_:Lcom/google/protobuf/BoolValue;

    if-eqz v4, :cond_a

    .line 26
    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v3

    .line 27
    :cond_a
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/BoolValue;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->dynamicStats_:Lcom/google/protobuf/BoolValue;

    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {v3, v4}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 29
    invoke-virtual {v3}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->dynamicStats_:Lcom/google/protobuf/BoolValue;
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

    .line 30
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 31
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 32
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_c

    .line 33
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_d

    .line 34
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    .line 35
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 36
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_e
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_f

    .line 37
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    :cond_f
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_10

    .line 38
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    .line 39
    :cond_10
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 40
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->suppressGrpcRequestFailureCodeStats_:Z

    return p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->dynamicStats_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->startChildSpan_:Z

    return p1
.end method

.method static synthetic access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->suppressEnvoyHeaders_:Z

    return p1
.end method

.method static synthetic access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->respectExpectedRqTimeout_:Z

    return p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/a;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->hasDynamicStats()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->hasDynamicStats()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->hasDynamicStats()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getDynamicStats()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getDynamicStats()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getStartChildSpan()Z

    move-result v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getStartChildSpan()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getUpstreamLogList()Ljava/util/List;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getUpstreamLogList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getSuppressEnvoyHeaders()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getSuppressEnvoyHeaders()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getStrictCheckHeadersList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getStrictCheckHeadersList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getRespectExpectedRqTimeout()Z

    move-result v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getRespectExpectedRqTimeout()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 18
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getSuppressGrpcRequestFailureCodeStats()Z

    move-result v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getSuppressGrpcRequestFailureCodeStats()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 20
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v3

    :cond_a
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    return-object v0
.end method

.method public getDynamicStats()Lcom/google/protobuf/BoolValue;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->dynamicStats_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDynamicStatsOrBuilder()Lcom/google/protobuf/l;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getDynamicStats()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRespectExpectedRqTimeout()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->respectExpectedRqTimeout_:Z

    return v0
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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->dynamicStats_:Lcom/google/protobuf/BoolValue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getDynamicStats()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->startChildSpan_:Z

    if-eqz v3, :cond_2

    const/4 v4, 0x2

    .line 5
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    const/4 v3, 0x0

    .line 6
    :goto_1
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    const/4 v4, 0x3

    .line 7
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    .line 8
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_3
    iget-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->suppressEnvoyHeaders_:Z

    if-eqz v3, :cond_4

    const/4 v4, 0x4

    .line 10
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    const/4 v3, 0x0

    .line 11
    :goto_2
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 12
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v2}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v0, v3

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getStrictCheckHeadersList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 14
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->respectExpectedRqTimeout_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_6
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->suppressGrpcRequestFailureCodeStats_:Z

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 17
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getStartChildSpan()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->startChildSpan_:Z

    return v0
.end method

.method public getStrictCheckHeaders(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getStrictCheckHeadersBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getStrictCheckHeadersCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStrictCheckHeadersList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getStrictCheckHeadersList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getStrictCheckHeadersList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getSuppressEnvoyHeaders()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->suppressEnvoyHeaders_:Z

    return v0
.end method

.method public getSuppressGrpcRequestFailureCodeStats()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->suppressGrpcRequestFailureCodeStats_:Z

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getUpstreamLog(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLog;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLog;

    return-object p1
.end method

.method public getUpstreamLogCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUpstreamLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/AccessLog;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    return-object v0
.end method

.method public getUpstreamLogOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/b;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/b;

    return-object p1
.end method

.method public getUpstreamLogOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/accesslog/v3/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    return-object v0
.end method

.method public hasDynamicStats()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->dynamicStats_:Lcom/google/protobuf/BoolValue;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->hasDynamicStats()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getDynamicStats()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getStartChildSpan()Z

    move-result v1

    .line 6
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getUpstreamLogCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getUpstreamLogList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getSuppressEnvoyHeaders()Z

    move-result v1

    .line 10
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getStrictCheckHeadersCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getStrictCheckHeadersList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getRespectExpectedRqTimeout()Z

    move-result v1

    .line 14
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getSuppressGrpcRequestFailureCodeStats()Z

    move-result v1

    .line 16
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 17
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/a;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router$b;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->dynamicStats_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->getDynamicStats()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->startChildSpan_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 6
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->upstreamLog_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->suppressEnvoyHeaders_:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 8
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 9
    :cond_3
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    .line 10
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->strictCheckHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v2, v0}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_4
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->respectExpectedRqTimeout_:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 13
    :cond_5
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/router/v3/Router;->suppressGrpcRequestFailureCodeStats_:Z

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
