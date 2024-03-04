.class public Lde/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:J

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lde/c;->a:J

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lde/c;->b:I

    return-void
.end method

.method private static a()Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;

    invoke-direct {v2}, Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;-><init>()V

    sget-wide v3, Lde/c;->a:J

    div-long v5, v0, v3

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;->seconds(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;

    move-result-object v2

    rem-long/2addr v0, v3

    long-to-int v1, v0

    sget v0, Lde/c;->b:I

    mul-int v1, v1, v0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;->nanos(Ljava/lang/Integer;)Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;J)Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;-><init>()V

    new-instance v1, Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;

    invoke-direct {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;-><init>()V

    .line 2
    invoke-virtual {v1, p0}, Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;->name(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;

    move-result-object p0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;->count(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;

    move-result-object p0

    .line 4
    invoke-static {}, Lde/c;->a()Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;->timestamp(Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;)Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;

    move-result-object p0

    .line 6
    invoke-virtual {v0, p0}, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->counter_metric(Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;)Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;J)Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;-><init>()V

    new-instance v1, Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric$Builder;

    invoke-direct {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric$Builder;-><init>()V

    .line 2
    invoke-virtual {v1, p0}, Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric$Builder;->name(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric$Builder;

    move-result-object p0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric$Builder;->latency_millis(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric$Builder;

    move-result-object p0

    .line 4
    invoke-static {}, Lde/c;->a()Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric$Builder;->timestamp(Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;)Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric;

    move-result-object p0

    .line 6
    invoke-virtual {v0, p0}, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->timer_metric(Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric;)Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;

    move-result-object p0

    return-object p0
.end method
