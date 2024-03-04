.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$e;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;
    }
.end annotation


# static fields
.field public static final DECORATOR_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

.field public static final DIRECT_RESPONSE_FIELD_NUMBER:I = 0x7

.field public static final FILTER_ACTION_FIELD_NUMBER:I = 0x11

.field public static final MATCH_FIELD_NUMBER:I = 0x1

.field public static final METADATA_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0xe

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;",
            ">;"
        }
    .end annotation
.end field

.field public static final PER_FILTER_CONFIG_FIELD_NUMBER:I = 0x8

.field public static final PER_REQUEST_BUFFER_LIMIT_BYTES_FIELD_NUMBER:I = 0x10

.field public static final REDIRECT_FIELD_NUMBER:I = 0x3

.field public static final REQUEST_HEADERS_TO_ADD_FIELD_NUMBER:I = 0x9

.field public static final REQUEST_HEADERS_TO_REMOVE_FIELD_NUMBER:I = 0xc

.field public static final RESPONSE_HEADERS_TO_ADD_FIELD_NUMBER:I = 0xa

.field public static final RESPONSE_HEADERS_TO_REMOVE_FIELD_NUMBER:I = 0xb

.field public static final ROUTE_FIELD_NUMBER:I = 0x2

.field public static final TRACING_FIELD_NUMBER:I = 0xf

.field public static final TYPED_PER_FILTER_CONFIG_FIELD_NUMBER:I = 0xd

.field private static final serialVersionUID:J


# instance fields
.field private actionCase_:I

.field private action_:Ljava/lang/Object;

.field private decorator_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

.field private match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

.field private memoizedIsInitialized:B

.field private metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

.field private volatile name_:Ljava/lang/Object;

.field private perFilterConfig_:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Struct;",
            ">;"
        }
    .end annotation
.end field

.field private perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

.field private requestHeadersToAdd_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;",
            ">;"
        }
    .end annotation
.end field

.field private requestHeadersToRemove_:Lcom/google/protobuf/z0;

.field private responseHeadersToAdd_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeadersToRemove_:Lcom/google/protobuf/z0;

.field private tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

.field private typedPerFilterConfig_:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->memoizedIsInitialized:B

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->name_:Ljava/lang/Object;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    .line 11
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;-><init>()V

    .line 15
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_18

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    .line 18
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_2

    .line 19
    :sswitch_0
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_1

    .line 20
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction$b;

    move-result-object v5

    .line 21
    :cond_1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 22
    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;

    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction$b;

    .line 23
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    .line 24
    :cond_2
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    goto :goto_0

    .line 25
    :sswitch_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v3, :cond_3

    .line 26
    invoke-virtual {v3}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v5

    .line 27
    :cond_3
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/UInt32Value;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v5, :cond_0

    .line 28
    invoke-virtual {v5, v3}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 29
    invoke-virtual {v5}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 30
    :sswitch_2
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    if-eqz v3, :cond_4

    .line 31
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing$b;

    move-result-object v5

    .line 32
    :cond_4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    if-eqz v5, :cond_0

    .line 33
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing$b;

    .line 34
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    goto :goto_0

    .line 35
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 36
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->name_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_5

    .line 37
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$e;->a:Lcom/google/protobuf/e1;

    invoke-static {v3}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->typedPerFilterConfig_:Lcom/google/protobuf/g1;

    or-int/lit8 v2, v2, 0x2

    .line 38
    :cond_5
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$e;->a:Lcom/google/protobuf/e1;

    .line 39
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->getParserForType()Lcom/google/protobuf/e2;

    move-result-object v3

    .line 40
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/e1;

    .line 41
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->typedPerFilterConfig_:Lcom/google/protobuf/g1;

    invoke-virtual {v4}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v4

    .line 42
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Any;

    .line 43
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 44
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_6

    .line 45
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x8

    .line 46
    :cond_6
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 47
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x20

    if-nez v4, :cond_7

    .line 48
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x20

    .line 49
    :cond_7
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_8

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 51
    :cond_8
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    .line 52
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;

    .line 53
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_9

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 55
    :cond_9
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    .line 56
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;

    .line 57
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_9
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_a

    .line 58
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$d;->a:Lcom/google/protobuf/e1;

    invoke-static {v3}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->perFilterConfig_:Lcom/google/protobuf/g1;

    or-int/lit8 v2, v2, 0x1

    .line 59
    :cond_a
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$d;->a:Lcom/google/protobuf/e1;

    .line 60
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->getParserForType()Lcom/google/protobuf/e2;

    move-result-object v3

    .line 61
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/e1;

    .line 62
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->perFilterConfig_:Lcom/google/protobuf/g1;

    invoke-virtual {v4}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v4

    .line 63
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Struct;

    .line 64
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 65
    :sswitch_a
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_b

    .line 66
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction$b;

    move-result-object v5

    .line 67
    :cond_b
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    if-eqz v5, :cond_c

    .line 68
    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;

    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction$b;

    .line 69
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    .line 70
    :cond_c
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    goto/16 :goto_0

    .line 71
    :sswitch_b
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->decorator_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    if-eqz v3, :cond_d

    .line 72
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator$b;

    move-result-object v5

    .line 73
    :cond_d
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->decorator_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    if-eqz v5, :cond_0

    .line 74
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator$b;

    .line 75
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->decorator_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    goto/16 :goto_0

    .line 76
    :sswitch_c
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v3, :cond_e

    .line 77
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;

    move-result-object v5

    .line 78
    :cond_e
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v5, :cond_0

    .line 79
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;

    .line 80
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    goto/16 :goto_0

    .line 81
    :sswitch_d
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    .line 82
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

    move-result-object v5

    .line 83
    :cond_f
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    if-eqz v5, :cond_10

    .line 84
    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;

    .line 85
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    .line 86
    :cond_10
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    goto/16 :goto_0

    .line 87
    :sswitch_e
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_11

    .line 88
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

    move-result-object v5

    .line 89
    :cond_11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    if-eqz v5, :cond_12

    .line 90
    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;->r0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

    .line 91
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    .line 92
    :cond_12
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    goto/16 :goto_0

    .line 93
    :sswitch_f
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    if-eqz v3, :cond_13

    .line 94
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

    move-result-object v5

    .line 95
    :cond_13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    if-eqz v5, :cond_0

    .line 96
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

    .line 97
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_10
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

    .line 98
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 99
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 100
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_14

    .line 101
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    :cond_14
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_15

    .line 102
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    :cond_15
    and-int/lit8 p2, v2, 0x20

    if-eqz p2, :cond_16

    .line 103
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    :cond_16
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_17

    .line 104
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    .line 105
    :cond_17
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 106
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_18
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_19

    .line 107
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    :cond_19
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_1a

    .line 108
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    :cond_1a
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_1b

    .line 109
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    :cond_1b
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_1c

    .line 110
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    .line 111
    :cond_1c
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 112
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0xa -> :sswitch_f
        0x12 -> :sswitch_e
        0x1a -> :sswitch_d
        0x22 -> :sswitch_c
        0x2a -> :sswitch_b
        0x3a -> :sswitch_a
        0x42 -> :sswitch_9
        0x4a -> :sswitch_8
        0x52 -> :sswitch_7
        0x5a -> :sswitch_6
        0x62 -> :sswitch_5
        0x6a -> :sswitch_4
        0x72 -> :sswitch_3
        0x7a -> :sswitch_2
        0x82 -> :sswitch_1
        0x8a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;)Lcom/google/protobuf/g1;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->typedPerFilterConfig_:Lcom/google/protobuf/g1;

    return-object p0
.end method

.method static synthetic access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->typedPerFilterConfig_:Lcom/google/protobuf/g1;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    return-object p1
.end method

.method static synthetic access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    return p1
.end method

.method static synthetic access$1800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;)Lcom/google/protobuf/g1;
    .locals 0

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;)Lcom/google/protobuf/g1;
    .locals 0

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$2300()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
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

.method static synthetic access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    return-object p1
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    return-object p1
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->decorator_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    return-object p1
.end method

.method static synthetic access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;)Lcom/google/protobuf/g1;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->perFilterConfig_:Lcom/google/protobuf/g1;

    return-object p0
.end method

.method static synthetic access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->perFilterConfig_:Lcom/google/protobuf/g1;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method private internalGetPerFilterConfig()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Struct;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->perFilterConfig_:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$d;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->typedPerFilterConfig_:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$e;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;->u0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public containsPerFilterConfig(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsTypedPerFilterConfig(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasMatch()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasMatch()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 7
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasMatch()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasMetadata()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasMetadata()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasMetadata()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasDecorator()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasDecorator()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 15
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasDecorator()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getDecorator()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getDecorator()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 18
    :cond_8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    .line 19
    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v3

    .line 20
    invoke-virtual {v1, v3}, Lcom/google/protobuf/g1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 21
    :cond_9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    .line 22
    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v3

    .line 23
    invoke-virtual {v1, v3}, Lcom/google/protobuf/g1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 24
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRequestHeadersToAddList()Ljava/util/List;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRequestHeadersToAddList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 26
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 28
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getResponseHeadersToAddList()Ljava/util/List;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getResponseHeadersToAddList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 30
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 32
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasTracing()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasTracing()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 33
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasTracing()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 36
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasPerRequestBufferLimitBytes()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasPerRequestBufferLimitBytes()Z

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    .line 37
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasPerRequestBufferLimitBytes()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getPerRequestBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getPerRequestBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 40
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getActionCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getActionCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 41
    :cond_13
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_17

    const/4 v3, 0x3

    if-eq v1, v3, :cond_16

    const/4 v3, 0x7

    if-eq v1, v3, :cond_15

    const/16 v3, 0x11

    if-eq v1, v3, :cond_14

    goto :goto_0

    .line 42
    :cond_14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getFilterAction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getFilterAction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    .line 44
    :cond_15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getDirectResponse()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getDirectResponse()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    .line 46
    :cond_16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRedirect()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRedirect()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    .line 48
    :cond_17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRoute()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRoute()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    .line 50
    :cond_18
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    return v2

    :cond_19
    return v0
.end method

.method public getActionCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$ActionCase;

    move-result-object v0

    return-object v0
.end method

.method public getDecorator()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->decorator_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDecoratorOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getDecorator()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    return-object v0
.end method

.method public getDirectResponse()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;

    move-result-object v0

    return-object v0
.end method

.method public getDirectResponseOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/c;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;

    move-result-object v0

    return-object v0
.end method

.method public getFilterAction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;

    move-result-object v0

    return-object v0
.end method

.method public getFilterActionOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;

    move-result-object v0

    return-object v0
.end method

.method public getMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMatchOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/m;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMetadataOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/d0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->name_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->name_:Ljava/lang/Object;

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPerFilterConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Struct;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getPerFilterConfigMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPerFilterConfigCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getPerFilterConfigMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Struct;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPerFilterConfigOrDefault(Ljava/lang/String;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

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

    check-cast p2, Lcom/google/protobuf/Struct;

    :cond_0
    return-object p2
.end method

.method public getPerFilterConfigOrThrow(Ljava/lang/String;)Lcom/google/protobuf/Struct;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

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

    check-cast p1, Lcom/google/protobuf/Struct;

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getPerRequestBufferLimitBytes()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPerRequestBufferLimitBytesOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getPerRequestBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getRedirect()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    move-result-object v0

    return-object v0
.end method

.method public getRedirectOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/i;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeadersToAdd(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;

    return-object p1
.end method

.method public getRequestHeadersToAddCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestHeadersToAddOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/t;

    return-object p1
.end method

.method public getRequestHeadersToAddOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/t;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestHeadersToRemove(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRequestHeadersToRemoveBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRequestHeadersToRemoveCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getRequestHeadersToRemoveList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeadersToAdd(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;

    return-object p1
.end method

.method public getResponseHeadersToAddCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseHeadersToAddList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getResponseHeadersToAddOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/t;

    return-object p1
.end method

.method public getResponseHeadersToAddOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/t;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getResponseHeadersToRemove(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getResponseHeadersToRemoveBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getResponseHeadersToRemoveCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getResponseHeadersToRemoveList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getRoute()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    move-result-object v0

    return-object v0
.end method

.method public getRouteOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/k;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 5
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    .line 6
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    .line 7
    :cond_2
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 8
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    .line 9
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    .line 10
    :cond_3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    .line 12
    :cond_4
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->decorator_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getDecorator()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    .line 14
    :cond_5
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_6

    .line 15
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;

    .line 16
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    .line 17
    :cond_6
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 18
    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$d;->a:Lcom/google/protobuf/e1;

    invoke-virtual {v5}, Lcom/google/protobuf/e1;->j()Lcom/google/protobuf/e1$b;

    move-result-object v5

    .line 19
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v5

    .line 20
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Struct;

    invoke-virtual {v5, v4}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v4

    .line 21
    invoke-virtual {v4}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v4

    const/16 v5, 0x8

    .line 22
    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    .line 23
    :goto_2
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    const/16 v4, 0x9

    .line 24
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    .line 25
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    .line 26
    :goto_3
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    const/16 v4, 0xa

    .line 27
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    .line 28
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 29
    :goto_4
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 30
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v3}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    add-int/2addr v0, v4

    .line 31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 32
    :goto_5
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 33
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v2}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    add-int/2addr v0, v3

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 35
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$e;->a:Lcom/google/protobuf/e1;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->j()Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Any;

    invoke-virtual {v3, v2}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v2

    const/16 v3, 0xd

    .line 40
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_6

    .line 41
    :cond_c
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->name_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xe

    .line 42
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->name_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_d
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    if-eqz v1, :cond_e

    const/16 v1, 0xf

    .line 44
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_e
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_f

    const/16 v1, 0x10

    .line 46
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getPerRequestBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_f
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_10

    .line 48
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;

    .line 49
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_10
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTracingOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/o;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    move-result-object v0

    return-object v0
.end method

.method public getTypedPerFilterConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getTypedPerFilterConfigMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTypedPerFilterConfigCount()I
    .locals 1

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getTypedPerFilterConfigMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTypedPerFilterConfigOrDefault(Ljava/lang/String;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;
    .locals 2

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

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

    check-cast p2, Lcom/google/protobuf/Any;

    :cond_0
    return-object p2
.end method

.method public getTypedPerFilterConfigOrThrow(Ljava/lang/String;)Lcom/google/protobuf/Any;
    .locals 2

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

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

    check-cast p1, Lcom/google/protobuf/Any;

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasDecorator()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->decorator_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDirectResponse()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFilterAction()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMatch()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMetadata()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPerRequestBufferLimitBytes()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRedirect()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRoute()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTracing()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasMatch()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasMetadata()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasDecorator()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getDecorator()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRequestHeadersToAddCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRequestHeadersToAddList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRequestHeadersToRemoveCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getResponseHeadersToAddCount()I

    move-result v1

    if-lez v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getResponseHeadersToAddList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getResponseHeadersToRemoveCount()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasTracing()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->hasPerRequestBufferLimitBytes()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getPerRequestBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_b
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    const/4 v2, 0x7

    if-eq v1, v2, :cond_d

    const/16 v2, 0x11

    if-eq v1, v2, :cond_c

    goto :goto_1

    :cond_c
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getFilterAction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_d
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getDirectResponse()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_e
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRedirect()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_f
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getRoute()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 31
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetMapField(I)Lcom/google/protobuf/g1;
    .locals 3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

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

    .line 3
    :cond_1
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;->u0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$c;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->match_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RedirectAction;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->decorator_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getDecorator()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Decorator;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/DirectResponseAction;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v0

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$d;->a:Lcom/google/protobuf/e1;

    const/16 v2, 0x8

    .line 14
    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/g1;Lcom/google/protobuf/e1;I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/16 v2, 0x9

    .line 16
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 17
    :goto_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/16 v2, 0xa

    .line 18
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    .line 19
    :goto_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0xb

    .line 20
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 21
    :cond_8
    :goto_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    const/16 v1, 0xc

    .line 22
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v2, v0}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 23
    :cond_9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v0

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route$e;->a:Lcom/google/protobuf/e1;

    const/16 v2, 0xd

    .line 24
    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/g1;Lcom/google/protobuf/e1;I)V

    .line 25
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xe

    .line 26
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->name_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 27
    :cond_a
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    if-eqz v0, :cond_b

    const/16 v0, 0xf

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Tracing;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 29
    :cond_b
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_c

    const/16 v0, 0x10

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->getPerRequestBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 31
    :cond_c
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->actionCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_d

    .line 32
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->action_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/FilterAction;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 33
    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
