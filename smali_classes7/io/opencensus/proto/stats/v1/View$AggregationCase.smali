.class public final enum Lio/opencensus/proto/stats/v1/View$AggregationCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/stats/v1/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AggregationCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/opencensus/proto/stats/v1/View$AggregationCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/opencensus/proto/stats/v1/View$AggregationCase;

.field public static final enum AGGREGATION_NOT_SET:Lio/opencensus/proto/stats/v1/View$AggregationCase;

.field public static final enum COUNT_AGGREGATION:Lio/opencensus/proto/stats/v1/View$AggregationCase;

.field public static final enum DISTRIBUTION_AGGREGATION:Lio/opencensus/proto/stats/v1/View$AggregationCase;

.field public static final enum LAST_VALUE_AGGREGATION:Lio/opencensus/proto/stats/v1/View$AggregationCase;

.field public static final enum SUM_AGGREGATION:Lio/opencensus/proto/stats/v1/View$AggregationCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lio/opencensus/proto/stats/v1/View$AggregationCase;

    const-string v1, "COUNT_AGGREGATION"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lio/opencensus/proto/stats/v1/View$AggregationCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/opencensus/proto/stats/v1/View$AggregationCase;->COUNT_AGGREGATION:Lio/opencensus/proto/stats/v1/View$AggregationCase;

    .line 2
    new-instance v1, Lio/opencensus/proto/stats/v1/View$AggregationCase;

    const-string v4, "SUM_AGGREGATION"

    const/4 v5, 0x1

    const/4 v6, 0x6

    invoke-direct {v1, v4, v5, v6}, Lio/opencensus/proto/stats/v1/View$AggregationCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/opencensus/proto/stats/v1/View$AggregationCase;->SUM_AGGREGATION:Lio/opencensus/proto/stats/v1/View$AggregationCase;

    .line 3
    new-instance v4, Lio/opencensus/proto/stats/v1/View$AggregationCase;

    const-string v6, "LAST_VALUE_AGGREGATION"

    const/4 v7, 0x2

    const/4 v8, 0x7

    invoke-direct {v4, v6, v7, v8}, Lio/opencensus/proto/stats/v1/View$AggregationCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/opencensus/proto/stats/v1/View$AggregationCase;->LAST_VALUE_AGGREGATION:Lio/opencensus/proto/stats/v1/View$AggregationCase;

    .line 4
    new-instance v6, Lio/opencensus/proto/stats/v1/View$AggregationCase;

    const-string v8, "DISTRIBUTION_AGGREGATION"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lio/opencensus/proto/stats/v1/View$AggregationCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/opencensus/proto/stats/v1/View$AggregationCase;->DISTRIBUTION_AGGREGATION:Lio/opencensus/proto/stats/v1/View$AggregationCase;

    .line 5
    new-instance v8, Lio/opencensus/proto/stats/v1/View$AggregationCase;

    const-string v10, "AGGREGATION_NOT_SET"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v2}, Lio/opencensus/proto/stats/v1/View$AggregationCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/opencensus/proto/stats/v1/View$AggregationCase;->AGGREGATION_NOT_SET:Lio/opencensus/proto/stats/v1/View$AggregationCase;

    new-array v3, v3, [Lio/opencensus/proto/stats/v1/View$AggregationCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    aput-object v8, v3, v11

    .line 6
    sput-object v3, Lio/opencensus/proto/stats/v1/View$AggregationCase;->$VALUES:[Lio/opencensus/proto/stats/v1/View$AggregationCase;

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
    iput p3, p0, Lio/opencensus/proto/stats/v1/View$AggregationCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/opencensus/proto/stats/v1/View$AggregationCase;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/opencensus/proto/stats/v1/View$AggregationCase;->DISTRIBUTION_AGGREGATION:Lio/opencensus/proto/stats/v1/View$AggregationCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/opencensus/proto/stats/v1/View$AggregationCase;->LAST_VALUE_AGGREGATION:Lio/opencensus/proto/stats/v1/View$AggregationCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/opencensus/proto/stats/v1/View$AggregationCase;->SUM_AGGREGATION:Lio/opencensus/proto/stats/v1/View$AggregationCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/opencensus/proto/stats/v1/View$AggregationCase;->COUNT_AGGREGATION:Lio/opencensus/proto/stats/v1/View$AggregationCase;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lio/opencensus/proto/stats/v1/View$AggregationCase;->AGGREGATION_NOT_SET:Lio/opencensus/proto/stats/v1/View$AggregationCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/opencensus/proto/stats/v1/View$AggregationCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/opencensus/proto/stats/v1/View$AggregationCase;->forNumber(I)Lio/opencensus/proto/stats/v1/View$AggregationCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/opencensus/proto/stats/v1/View$AggregationCase;
    .locals 1

    .line 1
    const-class v0, Lio/opencensus/proto/stats/v1/View$AggregationCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/stats/v1/View$AggregationCase;

    return-object p0
.end method

.method public static values()[Lio/opencensus/proto/stats/v1/View$AggregationCase;
    .locals 1

    sget-object v0, Lio/opencensus/proto/stats/v1/View$AggregationCase;->$VALUES:[Lio/opencensus/proto/stats/v1/View$AggregationCase;

    invoke-virtual {v0}, [Lio/opencensus/proto/stats/v1/View$AggregationCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/opencensus/proto/stats/v1/View$AggregationCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/opencensus/proto/stats/v1/View$AggregationCase;->value:I

    return v0
.end method
