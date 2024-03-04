.class public final Lhe/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lde/a<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/kit/sdk/core/config/f;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lge/i;

.field private final d:Lcom/snapchat/kit/sdk/core/metrics/skate/SkateClient;

.field private final e:Lfe/a;


# direct methods
.method constructor <init>(Lcom/snapchat/kit/sdk/core/config/f;Landroid/content/SharedPreferences;Lge/i;Lcom/snapchat/kit/sdk/core/metrics/skate/SkateClient;Lfe/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lhe/a;->a:Lcom/snapchat/kit/sdk/core/config/f;

    .line 3
    iput-object p2, p0, Lhe/a;->b:Landroid/content/SharedPreferences;

    .line 4
    iput-object p3, p0, Lhe/a;->c:Lge/i;

    .line 5
    iput-object p4, p0, Lhe/a;->d:Lcom/snapchat/kit/sdk/core/metrics/skate/SkateClient;

    .line 6
    iput-object p5, p0, Lhe/a;->e:Lfe/a;

    return-void
.end method

.method static synthetic d(Lhe/a;)Lcom/snapchat/kit/sdk/core/config/f;
    .locals 0

    iget-object p0, p0, Lhe/a;->a:Lcom/snapchat/kit/sdk/core/config/f;

    return-object p0
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
            "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhe/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lhe/a;->e:Lfe/a;

    .line 2
    invoke-virtual {v1, p1}, Lfe/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.snapchat.kit.sdk.core.metrics.skate.unsentSkateEvents"

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
            "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;",
            ">;",
            "Lde/a$a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    .line 3
    new-instance v2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    invoke-direct {v2}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;-><init>()V

    .line 4
    invoke-virtual {v2, v1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event(Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    invoke-direct {v2}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;-><init>()V

    .line 7
    invoke-virtual {v2, v1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_data(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;

    invoke-direct {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;-><init>()V

    .line 11
    invoke-virtual {p1, v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->server_events(Ljava/util/List;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;

    move-result-object p1

    iget-object v0, p0, Lhe/a;->c:Lge/i;

    .line 12
    invoke-virtual {v0}, Lge/i;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->max_sequence_id_on_instance(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lhe/a;->d:Lcom/snapchat/kit/sdk/core/metrics/skate/SkateClient;

    invoke-interface {v0, p1}, Lcom/snapchat/kit/sdk/core/metrics/skate/SkateClient;->postSkateEvents(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;)Lretrofit2/Call;

    move-result-object p1

    .line 15
    new-instance v0, Lhe/a$a;

    invoke-direct {v0, p0, p2}, Lhe/a$a;-><init>(Lhe/a;Lde/a$a;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lde/f<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lhe/a;->b:Landroid/content/SharedPreferences;

    const-string v2, "com.snapchat.kit.sdk.core.metrics.skate.unsentSkateEvents"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lhe/a;->e:Lfe/a;

    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v3, v1}, Lfe/a;->b(Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
