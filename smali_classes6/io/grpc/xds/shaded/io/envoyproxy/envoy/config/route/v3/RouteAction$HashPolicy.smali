.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HashPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$PolicySpecifierCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$e;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$g;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$f;
    }
.end annotation


# static fields
.field public static final CONNECTION_PROPERTIES_FIELD_NUMBER:I = 0x3

.field public static final COOKIE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

.field public static final FILTER_STATE_FIELD_NUMBER:I = 0x6

.field public static final HEADER_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_PARAMETER_FIELD_NUMBER:I = 0x5

.field public static final TERMINAL_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private policySpecifierCase_:I

.field private policySpecifier_:Ljava/lang/Object;

.field private terminal_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->memoizedIsInitialized:B

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_12

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_11

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_e

    const/16 v4, 0x12

    if-eq v2, v4, :cond_b

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_8

    const/16 v4, 0x20

    if-eq v2, v4, :cond_7

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x32

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 15
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState$b;

    move-result-object v5

    .line 16
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 17
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState$b;

    .line 18
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    .line 19
    :cond_3
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    goto :goto_0

    .line 20
    :cond_4
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 21
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter$b;

    move-result-object v5

    .line 22
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 23
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter$b;

    .line 24
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    .line 25
    :cond_6
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    goto :goto_0

    .line 26
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    iput-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->terminal_:Z

    goto :goto_0

    .line 27
    :cond_8
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    .line 28
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties$b;

    move-result-object v5

    .line 29
    :cond_9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_a

    .line 30
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties$b;

    .line 31
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    .line 32
    :cond_a
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    goto/16 :goto_0

    .line 33
    :cond_b
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 34
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie$b;

    move-result-object v5

    .line 35
    :cond_c
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_d

    .line 36
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie$b;

    .line 37
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    .line 38
    :cond_d
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    goto/16 :goto_0

    .line 39
    :cond_e
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    if-ne v2, v3, :cond_f

    .line 40
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header$b;

    move-result-object v5

    .line 41
    :cond_f
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_10

    .line 42
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header$b;

    .line 43
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    .line 44
    :cond_10
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I
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

    .line 45
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 46
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 47
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 49
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 50
    :cond_12
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 51
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$6100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->terminal_:Z

    return p1
.end method

.method static synthetic access$6502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    return p1
.end method

.method static synthetic access$6600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$6700()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->E:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getTerminal()Z

    move-result v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getTerminal()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getPolicySpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$PolicySpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getPolicySpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$PolicySpecifierCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 7
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    if-eq v1, v0, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getFilterState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getFilterState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 10
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getQueryParameter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getQueryParameter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 12
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getConnectionProperties()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getConnectionProperties()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 14
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getCookie()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getCookie()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 16
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getHeader()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getHeader()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 18
    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v3

    :cond_a
    return v0
.end method

.method public getConnectionProperties()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPropertiesOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$c;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;

    move-result-object v0

    return-object v0
.end method

.method public getCookie()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;

    move-result-object v0

    return-object v0
.end method

.method public getCookieOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    return-object v0
.end method

.method public getFilterState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;

    move-result-object v0

    return-object v0
.end method

.method public getFilterStateOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$f;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPolicySpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$PolicySpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$PolicySpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$PolicySpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public getQueryParameter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;

    move-result-object v0

    return-object v0
.end method

.method public getQueryParameterOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$g;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;

    .line 4
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;

    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->terminal_:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 12
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;

    .line 18
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTerminal()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->terminal_:Z

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasConnectionProperties()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCookie()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFilterState()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeader()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasQueryParameter()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getTerminal()Z

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getFilterState()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getQueryParameter()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getConnectionProperties()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getCookie()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_5
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->getHeader()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->F:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Header;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$Cookie;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$ConnectionProperties;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->terminal_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$QueryParameter;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->policySpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$FilterState;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
