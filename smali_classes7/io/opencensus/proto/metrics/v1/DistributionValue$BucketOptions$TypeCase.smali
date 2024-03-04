.class public final enum Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;

.field public static final enum EXPLICIT:Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;

.field public static final enum TYPE_NOT_SET:Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;

    const-string v1, "EXPLICIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;->EXPLICIT:Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;

    .line 2
    new-instance v1, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;

    const-string v4, "TYPE_NOT_SET"

    invoke-direct {v1, v4, v3, v2}, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;->TYPE_NOT_SET:Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;

    const/4 v4, 0x2

    new-array v4, v4, [Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;->$VALUES:[Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;

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
    iput p3, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;->EXPLICIT:Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;->TYPE_NOT_SET:Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;->forNumber(I)Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;
    .locals 1

    .line 1
    const-class v0, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;

    return-object p0
.end method

.method public static values()[Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;
    .locals 1

    sget-object v0, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;->$VALUES:[Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;

    invoke-virtual {v0}, [Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/opencensus/proto/metrics/v1/DistributionValue$BucketOptions$TypeCase;->value:I

    return v0
.end method
