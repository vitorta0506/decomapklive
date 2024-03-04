.class public final Lcom/snapchat/kit/sdk/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/a/a$a;
    }
.end annotation


# instance fields
.field private final a:Ldg/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldg/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/snapchat/kit/sdk/a/a$a;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldg/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldg/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/a/a;->a:Ldg/a;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/snapchat/kit/sdk/a/a;->b:Ljava/util/Map;

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "1.13.2"

    const/16 v1, 0x2e

    const/16 v2, 0x5f

    .line 1
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "%s:login:%s"

    .line 2
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/snapchat/kit/sdk/a/a$a;)V
    .locals 4
    .param p1    # Lcom/snapchat/kit/sdk/a/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/kit/sdk/a/a;->a:Ldg/a;

    invoke-interface {v0}, Ldg/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/b;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TokenRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/kit/sdk/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1

    .line 3
    invoke-static {v1, v2, v3}, Lde/c;->b(Ljava/lang/String;J)Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;

    move-result-object v1

    invoke-interface {v0, v1}, Lde/b;->push(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/snapchat/kit/sdk/a/a;->b:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/snapchat/kit/sdk/a/a$a;Z)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/kit/sdk/a/a;->a:Ldg/a;

    invoke-interface {v0}, Ldg/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/b;

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/snapchat/kit/sdk/a/a;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "TokenLatency"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/snapchat/kit/sdk/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 5
    invoke-static {p1, v1, v2}, Lde/c;->c(Ljava/lang/String;J)Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;

    move-result-object p1

    invoke-interface {v0, p1}, Lde/b;->push(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "TokenFailure"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/snapchat/kit/sdk/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x1

    .line 8
    invoke-static {p1, v1, v2}, Lde/c;->b(Ljava/lang/String;J)Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;

    move-result-object p1

    invoke-interface {v0, p1}, Lde/b;->push(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
