.class public final enum Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/trace/v1/TraceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SamplerCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

.field public static final enum CONSTANT_SAMPLER:Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

.field public static final enum PROBABILITY_SAMPLER:Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

.field public static final enum RATE_LIMITING_SAMPLER:Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

.field public static final enum SAMPLER_NOT_SET:Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    const-string v1, "PROBABILITY_SAMPLER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;->PROBABILITY_SAMPLER:Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    .line 2
    new-instance v1, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    const-string v4, "CONSTANT_SAMPLER"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;->CONSTANT_SAMPLER:Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    .line 3
    new-instance v4, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    const-string v6, "RATE_LIMITING_SAMPLER"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;->RATE_LIMITING_SAMPLER:Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    .line 4
    new-instance v6, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    const-string v8, "SAMPLER_NOT_SET"

    invoke-direct {v6, v8, v7, v2}, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;->SAMPLER_NOT_SET:Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    const/4 v8, 0x4

    new-array v8, v8, [Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 5
    sput-object v8, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;->$VALUES:[Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

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
    iput p3, p0, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;->RATE_LIMITING_SAMPLER:Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;->CONSTANT_SAMPLER:Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;->PROBABILITY_SAMPLER:Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;->SAMPLER_NOT_SET:Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;->forNumber(I)Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;
    .locals 1

    .line 1
    const-class v0, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    return-object p0
.end method

.method public static values()[Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;
    .locals 1

    sget-object v0, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;->$VALUES:[Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    invoke-virtual {v0}, [Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/opencensus/proto/trace/v1/TraceConfig$SamplerCase;->value:I

    return v0
.end method
