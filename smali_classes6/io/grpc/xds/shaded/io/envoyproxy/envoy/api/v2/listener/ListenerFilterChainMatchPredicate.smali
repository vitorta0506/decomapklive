.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$RuleCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$d;
    }
.end annotation


# static fields
.field public static final AND_MATCH_FIELD_NUMBER:I = 0x2

.field public static final ANY_MATCH_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

.field public static final DESTINATION_PORT_RANGE_FIELD_NUMBER:I = 0x5

.field public static final NOT_MATCH_FIELD_NUMBER:I = 0x3

.field public static final OR_MATCH_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private ruleCase_:I

.field private rule_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->memoizedIsInitialized:B

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_f

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_b

    const/16 v4, 0x12

    if-eq v2, v4, :cond_8

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_5

    const/16 v4, 0x20

    if-eq v2, v4, :cond_4

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 15
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range$b;

    move-result-object v5

    .line 16
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 17
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range$b;

    .line 18
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    .line 19
    :cond_3
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    const/4 v2, 0x4

    .line 21
    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    goto :goto_0

    .line 22
    :cond_5
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 23
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

    move-result-object v5

    .line 24
    :cond_6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    if-eqz v5, :cond_7

    .line 25
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

    .line 26
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    .line 27
    :cond_7
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    goto/16 :goto_0

    .line 28
    :cond_8
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 29
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet$b;

    move-result-object v5

    .line 30
    :cond_9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    if-eqz v5, :cond_a

    .line 31
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet$b;

    .line 32
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    .line 33
    :cond_a
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    goto/16 :goto_0

    .line 34
    :cond_b
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    if-ne v2, v3, :cond_c

    .line 35
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet$b;

    move-result-object v5

    .line 36
    :cond_c
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    if-eqz v5, :cond_d

    .line 37
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet$b;

    .line 38
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    .line 39
    :cond_d
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_e
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 40
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 41
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 42
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 44
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 45
    :cond_f
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 46
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    return p1
.end method

.method static synthetic access$1500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1600()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->g:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getRuleCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$RuleCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getRuleCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$RuleCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    if-eq v1, v0, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getDestinationPortRange()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getDestinationPortRange()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 8
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getAnyMatch()Z

    move-result v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getAnyMatch()Z

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    .line 10
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getNotMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getNotMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 12
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getAndMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getAndMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 14
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getOrMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getOrMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 16
    :cond_8
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public getAndMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    move-result-object v0

    return-object v0
.end method

.method public getAndMatchOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    move-result-object v0

    return-object v0
.end method

.method public getAnyMatch()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object v0
.end method

.method public getDestinationPortRange()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationPortRangeOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;

    move-result-object v0

    return-object v0
.end method

.method public getNotMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    move-result-object v0

    return-object v0
.end method

.method public getNotMatchOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    move-result-object v0

    return-object v0
.end method

.method public getOrMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    move-result-object v0

    return-object v0
.end method

.method public getOrMatchOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRuleCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$RuleCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$RuleCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$RuleCase;

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
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    .line 4
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 14
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;

    .line 17
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasAndMatch()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAnyMatch()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDestinationPortRange()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNotMatch()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOrMatch()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getDestinationPortRange()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getAnyMatch()Z

    move-result v1

    .line 6
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getNotMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getAndMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_5
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->getOrMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 10
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/d;->h:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$c;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate$MatchSet;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 11
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->ruleCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilterChainMatchPredicate;->rule_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Int32Range;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
