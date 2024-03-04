.class public final Lcom/google/android/gms/cloudmessaging/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcom/google/android/gms/cloudmessaging/t;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Lcom/google/android/gms/cloudmessaging/o;

.field private d:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/cloudmessaging/o;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cloudmessaging/o;-><init>(Lcom/google/android/gms/cloudmessaging/t;Lcom/google/android/gms/cloudmessaging/n;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/t;->c:Lcom/google/android/gms/cloudmessaging/o;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/cloudmessaging/t;->d:I

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/t;->a:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/cloudmessaging/t;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/t;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/t;
    .locals 4

    const-class v0, Lcom/google/android/gms/cloudmessaging/t;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/cloudmessaging/t;->e:Lcom/google/android/gms/cloudmessaging/t;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/cloudmessaging/t;

    .line 1
    invoke-static {}, Ll4/e;->a()Ll4/b;

    new-instance v2, Lf4/a;

    const-string v3, "MessengerIpcClient"

    invoke-direct {v2, v3}, Lf4/a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 2
    invoke-static {v3, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 3
    invoke-static {v2}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 4
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/cloudmessaging/t;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Lcom/google/android/gms/cloudmessaging/t;->e:Lcom/google/android/gms/cloudmessaging/t;

    :cond_0
    sget-object p0, Lcom/google/android/gms/cloudmessaging/t;->e:Lcom/google/android/gms/cloudmessaging/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static bridge synthetic e(Lcom/google/android/gms/cloudmessaging/t;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/t;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private final declared-synchronized f()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/t;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/cloudmessaging/t;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized g(Lcom/google/android/gms/cloudmessaging/r;)Lt4/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/cloudmessaging/r<",
            "TT;>;)",
            "Lt4/g<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x9

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Queueing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MessengerIpcClient"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/t;->c:Lcom/google/android/gms/cloudmessaging/o;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/o;->g(Lcom/google/android/gms/cloudmessaging/r;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/cloudmessaging/o;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cloudmessaging/o;-><init>(Lcom/google/android/gms/cloudmessaging/t;Lcom/google/android/gms/cloudmessaging/n;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/t;->c:Lcom/google/android/gms/cloudmessaging/o;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/o;->g(Lcom/google/android/gms/cloudmessaging/r;)Z

    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/cloudmessaging/r;->b:Lt4/h;

    .line 6
    invoke-virtual {p1}, Lt4/h;->a()Lt4/g;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final c(ILandroid/os/Bundle;)Lt4/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lt4/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/cloudmessaging/q;

    invoke-direct {p0}, Lcom/google/android/gms/cloudmessaging/t;->f()I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/cloudmessaging/q;-><init>(IILandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/t;->g(Lcom/google/android/gms/cloudmessaging/r;)Lt4/g;

    move-result-object p1

    return-object p1
.end method

.method public final d(ILandroid/os/Bundle;)Lt4/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lt4/g<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/cloudmessaging/s;

    invoke-direct {p0}, Lcom/google/android/gms/cloudmessaging/t;->f()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/cloudmessaging/s;-><init>(IILandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/t;->g(Lcom/google/android/gms/cloudmessaging/r;)Lt4/g;

    move-result-object p1

    return-object p1
.end method
