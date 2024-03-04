.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$ResetHeader;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$e;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$f;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryHostPredicate;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$g;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$h;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$ResetHeaderFormat;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

.field public static final HOST_SELECTION_RETRY_MAX_ATTEMPTS_FIELD_NUMBER:I = 0x6

.field public static final NUM_RETRIES_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final PER_TRY_TIMEOUT_FIELD_NUMBER:I = 0x3

.field public static final RATE_LIMITED_RETRY_BACK_OFF_FIELD_NUMBER:I = 0xb

.field public static final RETRIABLE_HEADERS_FIELD_NUMBER:I = 0x9

.field public static final RETRIABLE_REQUEST_HEADERS_FIELD_NUMBER:I = 0xa

.field public static final RETRIABLE_STATUS_CODES_FIELD_NUMBER:I = 0x7

.field public static final RETRY_BACK_OFF_FIELD_NUMBER:I = 0x8

.field public static final RETRY_HOST_PREDICATE_FIELD_NUMBER:I = 0x5

.field public static final RETRY_ON_FIELD_NUMBER:I = 0x1

.field public static final RETRY_PRIORITY_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private hostSelectionRetryMaxAttempts_:J

.field private memoizedIsInitialized:B

.field private numRetries_:Lcom/google/protobuf/UInt32Value;

.field private perTryTimeout_:Lcom/google/protobuf/Duration;

.field private rateLimitedRetryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

.field private retriableHeaders_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private retriableRequestHeaders_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private retriableStatusCodesMemoizedSerializedSize:I

.field private retriableStatusCodes_:Lcom/google/protobuf/u0$g;

.field private retryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

.field private retryHostPredicate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryHostPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private volatile retryOn_:Ljava/lang/Object;

.field private retryPriority_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodesMemoizedSerializedSize:I

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->memoizedIsInitialized:B

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryOn_:Ljava/lang/Object;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    .line 11
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodesMemoizedSerializedSize:I

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;-><init>()V

    .line 15
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_10

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 18
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_3

    .line 19
    :sswitch_0
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->rateLimitedRetryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    if-eqz v3, :cond_1

    .line 20
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff$b;

    move-result-object v4

    .line 21
    :cond_1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->rateLimitedRetryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    if-eqz v4, :cond_0

    .line 22
    invoke-virtual {v4, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff$b;

    .line 23
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->rateLimitedRetryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_2

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 25
    :cond_2
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    .line 26
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    .line 27
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_3

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 29
    :cond_3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    .line 30
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    .line 31
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :sswitch_3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    if-eqz v3, :cond_4

    .line 33
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff$b;

    move-result-object v4

    .line 34
    :cond_4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {v4, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff$b;

    .line 36
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    goto/16 :goto_0

    .line 37
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->D()I

    move-result v3

    .line 38
    invoke-virtual {p1, v3}, Lcom/google/protobuf/p;->q(I)I

    move-result v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_5

    .line 39
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v4

    if-lez v4, :cond_5

    .line 40
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/u0$g;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    or-int/lit8 v2, v2, 0x2

    .line 41
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->e()I

    move-result v4

    if-lez v4, :cond_6

    .line 42
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/u0$g;->D0(I)V

    goto :goto_1

    .line 43
    :cond_6
    invoke-virtual {p1, v3}, Lcom/google/protobuf/p;->p(I)V

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_7

    .line 44
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->newIntList()Lcom/google/protobuf/u0$g;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    or-int/lit8 v2, v2, 0x2

    .line 45
    :cond_7
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/u0$g;->D0(I)V

    goto/16 :goto_0

    .line 46
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->A()J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hostSelectionRetryMaxAttempts_:J

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_8

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 48
    :cond_8
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    .line 49
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryHostPredicate;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryHostPredicate;

    .line 50
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 51
    :sswitch_8
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryPriority_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

    if-eqz v3, :cond_9

    .line 52
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority$b;

    move-result-object v4

    .line 53
    :cond_9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryPriority_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {v4, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority$b;

    .line 55
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryPriority_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

    goto/16 :goto_0

    .line 56
    :sswitch_9
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->perTryTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v3, :cond_a

    .line 57
    invoke-virtual {v3}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v4

    .line 58
    :cond_a
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Duration;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->perTryTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {v4, v3}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 60
    invoke-virtual {v4}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->perTryTimeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 61
    :sswitch_a
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->numRetries_:Lcom/google/protobuf/UInt32Value;

    if-eqz v3, :cond_b

    .line 62
    invoke-virtual {v3}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 63
    :cond_b
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/UInt32Value;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->numRetries_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 64
    invoke-virtual {v4, v3}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 65
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->numRetries_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 66
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 67
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryOn_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    :sswitch_c
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_3
    if-nez v3, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 68
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 69
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 70
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_c

    .line 71
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    :cond_c
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_d

    .line 72
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    invoke-interface {p2}, Lcom/google/protobuf/u0$j;->C()V

    :cond_d
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_e

    .line 73
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    :cond_e
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_f

    .line 74
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    .line 75
    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 76
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_10
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_11

    .line 77
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    :cond_11
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_12

    .line 78
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    invoke-interface {p1}, Lcom/google/protobuf/u0$j;->C()V

    :cond_12
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_13

    .line 79
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    :cond_13
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_14

    .line 80
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    .line 81
    :cond_14
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 82
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0xa -> :sswitch_b
        0x12 -> :sswitch_a
        0x1a -> :sswitch_9
        0x22 -> :sswitch_8
        0x2a -> :sswitch_7
        0x30 -> :sswitch_6
        0x38 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x52 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$5300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5400()Lcom/google/protobuf/u0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryOn_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryOn_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->numRetries_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$5802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->perTryTimeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$5902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryPriority_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

    return-object p1
.end method

.method static synthetic access$6000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$6002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hostSelectionRetryMaxAttempts_:J

    return-wide p1
.end method

.method static synthetic access$6200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;)Lcom/google/protobuf/u0$g;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    return-object p0
.end method

.method static synthetic access$6202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    return-object p1
.end method

.method static synthetic access$6302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    return-object p1
.end method

.method static synthetic access$6402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->rateLimitedRetryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    return-object p1
.end method

.method static synthetic access$6500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$6502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$6602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$7100()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
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

.method static synthetic access$7300()Lcom/google/protobuf/u0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3;->mutableCopy(Lcom/google/protobuf/u0$g;)Lcom/google/protobuf/u0$g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7500()Lcom/google/protobuf/u0$g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageV3;->emptyIntList()Lcom/google/protobuf/u0$g;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->W:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryOn()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryOn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasNumRetries()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasNumRetries()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 7
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasNumRetries()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getNumRetries()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getNumRetries()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasPerTryTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasPerTryTimeout()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasPerTryTimeout()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getPerTryTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getPerTryTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasRetryPriority()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasRetryPriority()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 15
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasRetryPriority()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryPriority()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryPriority()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 18
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryHostPredicateList()Ljava/util/List;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryHostPredicateList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getHostSelectionRetryMaxAttempts()J

    move-result-wide v3

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getHostSelectionRetryMaxAttempts()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    .line 22
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetriableStatusCodesList()Ljava/util/List;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetriableStatusCodesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 24
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasRetryBackOff()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasRetryBackOff()Z

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    .line 25
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasRetryBackOff()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 28
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasRateLimitedRetryBackOff()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasRateLimitedRetryBackOff()Z

    move-result v3

    if-eq v1, v3, :cond_e

    return v2

    .line 29
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasRateLimitedRetryBackOff()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRateLimitedRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRateLimitedRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 32
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetriableHeadersList()Ljava/util/List;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetriableHeadersList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 34
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetriableRequestHeadersList()Ljava/util/List;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetriableRequestHeadersList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 36
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    return-object v0
.end method

.method public getHostSelectionRetryMaxAttempts()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hostSelectionRetryMaxAttempts_:J

    return-wide v0
.end method

.method public getNumRetries()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->numRetries_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNumRetriesOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getNumRetries()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPerTryTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->perTryTimeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPerTryTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getPerTryTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getRateLimitedRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->rateLimitedRetryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRateLimitedRetryBackOffOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$d;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRateLimitedRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    move-result-object v0

    return-object v0
.end method

.method public getRetriableHeaders(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    return-object p1
.end method

.method public getRetriableHeadersCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRetriableHeadersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    return-object v0
.end method

.method public getRetriableHeadersOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/f;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/f;

    return-object p1
.end method

.method public getRetriableHeadersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    return-object v0
.end method

.method public getRetriableRequestHeaders(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    return-object p1
.end method

.method public getRetriableRequestHeadersCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRetriableRequestHeadersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    return-object v0
.end method

.method public getRetriableRequestHeadersOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/f;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/f;

    return-object p1
.end method

.method public getRetriableRequestHeadersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    return-object v0
.end method

.method public getRetriableStatusCodes(I)I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    invoke-interface {v0, p1}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getRetriableStatusCodesCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRetriableStatusCodesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    return-object v0
.end method

.method public getRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRetryBackOffOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    move-result-object v0

    return-object v0
.end method

.method public getRetryHostPredicate(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryHostPredicate;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryHostPredicate;

    return-object p1
.end method

.method public getRetryHostPredicateCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRetryHostPredicateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryHostPredicate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    return-object v0
.end method

.method public getRetryHostPredicateOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$g;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$g;

    return-object p1
.end method

.method public getRetryHostPredicateOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    return-object v0
.end method

.method public getRetryOn()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryOn_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryOn_:Ljava/lang/Object;

    return-object v0
.end method

.method public getRetryOnBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryOn_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryOn_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRetryPriority()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryPriority_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRetryPriorityOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$h;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryPriority()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryOn_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryOn_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->numRetries_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getNumRetries()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6
    :cond_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->perTryTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getPerTryTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8
    :cond_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryPriority_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryPriority()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    const/4 v2, 0x0

    .line 10
    :goto_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    const/4 v3, 0x5

    .line 11
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    .line 12
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_5
    iget-wide v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hostSelectionRetryMaxAttempts_:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    const/4 v4, 0x6

    .line 14
    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->z(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 15
    :goto_2
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 16
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    .line 17
    invoke-interface {v4, v2}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    add-int/2addr v0, v3

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetriableStatusCodesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 19
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->y(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 20
    :cond_8
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodesMemoizedSerializedSize:I

    .line 21
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    if-eqz v2, :cond_9

    const/16 v2, 0x8

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    const/4 v2, 0x0

    .line 23
    :goto_3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    const/16 v3, 0x9

    .line 24
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    .line 25
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 26
    :cond_a
    :goto_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    const/16 v2, 0xa

    .line 27
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    .line 28
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 29
    :cond_b
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->rateLimitedRetryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    if-eqz v1, :cond_c

    const/16 v1, 0xb

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRateLimitedRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

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

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasNumRetries()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->numRetries_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPerTryTimeout()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->perTryTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRateLimitedRetryBackOff()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->rateLimitedRetryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRetryBackOff()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRetryPriority()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryPriority_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryOn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasNumRetries()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getNumRetries()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasPerTryTimeout()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getPerTryTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasRetryPriority()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryPriority()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryHostPredicateCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryHostPredicateList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getHostSelectionRetryMaxAttempts()J

    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetriableStatusCodesCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetriableStatusCodesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasRetryBackOff()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hasRateLimitedRetryBackOff()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRateLimitedRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetriableHeadersCount()I

    move-result v1

    if-lez v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetriableHeadersList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetriableRequestHeadersCount()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetriableRequestHeadersList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    mul-int/lit8 v0, v0, 0x1d

    .line 24
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->X:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getSerializedSize()I

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryOn_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryOn_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->numRetries_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getNumRetries()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->perTryTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getPerTryTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryPriority_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryPriority()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 11
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryHostPredicate_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_4
    iget-wide v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hostSelectionRetryMaxAttempts_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v3, 0x6

    .line 13
    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->J0(IJ)V

    .line 14
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetriableStatusCodesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/16 v1, 0x3a

    .line 15
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    .line 16
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodesMemoizedSerializedSize:I

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    :cond_6
    const/4 v1, 0x0

    .line 17
    :goto_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 18
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableStatusCodes_:Lcom/google/protobuf/u0$g;

    invoke-interface {v2, v1}, Lcom/google/protobuf/u0$g;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryBackOff;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_8
    const/4 v1, 0x0

    .line 21
    :goto_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0x9

    .line 22
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableHeaders_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 23
    :cond_9
    :goto_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    const/16 v1, 0xa

    .line 24
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->retriableRequestHeaders_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 25
    :cond_a
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->rateLimitedRetryBackOff_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    if-eqz v0, :cond_b

    const/16 v0, 0xb

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getRateLimitedRetryBackOff()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RateLimitedRetryBackOff;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 27
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
