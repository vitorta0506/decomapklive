.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RuleCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

.field public static final enum AND_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

.field public static final enum ANY_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

.field public static final enum DESTINATION_PORT_RANGE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

.field public static final enum NOT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

.field public static final enum OR_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

.field public static final enum RULE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    const-string v1, "OR_MATCH"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->OR_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    const-string v4, "AND_MATCH"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->AND_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    const-string v6, "NOT_MATCH"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->NOT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    .line 4
    new-instance v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    const-string v8, "ANY_MATCH"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->ANY_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    .line 5
    new-instance v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    const-string v10, "DESTINATION_PORT_RANGE"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->DESTINATION_PORT_RANGE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    .line 6
    new-instance v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    const-string v12, "RULE_NOT_SET"

    invoke-direct {v10, v12, v11, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->RULE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    const/4 v12, 0x6

    new-array v12, v12, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    .line 7
    sput-object v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->DESTINATION_PORT_RANGE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->ANY_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->NOT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->AND_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->OR_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    return-object p0

    .line 6
    :cond_5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->RULE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/ListenerFilterChainMatchPredicate$RuleCase;->value:I

    return v0
.end method
