.class public final Lee/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lde/a<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;

.field private final c:Lfe/a;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;Lfe/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lee/a;->a:Landroid/content/SharedPreferences;

    .line 3
    iput-object p2, p0, Lee/a;->b:Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;

    .line 4
    iput-object p3, p0, Lee/a;->c:Lfe/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lde/f<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lee/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lee/a;->c:Lfe/a;

    .line 2
    invoke-virtual {v1, p1}, Lfe/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "unsent_operational_metrics"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b(Ljava/util/List;Lde/a$a;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
            ">;",
            "Lde/a$a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lee/a;->b:Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;

    .line 6
    iget-object v5, v4, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;->counter_metric:Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;

    if-eqz v5, :cond_1

    .line 7
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v5, v4, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;->timer_metric:Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric;

    if-eqz v5, :cond_2

    .line 9
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object v4, v4, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;->level_metric:Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;

    if-eqz v4, :cond_0

    .line 11
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    new-instance p1, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;

    invoke-direct {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;-><init>()V

    .line 13
    invoke-virtual {p1, v1}, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;->counters(Ljava/util/List;)Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v2}, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;->timers(Ljava/util/List;)Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;->levels(Ljava/util/List;)Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/Metrics;

    move-result-object p1

    .line 17
    invoke-interface {v0, p1}, Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;->postOperationalMetrics(Lcom/snapchat/kit/sdk/core/metrics/model/Metrics;)Lretrofit2/Call;

    move-result-object p1

    .line 18
    new-instance v0, Lee/a$a;

    invoke-direct {v0, p0, p2}, Lee/a$a;-><init>(Lee/a;Lde/a$a;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lde/f<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lee/a;->c:Lfe/a;

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p0, Lee/a;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "unsent_operational_metrics"

    const/4 v4, 0x0

    .line 2
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, v2}, Lfe/a;->b(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
