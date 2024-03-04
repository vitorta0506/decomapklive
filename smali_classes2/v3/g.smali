.class public final Lv3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a$f;
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Landroid/content/ComponentName;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Lv3/c;

.field private final f:Landroid/os/Handler;

.field private final g:Lv3/h;

.field private h:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Z

.field private j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lv3/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lv3/g;->l:Ljava/lang/String;

    return-void
.end method

.method private final p()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lv3/g;->f:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method should only run on the NonGmsServiceBrokerClient\'s handler thread."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lv3/g;->p()V

    iput-object p1, p0, Lv3/g;->j:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lv3/g;->disconnect()V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lv3/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lv3/g;->c:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lv3/g;->c:Landroid/content/ComponentName;

    .line 2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/common/internal/d$c;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/internal/d$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lv3/g;->p()V

    iget-object p1, p0, Lv3/g;->h:Landroid/os/IBinder;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lv3/g;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "connect() called when already connected"

    .line 4
    invoke-virtual {p0, p1}, Lv3/g;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lv3/g;->c:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lv3/g;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lv3/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    :goto_0
    iget-object v1, p0, Lv3/g;->d:Landroid/content/Context;

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/internal/g;->a()I

    move-result v2

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lv3/g;->i:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_2

    iput-object p1, p0, Lv3/g;->h:Landroid/os/IBinder;

    iget-object p1, p0, Lv3/g;->g:Lv3/h;

    .line 11
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-interface {p1, v0}, Lv3/h;->f(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_2
    iget-object p1, p0, Lv3/g;->h:Landroid/os/IBinder;

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lv3/g;->i:Z

    iput-object p1, p0, Lv3/g;->h:Landroid/os/IBinder;

    .line 14
    throw v0
.end method

.method public final disconnect()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Lv3/g;->p()V

    iget-object v0, p0, Lv3/g;->h:Landroid/os/IBinder;

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lv3/g;->d:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lv3/g;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/g;->h:Landroid/os/IBinder;

    return-void
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final synthetic g()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lv3/g;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/g;->h:Landroid/os/IBinder;

    iget-object v0, p0, Lv3/g;->e:Lv3/c;

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Lv3/c;->onConnectionSuspended(I)V

    return-void
.end method

.method public final h()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final i(Lcom/google/android/gms/common/internal/i;Ljava/util/Set;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/internal/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/i;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final isConnected()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lv3/g;->p()V

    iget-object v0, p0, Lv3/g;->h:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isConnecting()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lv3/g;->p()V

    iget-boolean v0, p0, Lv3/g;->i:Z

    return v0
.end method

.method public final j(Lcom/google/android/gms/common/internal/d$e;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/internal/d$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l()[Lcom/google/android/gms/common/Feature;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lv3/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method final synthetic n(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lv3/g;->i:Z

    iput-object p1, p0, Lv3/g;->h:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lv3/g;->e:Lv3/c;

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, v0}, Lv3/c;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lv3/g;->k:Ljava/lang/String;

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lv3/g;->f:Landroid/os/Handler;

    new-instance v0, Lv3/u;

    invoke-direct {v0, p0, p2}, Lv3/u;-><init>(Lv3/g;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lv3/g;->f:Landroid/os/Handler;

    new-instance v0, Lv3/t;

    invoke-direct {v0, p0}, Lv3/t;-><init>(Lv3/g;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
