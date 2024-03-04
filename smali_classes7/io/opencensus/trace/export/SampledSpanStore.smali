.class public abstract Lio/opencensus/trace/export/SampledSpanStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/opencensus/trace/export/SampledSpanStore$b;,
        Lio/opencensus/trace/export/SampledSpanStore$LatencyBucketBoundaries;,
        Lio/opencensus/trace/export/SampledSpanStore$c;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lio/opencensus/trace/export/SampledSpanStore;
    .locals 2

    new-instance v0, Lio/opencensus/trace/export/SampledSpanStore$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/opencensus/trace/export/SampledSpanStore$b;-><init>(Lio/opencensus/trace/export/SampledSpanStore$a;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
