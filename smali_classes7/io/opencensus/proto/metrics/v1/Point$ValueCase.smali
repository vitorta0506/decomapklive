.class public final enum Lio/opencensus/proto/metrics/v1/Point$ValueCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/metrics/v1/Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/opencensus/proto/metrics/v1/Point$ValueCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/opencensus/proto/metrics/v1/Point$ValueCase;

.field public static final enum DISTRIBUTION_VALUE:Lio/opencensus/proto/metrics/v1/Point$ValueCase;

.field public static final enum DOUBLE_VALUE:Lio/opencensus/proto/metrics/v1/Point$ValueCase;

.field public static final enum INT64_VALUE:Lio/opencensus/proto/metrics/v1/Point$ValueCase;

.field public static final enum SUMMARY_VALUE:Lio/opencensus/proto/metrics/v1/Point$ValueCase;

.field public static final enum VALUE_NOT_SET:Lio/opencensus/proto/metrics/v1/Point$ValueCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    const-string v1, "INT64_VALUE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lio/opencensus/proto/metrics/v1/Point$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->INT64_VALUE:Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    .line 2
    new-instance v1, Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    const-string v4, "DOUBLE_VALUE"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lio/opencensus/proto/metrics/v1/Point$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->DOUBLE_VALUE:Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    .line 3
    new-instance v4, Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    const-string v7, "DISTRIBUTION_VALUE"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lio/opencensus/proto/metrics/v1/Point$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->DISTRIBUTION_VALUE:Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    .line 4
    new-instance v7, Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    const-string v9, "SUMMARY_VALUE"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v6, v10}, Lio/opencensus/proto/metrics/v1/Point$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->SUMMARY_VALUE:Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    .line 5
    new-instance v9, Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    const-string v11, "VALUE_NOT_SET"

    invoke-direct {v9, v11, v8, v2}, Lio/opencensus/proto/metrics/v1/Point$ValueCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->VALUE_NOT_SET:Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    new-array v10, v10, [Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v4, v10, v3

    aput-object v7, v10, v6

    aput-object v9, v10, v8

    .line 6
    sput-object v10, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->$VALUES:[Lio/opencensus/proto/metrics/v1/Point$ValueCase;

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
    iput p3, p0, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/opencensus/proto/metrics/v1/Point$ValueCase;
    .locals 1

    if-eqz p0, :cond_4

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
    sget-object p0, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->SUMMARY_VALUE:Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->DISTRIBUTION_VALUE:Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->DOUBLE_VALUE:Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->INT64_VALUE:Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->VALUE_NOT_SET:Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/opencensus/proto/metrics/v1/Point$ValueCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->forNumber(I)Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/opencensus/proto/metrics/v1/Point$ValueCase;
    .locals 1

    .line 1
    const-class v0, Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    return-object p0
.end method

.method public static values()[Lio/opencensus/proto/metrics/v1/Point$ValueCase;
    .locals 1

    sget-object v0, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->$VALUES:[Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    invoke-virtual {v0}, [Lio/opencensus/proto/metrics/v1/Point$ValueCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/opencensus/proto/metrics/v1/Point$ValueCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/opencensus/proto/metrics/v1/Point$ValueCase;->value:I

    return v0
.end method