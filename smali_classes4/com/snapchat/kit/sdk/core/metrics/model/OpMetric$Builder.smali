.class public final Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public counter_metric:Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;

.field public level_metric:Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;

.field public timer_metric:Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;
    .locals 5

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->counter_metric:Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->timer_metric:Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric;

    iget-object v3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->level_metric:Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric;Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;

    move-result-object v0

    return-object v0
.end method

.method public final counter_metric(Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;)Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->counter_metric:Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->timer_metric:Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->level_metric:Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;

    return-object p0
.end method

.method public final level_metric(Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;)Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->level_metric:Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->counter_metric:Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->timer_metric:Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric;

    return-object p0
.end method

.method public final timer_metric(Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric;)Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->timer_metric:Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->counter_metric:Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->level_metric:Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;

    return-object p0
.end method
