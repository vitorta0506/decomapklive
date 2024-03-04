.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$PathSpecifierCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$e;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$d;
    }
.end annotation


# static fields
.field public static final CASE_SENSITIVE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

.field public static final GRPC_FIELD_NUMBER:I = 0x8

.field public static final HEADERS_FIELD_NUMBER:I = 0x6

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x2

.field public static final PREFIX_FIELD_NUMBER:I = 0x1

.field public static final QUERY_PARAMETERS_FIELD_NUMBER:I = 0x7

.field public static final REGEX_FIELD_NUMBER:I = 0x3

.field public static final RUNTIME_FRACTION_FIELD_NUMBER:I = 0x9

.field public static final SAFE_REGEX_FIELD_NUMBER:I = 0xa

.field public static final TLS_CONTEXT_FIELD_NUMBER:I = 0xb

.field private static final serialVersionUID:J


# instance fields
.field private caseSensitive_:Lcom/google/protobuf/BoolValue;

.field private grpc_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

.field private headers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HeaderMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private pathSpecifierCase_:I

.field private pathSpecifier_:Ljava/lang/Object;

.field private queryParameters_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private runtimeFraction_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

.field private tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->memoizedIsInitialized:B

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;-><init>()V

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-nez v1, :cond_b

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_0

    .line 15
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_2

    .line 16
    :sswitch_0
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    if-eqz v4, :cond_1

    .line 17
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions$b;

    move-result-object v5

    .line 18
    :cond_1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    if-eqz v5, :cond_0

    .line 19
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions$b;

    .line 20
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    goto :goto_0

    .line 21
    :sswitch_1
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/16 v6, 0xa

    if-ne v4, v6, :cond_2

    .line 22
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher$c;

    move-result-object v5

    .line 23
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 24
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;

    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher$c;

    .line 25
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    .line 26
    :cond_3
    iput v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    goto :goto_0

    .line 27
    :sswitch_2
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->runtimeFraction_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    if-eqz v4, :cond_4

    .line 28
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent$b;

    move-result-object v5

    .line 29
    :cond_4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->runtimeFraction_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    if-eqz v5, :cond_0

    .line 30
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent$b;

    .line 31
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->runtimeFraction_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    goto :goto_0

    .line 32
    :sswitch_3
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->grpc_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    if-eqz v4, :cond_5

    .line 33
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions$b;

    move-result-object v5

    .line 34
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->grpc_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    if-eqz v5, :cond_0

    .line 35
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions$b;

    .line 36
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->grpc_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    goto/16 :goto_0

    :sswitch_4
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_6

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 38
    :cond_6
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    .line 39
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher;

    .line 40
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_7

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 42
    :cond_7
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    .line 43
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HeaderMatcher;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HeaderMatcher;

    .line 44
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 45
    :sswitch_6
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->caseSensitive_:Lcom/google/protobuf/BoolValue;

    if-eqz v4, :cond_8

    .line 46
    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v5

    .line 47
    :cond_8
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/BoolValue;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->caseSensitive_:Lcom/google/protobuf/BoolValue;

    if-eqz v5, :cond_0

    .line 48
    invoke-virtual {v5, v4}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 49
    invoke-virtual {v5}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->caseSensitive_:Lcom/google/protobuf/BoolValue;

    goto/16 :goto_0

    .line 50
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 51
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    .line 52
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 53
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 54
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    .line 55
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 56
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 57
    iput v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    .line 58
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_a
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

    .line 59
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 60
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 61
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_9

    .line 62
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    :cond_9
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_a

    .line 63
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    .line 64
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 65
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_b
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_c

    .line 66
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    :cond_c
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_d

    .line 67
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    .line 68
    :cond_d
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 69
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x32 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x52 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->caseSensitive_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$2202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->runtimeFraction_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    return-object p1
.end method

.method static synthetic access$2300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->grpc_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    return-object p1
.end method

.method static synthetic access$2602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    return-object p1
.end method

.method static synthetic access$2702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    return p1
.end method

.method static synthetic access$2800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$3100()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->w:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasCaseSensitive()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasCaseSensitive()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasCaseSensitive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getCaseSensitive()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getCaseSensitive()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasRuntimeFraction()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasRuntimeFraction()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasRuntimeFraction()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getRuntimeFraction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getRuntimeFraction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getHeadersList()Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getHeadersList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getQueryParametersList()Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getQueryParametersList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasGrpc()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasGrpc()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasGrpc()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getGrpc()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getGrpc()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasTlsContext()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasTlsContext()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 21
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasTlsContext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 24
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getPathSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$PathSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getPathSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$PathSpecifierCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 25
    :cond_c
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    if-eq v1, v0, :cond_10

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    const/16 v2, 0xa

    if-eq v1, v2, :cond_d

    goto :goto_0

    .line 26
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getSafeRegex()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getSafeRegex()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 28
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getRegex()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getRegex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 30
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 32
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 34
    :cond_11
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v3

    :cond_12
    return v0
.end method

.method public getCaseSensitive()Lcom/google/protobuf/BoolValue;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->caseSensitive_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCaseSensitiveOrBuilder()Lcom/google/protobuf/l;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getCaseSensitive()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    return-object v0
.end method

.method public getGrpc()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->grpc_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGrpcOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$d;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getGrpc()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HeaderMatcher;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HeaderMatcher;

    return-object p1
.end method

.method public getHeadersCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HeaderMatcher;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    return-object v0
.end method

.method public getHeadersOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/e;

    return-object p1
.end method

.method public getHeadersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPathSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$PathSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$PathSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$PathSpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getPrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getQueryParameters(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher;

    return-object p1
.end method

.method public getQueryParametersCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getQueryParametersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/QueryParameterMatcher;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    return-object v0
.end method

.method public getQueryParametersOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/g;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/g;

    return-object p1
.end method

.method public getQueryParametersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    return-object v0
.end method

.method public getRegex()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getRegexBytes()Lcom/google/protobuf/ByteString;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRuntimeFraction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->runtimeFraction_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRuntimeFractionOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/k0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getRuntimeFraction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    move-result-object v0

    return-object v0
.end method

.method public getSafeRegex()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;

    move-result-object v0

    return-object v0
.end method

.method public getSafeRegexOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/i;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 5
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6
    :cond_2
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 7
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8
    :cond_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->caseSensitive_:Lcom/google/protobuf/BoolValue;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getCaseSensitive()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    const/4 v2, 0x0

    .line 10
    :goto_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    const/4 v3, 0x6

    .line 11
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

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
    :goto_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x7

    .line 14
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    .line 15
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16
    :cond_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->grpc_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getGrpc()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->runtimeFraction_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getRuntimeFraction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    .line 21
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;

    .line 22
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTlsContextOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$e;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasCaseSensitive()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->caseSensitive_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGrpc()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->grpc_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

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

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrefix()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRegex()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRuntimeFraction()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->runtimeFraction_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSafeRegex()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTlsContext()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasCaseSensitive()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getCaseSensitive()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasRuntimeFraction()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getRuntimeFraction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getHeadersCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getHeadersList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getQueryParametersCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getQueryParametersList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasGrpc()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getGrpc()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->hasTlsContext()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    const/16 v2, 0xa

    if-eq v1, v2, :cond_7

    goto :goto_1

    :cond_7
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getSafeRegex()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_8
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getRegex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_9
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_a
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
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
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->x:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$c;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->caseSensitive_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getCaseSensitive()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x6

    .line 10
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->headers_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_4
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v1, 0x7

    .line 12
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->queryParameters_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->grpc_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getGrpc()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$GrpcRouteMatchOptions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->runtimeFraction_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getRuntimeFraction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RuntimeFractionalPercent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifierCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    .line 18
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->pathSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatcher;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch;->getTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteMatch$TlsContextMatchOptions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
