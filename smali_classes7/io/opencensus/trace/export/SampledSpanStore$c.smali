.class public abstract Lio/opencensus/trace/export/SampledSpanStore$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/export/SampledSpanStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/util/Map;)Lio/opencensus/trace/export/SampledSpanStore$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lio/opencensus/trace/Status$CanonicalCode;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/opencensus/trace/export/SampledSpanStore$c;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/opencensus/trace/export/a;

    new-instance v1, Ljava/util/HashMap;

    const-string v2, "numbersOfLatencySampledSpans"

    .line 2
    invoke-static {p0, v2}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    new-instance v1, Ljava/util/HashMap;

    const-string v2, "numbersOfErrorSampledSpans"

    .line 4
    invoke-static {p1, v2}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 5
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lio/opencensus/trace/export/a;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/opencensus/trace/Status$CanonicalCode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
