.class final Lcom/google/firebase/messaging/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:J

.field private static final b:Ljava/lang/Object;

.field private static c:Ls4/a;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "WakeLockHolder.syncObject"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/y0;->a:J

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/y0;->b:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Landroid/content/Intent;Lt4/g;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/y0;->e(Landroid/content/Intent;Lt4/g;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "WakeLockHolder.syncObject"
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/messaging/y0;->c:Ls4/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ls4/a;

    const/4 v1, 0x1

    const-string v2, "wake:com.google.firebase.iid.WakeLockHolder"

    invoke-direct {v0, p0, v1, v2}, Ls4/a;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/messaging/y0;->c:Ls4/a;

    .line 3
    invoke-virtual {v0, v1}, Ls4/a;->d(Z)V

    :cond_0
    return-void
.end method

.method static c(Landroid/content/Intent;)V
    .locals 2
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/firebase/messaging/y0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/y0;->c:Ls4/a;

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/firebase/messaging/y0;->d(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1}, Lcom/google/firebase/messaging/y0;->g(Landroid/content/Intent;Z)V

    .line 4
    sget-object p0, Lcom/google/firebase/messaging/y0;->c:Ls4/a;

    invoke-virtual {p0}, Ls4/a;->c()V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static d(Landroid/content/Intent;)Z
    .locals 2
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static synthetic e(Landroid/content/Intent;Lt4/g;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/messaging/y0;->c(Landroid/content/Intent;)V

    return-void
.end method

.method static f(Landroid/content/Context;Lcom/google/firebase/messaging/d1;Landroid/content/Intent;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/firebase/messaging/y0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/messaging/y0;->b(Landroid/content/Context;)V

    .line 3
    invoke-static {p2}, Lcom/google/firebase/messaging/y0;->d(Landroid/content/Intent;)Z

    move-result p0

    const/4 v1, 0x1

    .line 4
    invoke-static {p2, v1}, Lcom/google/firebase/messaging/y0;->g(Landroid/content/Intent;Z)V

    if-nez p0, :cond_0

    .line 5
    sget-object p0, Lcom/google/firebase/messaging/y0;->c:Ls4/a;

    sget-wide v1, Lcom/google/firebase/messaging/y0;->a:J

    invoke-virtual {p0, v1, v2}, Ls4/a;->a(J)V

    .line 6
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/d1;->c(Landroid/content/Intent;)Lt4/g;

    move-result-object p0

    sget-object p1, Lcom/google/firebase/messaging/g;->a:Lcom/google/firebase/messaging/g;

    new-instance v1, Lcom/google/firebase/messaging/x0;

    invoke-direct {v1, p2}, Lcom/google/firebase/messaging/x0;-><init>(Landroid/content/Intent;)V

    .line 7
    invoke-virtual {p0, p1, v1}, Lt4/g;->b(Ljava/util/concurrent/Executor;Lt4/c;)Lt4/g;

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static g(Landroid/content/Intent;Z)V
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "com.google.firebase.iid.WakeLockHolder.wakefulintent"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method static h(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/firebase/messaging/y0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/messaging/y0;->b(Landroid/content/Context;)V

    .line 3
    invoke-static {p1}, Lcom/google/firebase/messaging/y0;->d(Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x1

    .line 4
    invoke-static {p1, v2}, Lcom/google/firebase/messaging/y0;->g(Landroid/content/Intent;Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 6
    monitor-exit v0

    return-object p0

    :cond_0
    if-nez v1, :cond_1

    .line 7
    sget-object p1, Lcom/google/firebase/messaging/y0;->c:Ls4/a;

    sget-wide v1, Lcom/google/firebase/messaging/y0;->a:J

    invoke-virtual {p1, v1, v2}, Ls4/a;->a(J)V

    .line 8
    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
