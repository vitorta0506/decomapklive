.class public Lcom/twitter/sdk/android/core/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static volatile i:Lcom/twitter/sdk/android/core/q;


# instance fields
.field a:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k<",
            "Lcom/twitter/sdk/android/core/d;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/twitter/sdk/android/core/internal/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/g<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/twitter/sdk/android/core/j;",
            "Lcom/twitter/sdk/android/core/m;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/Context;

.field private volatile g:Lcom/twitter/sdk/android/core/m;

.field private volatile h:Lcom/twitter/sdk/android/core/e;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/sdk/android/core/q;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/m;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/twitter/sdk/android/core/j;",
            "Lcom/twitter/sdk/android/core/m;",
            ">;",
            "Lcom/twitter/sdk/android/core/m;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/twitter/sdk/android/core/q;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 4
    iput-object p2, p0, Lcom/twitter/sdk/android/core/q;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    iput-object p3, p0, Lcom/twitter/sdk/android/core/q;->g:Lcom/twitter/sdk/android/core/m;

    .line 6
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->f()Lcom/twitter/sdk/android/core/l;

    move-result-object p1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/q;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/twitter/sdk/android/core/l;->d(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/q;->f:Landroid/content/Context;

    .line 7
    new-instance p2, Lcom/twitter/sdk/android/core/h;

    new-instance p3, Lwe/b;

    const-string v0, "session_store"

    invoke-direct {p3, p1, v0}, Lwe/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/twitter/sdk/android/core/s$a;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/s$a;-><init>()V

    const-string v2, "active_twittersession"

    const-string/jumbo v3, "twittersession"

    invoke-direct {p2, p3, v1, v2, v3}, Lcom/twitter/sdk/android/core/h;-><init>(Lwe/a;Lwe/d;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/twitter/sdk/android/core/q;->a:Lcom/twitter/sdk/android/core/k;

    .line 8
    new-instance p2, Lcom/twitter/sdk/android/core/h;

    new-instance p3, Lwe/b;

    invoke-direct {p3, p1, v0}, Lwe/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/twitter/sdk/android/core/d$a;

    invoke-direct {p1}, Lcom/twitter/sdk/android/core/d$a;-><init>()V

    const-string v0, "active_guestsession"

    const-string v1, "guestsession"

    invoke-direct {p2, p3, p1, v0, v1}, Lcom/twitter/sdk/android/core/h;-><init>(Lwe/a;Lwe/d;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/twitter/sdk/android/core/q;->b:Lcom/twitter/sdk/android/core/k;

    .line 9
    new-instance p1, Lcom/twitter/sdk/android/core/internal/g;

    iget-object p2, p0, Lcom/twitter/sdk/android/core/q;->a:Lcom/twitter/sdk/android/core/k;

    .line 10
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->f()Lcom/twitter/sdk/android/core/l;

    move-result-object p3

    invoke-virtual {p3}, Lcom/twitter/sdk/android/core/l;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    new-instance v0, Lcom/twitter/sdk/android/core/internal/k;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/k;-><init>()V

    invoke-direct {p1, p2, p3, v0}, Lcom/twitter/sdk/android/core/internal/g;-><init>(Lcom/twitter/sdk/android/core/k;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/h;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/q;->c:Lcom/twitter/sdk/android/core/internal/g;

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/twitter/sdk/android/core/q;->n()V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->g:Lcom/twitter/sdk/android/core/m;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/twitter/sdk/android/core/m;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/m;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/q;->g:Lcom/twitter/sdk/android/core/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->h:Lcom/twitter/sdk/android/core/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    new-instance v1, Lcom/twitter/sdk/android/core/internal/j;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/j;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;-><init>(Lcom/twitter/sdk/android/core/q;Lcom/twitter/sdk/android/core/internal/j;)V

    .line 3
    new-instance v1, Lcom/twitter/sdk/android/core/e;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/q;->b:Lcom/twitter/sdk/android/core/k;

    invoke-direct {v1, v0, v2}, Lcom/twitter/sdk/android/core/e;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;Lcom/twitter/sdk/android/core/k;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/core/q;->h:Lcom/twitter/sdk/android/core/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static k()Lcom/twitter/sdk/android/core/q;
    .locals 3

    .line 1
    sget-object v0, Lcom/twitter/sdk/android/core/q;->i:Lcom/twitter/sdk/android/core/q;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/twitter/sdk/android/core/q;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/twitter/sdk/android/core/q;->i:Lcom/twitter/sdk/android/core/q;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/twitter/sdk/android/core/q;

    invoke-static {}, Lcom/twitter/sdk/android/core/l;->f()Lcom/twitter/sdk/android/core/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/l;->h()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/q;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    sput-object v1, Lcom/twitter/sdk/android/core/q;->i:Lcom/twitter/sdk/android/core/q;

    .line 5
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->f()Lcom/twitter/sdk/android/core/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/l;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sget-object v2, Lcom/twitter/sdk/android/core/p;->a:Lcom/twitter/sdk/android/core/p;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/twitter/sdk/android/core/q;->i:Lcom/twitter/sdk/android/core/q;

    return-object v0
.end method

.method private static synthetic n()V
    .locals 1

    sget-object v0, Lcom/twitter/sdk/android/core/q;->i:Lcom/twitter/sdk/android/core/q;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/q;->d()V

    return-void
.end method


# virtual methods
.method d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->a:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->d()Lcom/twitter/sdk/android/core/j;

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->b:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->d()Lcom/twitter/sdk/android/core/j;

    .line 3
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/q;->i()Lcom/twitter/sdk/android/core/e;

    .line 4
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->c:Lcom/twitter/sdk/android/core/internal/g;

    .line 5
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->f()Lcom/twitter/sdk/android/core/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/l;->c()Lcom/twitter/sdk/android/core/internal/a;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/g;->a(Lcom/twitter/sdk/android/core/internal/a;)V

    return-void
.end method

.method public e()Lcom/twitter/sdk/android/core/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->a:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->d()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/s;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/q;->h()Lcom/twitter/sdk/android/core/m;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/q;->f(Lcom/twitter/sdk/android/core/s;)Lcom/twitter/sdk/android/core/m;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcom/twitter/sdk/android/core/s;)Lcom/twitter/sdk/android/core/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/twitter/sdk/android/core/m;

    invoke-direct {v1, p1}, Lcom/twitter/sdk/android/core/m;-><init>(Lcom/twitter/sdk/android/core/s;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/m;

    return-object p1
.end method

.method public g()Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-object v0
.end method

.method public h()Lcom/twitter/sdk/android/core/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->g:Lcom/twitter/sdk/android/core/m;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/q;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->g:Lcom/twitter/sdk/android/core/m;

    return-object v0
.end method

.method public i()Lcom/twitter/sdk/android/core/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->h:Lcom/twitter/sdk/android/core/e;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/q;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->h:Lcom/twitter/sdk/android/core/e;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "com.twitter.sdk.android:twitter-core"

    return-object v0
.end method

.method public l()Lcom/twitter/sdk/android/core/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/k<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twitter/sdk/android/core/q;->a:Lcom/twitter/sdk/android/core/k;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "3.3.0.12"

    return-object v0
.end method
