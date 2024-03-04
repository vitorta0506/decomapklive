.class public Lcom/twitter/sdk/android/core/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final g:Lcom/twitter/sdk/android/core/g;

.field static volatile h:Lcom/twitter/sdk/android/core/l;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final d:Lcom/twitter/sdk/android/core/internal/a;

.field private final e:Lcom/twitter/sdk/android/core/g;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twitter/sdk/android/core/c;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/l;->g:Lcom/twitter/sdk/android/core/g;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/sdk/android/core/n;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/twitter/sdk/android/core/n;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/l;->a:Landroid/content/Context;

    .line 3
    new-instance v1, Lcom/twitter/sdk/android/core/internal/a;

    invoke-direct {v1, v0}, Lcom/twitter/sdk/android/core/internal/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/core/l;->d:Lcom/twitter/sdk/android/core/internal/a;

    .line 4
    iget-object v1, p1, Lcom/twitter/sdk/android/core/n;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    if-nez v1, :cond_0

    const-string v1, "com.twitter.sdk.android.CONSUMER_KEY"

    const-string v2, ""

    .line 5
    invoke-static {v0, v1, v2}, Lcom/twitter/sdk/android/core/internal/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.twitter.sdk.android.CONSUMER_SECRET"

    .line 6
    invoke-static {v0, v3, v2}, Lcom/twitter/sdk/android/core/internal/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v2, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-direct {v2, v1, v0}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/twitter/sdk/android/core/l;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    goto :goto_0

    .line 8
    :cond_0
    iput-object v1, p0, Lcom/twitter/sdk/android/core/l;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 9
    :goto_0
    iget-object v0, p1, Lcom/twitter/sdk/android/core/n;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    const-string/jumbo v0, "twitter-worker"

    .line 10
    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/e;->e(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/l;->b:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 11
    :cond_1
    iput-object v0, p0, Lcom/twitter/sdk/android/core/l;->b:Ljava/util/concurrent/ExecutorService;

    .line 12
    :goto_1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/n;->b:Lcom/twitter/sdk/android/core/g;

    if-nez v0, :cond_2

    .line 13
    sget-object v0, Lcom/twitter/sdk/android/core/l;->g:Lcom/twitter/sdk/android/core/g;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/l;->e:Lcom/twitter/sdk/android/core/g;

    goto :goto_2

    .line 14
    :cond_2
    iput-object v0, p0, Lcom/twitter/sdk/android/core/l;->e:Lcom/twitter/sdk/android/core/g;

    .line 15
    :goto_2
    iget-object p1, p1, Lcom/twitter/sdk/android/core/n;->e:Ljava/lang/Boolean;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/l;->f:Z

    goto :goto_3

    .line 17
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/l;->f:Z

    :goto_3
    return-void
.end method

.method static a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/twitter/sdk/android/core/l;->h:Lcom/twitter/sdk/android/core/l;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must initialize Twitter before using getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static declared-synchronized b(Lcom/twitter/sdk/android/core/n;)Lcom/twitter/sdk/android/core/l;
    .locals 2

    const-class v0, Lcom/twitter/sdk/android/core/l;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/twitter/sdk/android/core/l;->h:Lcom/twitter/sdk/android/core/l;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/twitter/sdk/android/core/l;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/core/l;-><init>(Lcom/twitter/sdk/android/core/n;)V

    sput-object v1, Lcom/twitter/sdk/android/core/l;->h:Lcom/twitter/sdk/android/core/l;

    .line 3
    sget-object p0, Lcom/twitter/sdk/android/core/l;->h:Lcom/twitter/sdk/android/core/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 4
    :cond_0
    :try_start_1
    sget-object p0, Lcom/twitter/sdk/android/core/l;->h:Lcom/twitter/sdk/android/core/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static f()Lcom/twitter/sdk/android/core/l;
    .locals 1

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->a()V

    .line 2
    sget-object v0, Lcom/twitter/sdk/android/core/l;->h:Lcom/twitter/sdk/android/core/l;

    return-object v0
.end method

.method public static g()Lcom/twitter/sdk/android/core/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/twitter/sdk/android/core/l;->h:Lcom/twitter/sdk/android/core/l;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/twitter/sdk/android/core/l;->g:Lcom/twitter/sdk/android/core/g;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/l;->h:Lcom/twitter/sdk/android/core/l;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/l;->e:Lcom/twitter/sdk/android/core/g;

    return-object v0
.end method

.method public static i(Lcom/twitter/sdk/android/core/n;)V
    .locals 0

    invoke-static {p0}, Lcom/twitter/sdk/android/core/l;->b(Lcom/twitter/sdk/android/core/n;)Lcom/twitter/sdk/android/core/l;

    return-void
.end method

.method public static j()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/twitter/sdk/android/core/l;->h:Lcom/twitter/sdk/android/core/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/l;->h:Lcom/twitter/sdk/android/core/l;

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/l;->f:Z

    return v0
.end method


# virtual methods
.method public c()Lcom/twitter/sdk/android/core/internal/a;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/l;->d:Lcom/twitter/sdk/android/core/internal/a;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Landroid/content/Context;
    .locals 4

    new-instance v0, Lcom/twitter/sdk/android/core/o;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/l;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".TwitterKit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/twitter/sdk/android/core/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public e()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/l;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public h()Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/l;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-object v0
.end method
