.class public final Lge/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lde/a<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Lge/i;

.field private final c:Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;

.field private final d:Lfe/a;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Lge/i;Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;Lfe/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lge/b;->a:Landroid/content/SharedPreferences;

    .line 3
    iput-object p2, p0, Lge/b;->b:Lge/i;

    .line 4
    iput-object p3, p0, Lge/b;->c:Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;

    .line 5
    iput-object p4, p0, Lge/b;->d:Lfe/a;

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
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lge/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lge/b;->d:Lfe/a;

    .line 2
    invoke-virtual {v1, p1}, Lfe/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "unsent_analytics_events"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b(Ljava/util/List;Lde/a$a;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;",
            "Lde/a$a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lge/b;->c:Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;

    .line 2
    new-instance v1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;

    invoke-direct {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;-><init>()V

    .line 3
    invoke-virtual {v1, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->server_events(Ljava/util/List;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;

    move-result-object p1

    iget-object v1, p0, Lge/b;->b:Lge/i;

    .line 4
    invoke-virtual {v1}, Lge/i;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->max_sequence_id_on_instance(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;->postAnalytics(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;)Lretrofit2/Call;

    move-result-object p1

    .line 7
    new-instance v0, Lge/b$a;

    invoke-direct {v0, p0, p2}, Lge/b$a;-><init>(Lge/b;Lde/a$a;)V

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
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lge/b;->d:Lfe/a;

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p0, Lge/b;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "unsent_analytics_events"

    const/4 v4, 0x0

    .line 2
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, v2}, Lfe/a;->b(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
