.class public final Lcom/tencent/liteav/audio/earmonitor/a;
.super Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/audio/earmonitor/a/b/a/e;
.implements Lcom/tencent/liteav/base/util/v$a;


# static fields
.field private static final a:I


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/tencent/liteav/audio/earmonitor/a/b/a/d;

.field private e:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;

.field private f:Lcom/tencent/liteav/base/util/v;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/tencent/liteav/audio/earmonitor/a;->a:I

    return-void
.end method

.method constructor <init>(JLandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;-><init>(J)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->c:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->g:Z

    .line 4
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->h:Z

    .line 5
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->i:Z

    .line 6
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->b:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->e:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;->a(Z)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x70d

    if-eq v0, v2, :cond_1

    .line 4
    invoke-virtual {p0, p0}, Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;->notifySystemError(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;)V

    return-void

    .line 5
    :cond_1
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/earmonitor/a;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->f:Lcom/tencent/liteav/base/util/v;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/v;->a()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->f:Lcom/tencent/liteav/base/util/v;

    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/audio/earmonitor/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/earmonitor/a;I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "HwSystemAudioKit"

    const-string v4, "on audio kit callback: %d"

    invoke-static {v2, v4, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 10
    :pswitch_0
    invoke-virtual {p0, p0, v0}, Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;->notifyEarMonitoringInitialized(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;Z)V

    return-void

    .line 11
    :cond_0
    :pswitch_1
    iget-boolean p1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->g:Z

    if-eqz p1, :cond_1

    .line 12
    iput-boolean v3, p0, Lcom/tencent/liteav/audio/earmonitor/a;->g:Z

    .line 13
    invoke-virtual {p0, p0, v3}, Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;->notifyEarMonitoringInitialized(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;Z)V

    return-void

    .line 14
    :cond_1
    invoke-virtual {p0, p0}, Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;->notifySystemError(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;)V

    :goto_0
    return-void

    .line 15
    :cond_2
    iput-boolean v3, p0, Lcom/tencent/liteav/audio/earmonitor/a;->g:Z

    .line 16
    iget-object p1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->d:Lcom/tencent/liteav/audio/earmonitor/a/b/a/d;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/d$a;->a:Lcom/tencent/liteav/audio/earmonitor/a/b/a/d$a;

    .line 17
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/audio/earmonitor/a/b/a/d;->a(Lcom/tencent/liteav/audio/earmonitor/a/b/a/d$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->d:Lcom/tencent/liteav/audio/earmonitor/a/b/a/d;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/audio/earmonitor/a/b/a/d;->b(Lcom/tencent/liteav/audio/earmonitor/a/b/a/d$a;)Lcom/tencent/liteav/audio/earmonitor/a/b/a/a;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;

    iput-object p1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->e:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;

    return-void

    .line 19
    :cond_3
    invoke-virtual {p0, p0, v3}, Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;->notifyEarMonitoringInitialized(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->c:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->e:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;->a(Z)I

    .line 7
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->i:Z

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/audio/earmonitor/a;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->f:Lcom/tencent/liteav/base/util/v;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/tencent/liteav/base/util/v;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/tencent/liteav/base/util/v;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/base/util/v$a;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->f:Lcom/tencent/liteav/base/util/v;

    const/4 v1, 0x0

    .line 10
    sget v2, Lcom/tencent/liteav/audio/earmonitor/a;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/v;->a(II)V

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/audio/earmonitor/a;->a()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/audio/earmonitor/a;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->e:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 2
    invoke-static {p1, v0, v1}, Lcom/tencent/liteav/base/util/g;->a(III)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->e:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;

    sget-object v1, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;->b:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;->a(Lcom/tencent/liteav/audio/earmonitor/a/b/a/c$a;I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p0}, Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;->notifySystemError(Lcom/tencent/liteav/audio/earmonitor/SystemAudioKit;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/audio/earmonitor/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->e:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;->a()V

    .line 3
    iput-object v1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->e:Lcom/tencent/liteav/audio/earmonitor/a/b/a/c;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->d:Lcom/tencent/liteav/audio/earmonitor/a/b/a/d;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/tencent/liteav/audio/earmonitor/a/b/a/d;->b()V

    .line 6
    iput-object v1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->d:Lcom/tencent/liteav/audio/earmonitor/a/b/a/d;

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->g:Z

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/audio/earmonitor/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->d:Lcom/tencent/liteav/audio/earmonitor/a/b/a/d;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->g:Z

    .line 3
    new-instance v0, Lcom/tencent/liteav/audio/earmonitor/a/b/a/d;

    iget-object v1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/tencent/liteav/audio/earmonitor/a/b/a/d;-><init>(Landroid/content/Context;Lcom/tencent/liteav/audio/earmonitor/a/b/a/e;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->d:Lcom/tencent/liteav/audio/earmonitor/a/b/a/d;

    .line 4
    invoke-virtual {v0}, Lcom/tencent/liteav/audio/earmonitor/a/b/a/d;->a()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/liteav/audio/earmonitor/g;->a(Lcom/tencent/liteav/audio/earmonitor/a;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/earmonitor/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final initialize()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/audio/earmonitor/b;->a(Lcom/tencent/liteav/audio/earmonitor/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/earmonitor/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onTimeout()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getAppBackgroundState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->i:Z

    const-string v2, "HwSystemAudioKit"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->h:Z

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const-string v0, "app return to foreground."

    .line 3
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/audio/earmonitor/a;->b()V

    .line 5
    invoke-direct {p0}, Lcom/tencent/liteav/audio/earmonitor/a;->a()V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/earmonitor/a;->h:Z

    if-nez v0, :cond_2

    const-string v0, "app has gone to background."

    .line 7
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/earmonitor/a;->h:Z

    return-void
.end method

.method public final setEarMonitoringVolume(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/audio/earmonitor/f;->a(Lcom/tencent/liteav/audio/earmonitor/a;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/earmonitor/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final startEarMonitoring()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/audio/earmonitor/d;->a(Lcom/tencent/liteav/audio/earmonitor/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/earmonitor/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final stopEarMonitoring()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/audio/earmonitor/e;->a(Lcom/tencent/liteav/audio/earmonitor/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/earmonitor/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final terminate()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/liteav/audio/earmonitor/c;->a(Lcom/tencent/liteav/audio/earmonitor/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/earmonitor/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
