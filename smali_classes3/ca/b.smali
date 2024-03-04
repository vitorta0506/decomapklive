.class public final Lca/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lca/b$b;,
        Lca/b$c;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "b"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/content/BroadcastReceiver;

.field private c:Z

.field private d:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lca/b;->a:Landroid/app/Activity;

    .line 3
    new-instance p1, Lca/b$c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lca/b$c;-><init>(Lca/b;Lca/b$a;)V

    iput-object p1, p0, Lca/b;->b:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lca/b;->c:Z

    .line 5
    invoke-virtual {p0}, Lca/b;->e()V

    return-void
.end method

.method static synthetic a(Lca/b;)V
    .locals 0

    invoke-direct {p0}, Lca/b;->d()V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lca/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lca/b;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lca/b;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lca/b;->d:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lca/b;->d:Landroid/os/AsyncTask;
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


# virtual methods
.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lca/b;->d()V

    .line 2
    new-instance v0, Lca/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lca/b$b;-><init>(Lca/b;Lca/b$a;)V

    iput-object v0, p0, Lca/b;->d:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lca/b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lca/b;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lca/b;->c:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lca/b;->e:Ljava/lang/String;

    const-string v1, "PowerStatusReceiver was already registered?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lca/b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lca/b;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lca/b;->c:Z

    .line 5
    :goto_0
    invoke-virtual {p0}, Lca/b;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()V
    .locals 0

    invoke-direct {p0}, Lca/b;->d()V

    return-void
.end method
