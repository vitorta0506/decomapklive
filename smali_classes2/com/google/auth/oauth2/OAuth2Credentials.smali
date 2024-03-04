.class public Lcom/google/auth/oauth2/OAuth2Credentials;
.super Lcom/google/auth/Credentials;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/OAuth2Credentials$d;,
        Lcom/google/auth/oauth2/OAuth2Credentials$c;,
        Lcom/google/auth/oauth2/OAuth2Credentials$g;,
        Lcom/google/auth/oauth2/OAuth2Credentials$e;,
        Lcom/google/auth/oauth2/OAuth2Credentials$h;,
        Lcom/google/auth/oauth2/OAuth2Credentials$f;
    }
.end annotation


# static fields
.field static final DEFAULT_EXPIRATION_MARGIN:Ljava/time/Duration;

.field static final DEFAULT_REFRESH_MARGIN:Ljava/time/Duration;

.field private static final EMPTY_EXTRA_HEADERS:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3f3d7d7ae9a55157L


# instance fields
.field private transient changeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/auth/oauth2/OAuth2Credentials$f;",
            ">;"
        }
    .end annotation
.end field

.field transient clock:Lcom/google/api/client/util/i;

.field private final expirationMargin:Ljava/time/Duration;

.field final lock:Ljava/lang/Object;

.field private final refreshMargin:Ljava/time/Duration;

.field transient refreshTask:Lcom/google/common/util/concurrent/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/e0<",
            "Lcom/google/auth/oauth2/OAuth2Credentials$h;",
            ">;"
        }
    .end annotation
.end field

.field private volatile value:Lcom/google/auth/oauth2/OAuth2Credentials$h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x5

    .line 1
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->DEFAULT_EXPIRATION_MARGIN:Ljava/time/Duration;

    const-wide/16 v0, 0x6

    .line 2
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->DEFAULT_REFRESH_MARGIN:Ljava/time/Duration;

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->EMPTY_EXTRA_HEADERS:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/auth/oauth2/OAuth2Credentials;-><init>(Lcom/google/auth/oauth2/AccessToken;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/auth/oauth2/AccessToken;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->DEFAULT_REFRESH_MARGIN:Ljava/time/Duration;

    sget-object v1, Lcom/google/auth/oauth2/OAuth2Credentials;->DEFAULT_EXPIRATION_MARGIN:Ljava/time/Duration;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/auth/oauth2/OAuth2Credentials;-><init>(Lcom/google/auth/oauth2/AccessToken;Ljava/time/Duration;Ljava/time/Duration;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/auth/oauth2/AccessToken;Ljava/time/Duration;Ljava/time/Duration;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/auth/Credentials;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->value:Lcom/google/auth/oauth2/OAuth2Credentials$h;

    .line 6
    sget-object v0, Lcom/google/api/client/util/i;->a:Lcom/google/api/client/util/i;

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->clock:Lcom/google/api/client/util/i;

    if-eqz p1, :cond_0

    .line 7
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->EMPTY_EXTRA_HEADERS:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p1, v0}, Lcom/google/auth/oauth2/OAuth2Credentials$h;->c(Lcom/google/auth/oauth2/AccessToken;Ljava/util/Map;)Lcom/google/auth/oauth2/OAuth2Credentials$h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->value:Lcom/google/auth/oauth2/OAuth2Credentials$h;

    :cond_0
    const-string p1, "refreshMargin"

    .line 8
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/Duration;

    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshMargin:Ljava/time/Duration;

    .line 9
    invoke-virtual {p2}, Ljava/time/Duration;->isNegative()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "refreshMargin can\'t be negative"

    invoke-static {p1, p2}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    const-string p1, "expirationMargin"

    .line 10
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/Duration;

    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->expirationMargin:Ljava/time/Duration;

    .line 11
    invoke-virtual {p3}, Ljava/time/Duration;->isNegative()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "expirationMargin can\'t be negative"

    .line 12
    invoke-static {p1, p2}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/auth/oauth2/OAuth2Credentials;Lcom/google/common/util/concurrent/d0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->finishRefreshAsync(Lcom/google/common/util/concurrent/d0;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/auth/oauth2/OAuth2Credentials;)Ljava/time/Duration;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshMargin:Ljava/time/Duration;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/auth/oauth2/OAuth2Credentials;)Ljava/time/Duration;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->expirationMargin:Ljava/time/Duration;

    return-object p0
.end method

.method private asyncFetch(Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/d0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/d0<",
            "Lcom/google/auth/oauth2/OAuth2Credentials$h;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->getState()Lcom/google/auth/oauth2/OAuth2Credentials$e;

    move-result-object v0

    sget-object v1, Lcom/google/auth/oauth2/OAuth2Credentials$e;->a:Lcom/google/auth/oauth2/OAuth2Credentials$e;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->value:Lcom/google/auth/oauth2/OAuth2Credentials$h;

    invoke-static {p1}, Lcom/google/common/util/concurrent/y;->d(Ljava/lang/Object;)Lcom/google/common/util/concurrent/d0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->getState()Lcom/google/auth/oauth2/OAuth2Credentials$e;

    move-result-object v2

    if-eq v2, v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->getOrCreateRefreshTask()Lcom/google/auth/oauth2/OAuth2Credentials$c;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/auth/oauth2/OAuth2Credentials$c;->b(Ljava/util/concurrent/Executor;)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 9
    :try_start_1
    invoke-direct {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->getState()Lcom/google/auth/oauth2/OAuth2Credentials$e;

    move-result-object v0

    sget-object v2, Lcom/google/auth/oauth2/OAuth2Credentials$e;->c:Lcom/google/auth/oauth2/OAuth2Credentials$e;

    if-eq v0, v2, :cond_3

    .line 10
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->value:Lcom/google/auth/oauth2/OAuth2Credentials$h;

    invoke-static {v0}, Lcom/google/common/util/concurrent/y;->d(Ljava/lang/Object;)Lcom/google/common/util/concurrent/d0;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_3
    if-eqz v1, :cond_4

    .line 11
    invoke-static {v1}, Lcom/google/auth/oauth2/OAuth2Credentials$c;->a(Lcom/google/auth/oauth2/OAuth2Credentials$c;)Lcom/google/common/util/concurrent/e0;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Credentials expired, but there is no task to refresh"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/y;->c(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/d0;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public static create(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/OAuth2Credentials;
    .locals 1

    invoke-static {}, Lcom/google/auth/oauth2/OAuth2Credentials;->newBuilder()Lcom/google/auth/oauth2/OAuth2Credentials$d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/auth/oauth2/OAuth2Credentials$d;->c(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/OAuth2Credentials$d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/auth/oauth2/OAuth2Credentials$d;->a()Lcom/google/auth/oauth2/OAuth2Credentials;

    move-result-object p0

    return-object p0
.end method

.method private finishRefreshAsync(Lcom/google/common/util/concurrent/d0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/d0<",
            "Lcom/google/auth/oauth2/OAuth2Credentials$h;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/auth/oauth2/OAuth2Credentials$h;

    iput-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->value:Lcom/google/auth/oauth2/OAuth2Credentials$h;

    .line 3
    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->changeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/auth/oauth2/OAuth2Credentials$f;

    .line 4
    invoke-interface {v3, p0}, Lcom/google/auth/oauth2/OAuth2Credentials$f;->a(Lcom/google/auth/oauth2/OAuth2Credentials;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshTask:Lcom/google/common/util/concurrent/e0;

    if-ne v2, p1, :cond_1

    .line 6
    :goto_1
    iput-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshTask:Lcom/google/common/util/concurrent/e0;

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    .line 7
    :catch_0
    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshTask:Lcom/google/common/util/concurrent/e0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, p1, :cond_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 8
    :catch_1
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshTask:Lcom/google/common/util/concurrent/e0;

    if-ne v2, p1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    :goto_2
    monitor-exit v0

    return-void

    .line 11
    :goto_3
    iget-object v3, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshTask:Lcom/google/common/util/concurrent/e0;

    if-ne v3, p1, :cond_2

    .line 12
    iput-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshTask:Lcom/google/common/util/concurrent/e0;

    .line 13
    :cond_2
    throw v2

    .line 14
    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method protected static getFromServiceLoader(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/n5;->f(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getOrCreateRefreshTask()Lcom/google/auth/oauth2/OAuth2Credentials$c;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshTask:Lcom/google/common/util/concurrent/e0;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lcom/google/auth/oauth2/OAuth2Credentials$c;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/auth/oauth2/OAuth2Credentials$c;-><init>(Lcom/google/common/util/concurrent/e0;Z)V

    monitor-exit v0

    return-object v2

    .line 4
    :cond_0
    new-instance v1, Lcom/google/auth/oauth2/OAuth2Credentials$a;

    invoke-direct {v1, p0}, Lcom/google/auth/oauth2/OAuth2Credentials$a;-><init>(Lcom/google/auth/oauth2/OAuth2Credentials;)V

    .line 5
    invoke-static {v1}, Lcom/google/common/util/concurrent/e0;->b(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/e0;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/google/auth/oauth2/OAuth2Credentials$b;

    invoke-direct {v2, p0, v1}, Lcom/google/auth/oauth2/OAuth2Credentials$b;-><init>(Lcom/google/auth/oauth2/OAuth2Credentials;Lcom/google/common/util/concurrent/e0;)V

    .line 7
    invoke-static {}, Lcom/google/common/util/concurrent/h0;->a()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/google/common/util/concurrent/e0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 9
    iput-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshTask:Lcom/google/common/util/concurrent/e0;

    .line 10
    new-instance v2, Lcom/google/auth/oauth2/OAuth2Credentials$c;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/google/auth/oauth2/OAuth2Credentials$c;-><init>(Lcom/google/common/util/concurrent/e0;Z)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getState()Lcom/google/auth/oauth2/OAuth2Credentials$e;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->value:Lcom/google/auth/oauth2/OAuth2Credentials$h;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials$e;->c:Lcom/google/auth/oauth2/OAuth2Credentials$e;

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/google/auth/oauth2/OAuth2Credentials$h;->a(Lcom/google/auth/oauth2/OAuth2Credentials$h;)Lcom/google/auth/oauth2/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/auth/oauth2/AccessToken;->getExpirationTime()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials$e;->a:Lcom/google/auth/oauth2/OAuth2Credentials$e;

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->clock:Lcom/google/api/client/util/i;

    invoke-interface {v2}, Lcom/google/api/client/util/i;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->expirationMargin:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 7
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials$e;->c:Lcom/google/auth/oauth2/OAuth2Credentials$e;

    return-object v0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshMargin:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 9
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials$e;->b:Lcom/google/auth/oauth2/OAuth2Credentials$e;

    return-object v0

    .line 10
    :cond_3
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials$e;->a:Lcom/google/auth/oauth2/OAuth2Credentials$e;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/auth/oauth2/OAuth2Credentials$d;
    .locals 1

    new-instance v0, Lcom/google/auth/oauth2/OAuth2Credentials$d;

    invoke-direct {v0}, Lcom/google/auth/oauth2/OAuth2Credentials$d;-><init>()V

    return-object v0
.end method

.method protected static newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 2
    :goto_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    sget-object p1, Lcom/google/api/client/util/i;->a:Lcom/google/api/client/util/i;

    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->clock:Lcom/google/api/client/util/i;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshTask:Lcom/google/common/util/concurrent/e0;

    return-void
.end method

.method private static unwrapDirectFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of v0, p0, Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 4
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected error refreshing access token"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_1
    check-cast p0, Ljava/io/IOException;

    throw p0

    :catch_1
    move-exception p0

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Interrupted while asynchronously refreshing the access token"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final addChangeListener(Lcom/google/auth/oauth2/OAuth2Credentials$f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->changeListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->changeListeners:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->changeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/OAuth2Credentials;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/OAuth2Credentials;

    .line 3
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->value:Lcom/google/auth/oauth2/OAuth2Credentials$h;

    iget-object p1, p1, Lcom/google/auth/oauth2/OAuth2Credentials;->value:Lcom/google/auth/oauth2/OAuth2Credentials$h;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAccessToken()Lcom/google/auth/oauth2/AccessToken;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->value:Lcom/google/auth/oauth2/OAuth2Credentials$h;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/auth/oauth2/OAuth2Credentials$h;->a(Lcom/google/auth/oauth2/OAuth2Credentials$h;)Lcom/google/auth/oauth2/AccessToken;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAdditionalHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->EMPTY_EXTRA_HEADERS:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public getAuthenticationType()Ljava/lang/String;
    .locals 1

    const-string v0, "OAuth2"

    return-object v0
.end method

.method public getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/google/common/util/concurrent/h0;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->asyncFetch(Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/d0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->unwrapDirectFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/auth/oauth2/OAuth2Credentials$h;

    invoke-static {p1}, Lcom/google/auth/oauth2/OAuth2Credentials$h;->b(Lcom/google/auth/oauth2/OAuth2Credentials$h;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getRequestMetadata(Ljava/net/URI;Ljava/util/concurrent/Executor;Lcom/google/auth/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/auth/oauth2/OAuth2Credentials;->asyncFetch(Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/d0;

    move-result-object p1

    new-instance p2, Lcom/google/auth/oauth2/OAuth2Credentials$g;

    invoke-direct {p2, p3}, Lcom/google/auth/oauth2/OAuth2Credentials$g;-><init>(Lcom/google/auth/a;)V

    .line 2
    invoke-static {}, Lcom/google/common/util/concurrent/h0;->a()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 3
    invoke-static {p1, p2, p3}, Lcom/google/common/util/concurrent/y;->a(Lcom/google/common/util/concurrent/d0;Lcom/google/common/util/concurrent/x;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected getRequestMetadataInternal()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->value:Lcom/google/auth/oauth2/OAuth2Credentials$h;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/auth/oauth2/OAuth2Credentials$h;->b(Lcom/google/auth/oauth2/OAuth2Credentials$h;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasRequestMetadata()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasRequestMetadataOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->value:Lcom/google/auth/oauth2/OAuth2Credentials$h;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->getOrCreateRefreshTask()Lcom/google/auth/oauth2/OAuth2Credentials$c;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/common/util/concurrent/h0;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/OAuth2Credentials$c;->b(Ljava/util/concurrent/Executor;)V

    .line 3
    invoke-static {v0}, Lcom/google/auth/oauth2/OAuth2Credentials$c;->a(Lcom/google/auth/oauth2/OAuth2Credentials$c;)Lcom/google/common/util/concurrent/e0;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auth/oauth2/OAuth2Credentials;->unwrapDirectFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    return-void
.end method

.method public refreshAccessToken()Lcom/google/auth/oauth2/AccessToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OAuth2Credentials instance does not support refreshing the access token. An instance with a new access token should be used, or a derived type that supports refreshing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshIfExpired()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/common/util/concurrent/h0;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/auth/oauth2/OAuth2Credentials;->asyncFetch(Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/d0;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auth/oauth2/OAuth2Credentials;->unwrapDirectFuture(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    return-void
.end method

.method public final removeChangeListener(Lcom/google/auth/oauth2/OAuth2Credentials$f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->changeListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toBuilder()Lcom/google/auth/oauth2/OAuth2Credentials$d;
    .locals 1

    new-instance v0, Lcom/google/auth/oauth2/OAuth2Credentials$d;

    invoke-direct {v0, p0}, Lcom/google/auth/oauth2/OAuth2Credentials$d;-><init>(Lcom/google/auth/oauth2/OAuth2Credentials;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->value:Lcom/google/auth/oauth2/OAuth2Credentials$h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/auth/oauth2/OAuth2Credentials$h;->b(Lcom/google/auth/oauth2/OAuth2Credentials$h;)Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lcom/google/auth/oauth2/OAuth2Credentials$h;->a(Lcom/google/auth/oauth2/OAuth2Credentials$h;)Lcom/google/auth/oauth2/AccessToken;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v2

    const-string v3, "requestMetadata"

    .line 5
    invoke-virtual {v2, v3, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v1

    const-string v2, "temporaryAccess"

    .line 6
    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
