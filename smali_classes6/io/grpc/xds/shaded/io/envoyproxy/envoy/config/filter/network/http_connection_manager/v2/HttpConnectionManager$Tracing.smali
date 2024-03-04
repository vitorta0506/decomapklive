.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tracing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$OperationName;
    }
.end annotation


# static fields
.field public static final CLIENT_SAMPLING_FIELD_NUMBER:I = 0x3

.field public static final CUSTOM_TAGS_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

.field public static final MAX_PATH_TAG_LENGTH_FIELD_NUMBER:I = 0x7

.field public static final OPERATION_NAME_FIELD_NUMBER:I = 0x1

.field public static final OVERALL_SAMPLING_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVIDER_FIELD_NUMBER:I = 0x9

.field public static final RANDOM_SAMPLING_FIELD_NUMBER:I = 0x4

.field public static final REQUEST_HEADERS_FOR_TAGS_FIELD_NUMBER:I = 0x2

.field public static final VERBOSE_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private clientSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

.field private customTags_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/CustomTag;",
            ">;"
        }
    .end annotation
.end field

.field private maxPathTagLength_:Lcom/google/protobuf/UInt32Value;

.field private memoizedIsInitialized:B

.field private operationName_:I

.field private overallSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

.field private provider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

.field private randomSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

.field private requestHeadersForTags_:Lcom/google/protobuf/z0;

.field private verbose_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->operationName_:I

    .line 8
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;-><init>()V

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_14

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_11

    const/16 v5, 0x8

    if-eq v3, v5, :cond_10

    const/16 v5, 0x12

    if-eq v3, v5, :cond_e

    const/16 v5, 0x1a

    const/4 v6, 0x0

    if-eq v3, v5, :cond_c

    const/16 v5, 0x22

    if-eq v3, v5, :cond_a

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_8

    const/16 v5, 0x30

    if-eq v3, v5, :cond_7

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_5

    const/16 v5, 0x42

    if-eq v3, v5, :cond_3

    const/16 v5, 0x4a

    if-eq v3, v5, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 15
    :cond_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->provider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    if-eqz v3, :cond_2

    .line 16
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http$b;

    move-result-object v6

    .line 17
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->provider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    if-eqz v6, :cond_0

    .line 18
    invoke-virtual {v6, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http$b;

    .line 19
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->provider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_4

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 21
    :cond_4
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/CustomTag;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/CustomTag;

    .line 23
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_5
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->maxPathTagLength_:Lcom/google/protobuf/UInt32Value;

    if-eqz v3, :cond_6

    .line 25
    invoke-virtual {v3}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v6

    .line 26
    :cond_6
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/UInt32Value;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->maxPathTagLength_:Lcom/google/protobuf/UInt32Value;

    if-eqz v6, :cond_0

    .line 27
    invoke-virtual {v6, v3}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 28
    invoke-virtual {v6}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->maxPathTagLength_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 29
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->verbose_:Z

    goto/16 :goto_0

    .line 30
    :cond_8
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->overallSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v3, :cond_9

    .line 31
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    move-result-object v6

    .line 32
    :cond_9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->overallSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v6, :cond_0

    .line 33
    invoke-virtual {v6, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    .line 34
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->overallSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    goto/16 :goto_0

    .line 35
    :cond_a
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->randomSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v3, :cond_b

    .line 36
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    move-result-object v6

    .line 37
    :cond_b
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->randomSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v6, :cond_0

    .line 38
    invoke-virtual {v6, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    .line 39
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->randomSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    goto/16 :goto_0

    .line 40
    :cond_c
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->clientSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v3, :cond_d

    .line 41
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    move-result-object v6

    .line 42
    :cond_d
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->clientSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v6, :cond_0

    .line 43
    invoke-virtual {v6, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    .line 44
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->clientSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    goto/16 :goto_0

    .line 45
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_f

    .line 46
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x1

    .line 47
    :cond_f
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 48
    :cond_10
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v3

    .line 49
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->operationName_:I
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

    if-eqz p2, :cond_12

    .line 53
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    :cond_12
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_13

    .line 54
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    .line 55
    :cond_13
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 56
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_14
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_15

    .line 57
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    :cond_15
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_16

    .line 58
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    .line 59
    :cond_16
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 60
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->maxPathTagLength_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->provider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    return-object p1
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1500()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/protobuf/ByteString;)V
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

.method static synthetic access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->operationName_:I

    return p0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->operationName_:I

    return p1
.end method

.method static synthetic access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->clientSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    return-object p1
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->randomSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    return-object p1
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->overallSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    return-object p1
.end method

.method static synthetic access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->verbose_:Z

    return p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->operationName_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->operationName_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getRequestHeadersForTagsList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getRequestHeadersForTagsList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 7
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasClientSampling()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasClientSampling()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 8
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasClientSampling()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getClientSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getClientSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasRandomSampling()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasRandomSampling()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 12
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasRandomSampling()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getRandomSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getRandomSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 15
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasOverallSampling()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasOverallSampling()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 16
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasOverallSampling()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getOverallSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getOverallSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 19
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getVerbose()Z

    move-result v1

    .line 20
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getVerbose()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 21
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasMaxPathTagLength()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasMaxPathTagLength()Z

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    .line 22
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasMaxPathTagLength()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getMaxPathTagLength()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getMaxPathTagLength()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 25
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getCustomTagsList()Ljava/util/List;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getCustomTagsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 27
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasProvider()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasProvider()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 28
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasProvider()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 31
    :cond_f
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v3

    :cond_10
    return v0
.end method

.method public getClientSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->clientSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getClientSamplingOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getClientSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTags(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/CustomTag;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/CustomTag;

    return-object p1
.end method

.method public getCustomTagsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCustomTagsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/CustomTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    return-object v0
.end method

.method public getCustomTagsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/a;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/a;

    return-object p1
.end method

.method public getCustomTagsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/tracing/v2/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    return-object v0
.end method

.method public getMaxPathTagLength()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->maxPathTagLength_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxPathTagLengthOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getMaxPathTagLength()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getOperationName()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$OperationName;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->operationName_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$OperationName;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$OperationName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$OperationName;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$OperationName;

    :cond_0
    return-object v0
.end method

.method public getOperationNameValue()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->operationName_:I

    return v0
.end method

.method public getOverallSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->overallSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOverallSamplingOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getOverallSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->provider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getProviderOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$d;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    move-result-object v0

    return-object v0
.end method

.method public getRandomSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->randomSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRandomSamplingOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getRandomSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeadersForTags(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRequestHeadersForTagsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRequestHeadersForTagsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestHeadersForTagsList()Lcom/google/protobuf/i2;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getRequestHeadersForTagsList()Ljava/util/List;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getRequestHeadersForTagsList()Lcom/google/protobuf/i2;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->operationName_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$OperationName;->INGRESS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$OperationName;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$OperationName;->getNumber()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->operationName_:I

    .line 4
    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_1
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 6
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v4

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getRequestHeadersForTagsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->clientSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getClientSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->randomSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getRandomSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->overallSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getOverallSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->verbose_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->maxPathTagLength_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getMaxPathTagLength()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_7
    :goto_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_8

    const/16 v1, 0x8

    .line 19
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    .line 20
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 21
    :cond_8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->provider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getVerbose()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->verbose_:Z

    return v0
.end method

.method public hasClientSampling()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->clientSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxPathTagLength()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->maxPathTagLength_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOverallSampling()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->overallSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProvider()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->provider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRandomSampling()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->randomSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->operationName_:I

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getRequestHeadersForTagsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getRequestHeadersForTagsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasClientSampling()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getClientSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasRandomSampling()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getRandomSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasOverallSampling()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getOverallSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getVerbose()Z

    move-result v1

    .line 13
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasMaxPathTagLength()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getMaxPathTagLength()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getCustomTagsCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getCustomTagsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->hasProvider()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x1d

    .line 20
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/a;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$b;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->operationName_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$OperationName;->INGRESS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$OperationName;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing$OperationName;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->operationName_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->requestHeadersForTags_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->clientSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getClientSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->randomSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getRandomSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->overallSampling_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getOverallSampling()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->verbose_:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 12
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 13
    :cond_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->maxPathTagLength_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getMaxPathTagLength()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/16 v1, 0x8

    .line 16
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->customTags_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17
    :cond_7
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->provider_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/network/http_connection_manager/v2/HttpConnectionManager$Tracing;->getProvider()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v2/Tracing$Http;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
