.class public Lcom/tencent/liteav/videoproducer/capture/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoproducer/capture/bi$a;,
        Lcom/tencent/liteav/videoproducer/capture/bi$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tencent/liteav/videoproducer/capture/bi;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/tencent/liteav/base/util/j;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/Surface;",
            "Lcom/tencent/liteav/videoproducer/capture/bi$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Landroid/media/projection/MediaProjection;

.field private h:Lcom/tencent/liteav/base/util/v;

.field private i:Z

.field private final j:Ljava/lang/Runnable;

.field private final k:Landroid/media/projection/MediaProjection$Callback;

.field private final l:Lcom/tencent/liteav/base/util/v$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->e:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->f:Z

    .line 4
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/bj;->a(Lcom/tencent/liteav/videoproducer/capture/bi;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->j:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/bi$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/bi$1;-><init>(Lcom/tencent/liteav/videoproducer/capture/bi;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->k:Landroid/media/projection/MediaProjection$Callback;

    .line 6
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/bi$2;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/bi$2;-><init>(Lcom/tencent/liteav/videoproducer/capture/bi;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->l:Lcom/tencent/liteav/base/util/v$a;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->b:Landroid/content/Context;

    .line 8
    new-instance v0, Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/base/util/CustomHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->c:Landroid/os/Handler;

    .line 9
    new-instance v0, Lcom/tencent/liteav/base/util/j;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/j;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->d:Lcom/tencent/liteav/base/util/j;

    .line 10
    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/capture/bi;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->i:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/liteav/videoproducer/capture/bi;
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/bi;->a:Lcom/tencent/liteav/videoproducer/capture/bi;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/liteav/videoproducer/capture/bi;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/bi;->a:Lcom/tencent/liteav/videoproducer/capture/bi;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/liteav/videoproducer/capture/bi;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoproducer/capture/bi;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/liteav/videoproducer/capture/bi;->a:Lcom/tencent/liteav/videoproducer/capture/bi;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/liteav/videoproducer/capture/bi;->a:Lcom/tencent/liteav/videoproducer/capture/bi;

    return-object p0
.end method

.method private a()V
    .locals 13

    const-string v0, "VirtualDisplayManager"

    .line 10
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/videoproducer/capture/bi$a;

    .line 11
    iget-object v3, v2, Lcom/tencent/liteav/videoproducer/capture/bi$a;->e:Landroid/hardware/display/VirtualDisplay;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 12
    :try_start_0
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->g:Landroid/media/projection/MediaProjection;

    const-string v5, "TXCScreenCapture"

    iget v6, v2, Lcom/tencent/liteav/videoproducer/capture/bi$a;->b:I

    iget v7, v2, Lcom/tencent/liteav/videoproducer/capture/bi$a;->c:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget-object v10, v2, Lcom/tencent/liteav/videoproducer/capture/bi$a;->a:Landroid/view/Surface;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/liteav/videoproducer/capture/bi$a;->e:Landroid/hardware/display/VirtualDisplay;

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "create VirtualDisplay "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/tencent/liteav/videoproducer/capture/bi$a;->e:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v4, v2, Lcom/tencent/liteav/videoproducer/capture/bi$a;->d:Lcom/tencent/liteav/videoproducer/capture/bi$b;

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    .line 15
    invoke-interface {v4, v5, v3}, Lcom/tencent/liteav/videoproducer/capture/bi$b;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "create VirtualDisplay error "

    .line 16
    invoke-static {v0, v5, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    iget-object v2, v2, Lcom/tencent/liteav/videoproducer/capture/bi$a;->d:Lcom/tencent/liteav/videoproducer/capture/bi$b;

    if-eqz v2, :cond_0

    .line 18
    invoke-interface {v2, v3, v3}, Lcom/tencent/liteav/videoproducer/capture/bi$b;->a(ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/bi;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/bi;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/bi;Landroid/media/projection/MediaProjection;)V
    .locals 3

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->f:Z

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 33
    new-instance p1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->e:Ljava/util/Map;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 34
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->e:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 35
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/videoproducer/capture/bi$a;

    .line 36
    iget-object p1, p1, Lcom/tencent/liteav/videoproducer/capture/bi$a;->d:Lcom/tencent/liteav/videoproducer/capture/bi$b;

    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/videoproducer/capture/bi$b;->a(ZZ)V

    goto :goto_0

    :cond_1
    return-void

    .line 38
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Got session "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VirtualDisplayManager"

    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->g:Landroid/media/projection/MediaProjection;

    .line 40
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->k:Landroid/media/projection/MediaProjection$Callback;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 41
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/bi;->a()V

    .line 42
    new-instance p1, Lcom/tencent/liteav/base/util/v;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->l:Lcom/tencent/liteav/base/util/v$a;

    invoke-direct {p1, v0, v2}, Lcom/tencent/liteav/base/util/v;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/base/util/v$a;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->h:Lcom/tencent/liteav/base/util/v;

    const/16 v0, 0x32

    .line 43
    invoke-virtual {p1, v0, v0}, Lcom/tencent/liteav/base/util/v;->a(II)V

    .line 44
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->g:Landroid/media/projection/MediaProjection;

    invoke-static {p1}, Lcom/tencent/liteav/videoproducer/capture/bi;->b(Landroid/media/projection/MediaProjection;)V

    .line 45
    invoke-direct {p0, v1}, Lcom/tencent/liteav/videoproducer/capture/bi;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/bi;Landroid/view/Surface;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/videoproducer/capture/bi$a;

    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/capture/bi$a;->e:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VirtualDisplay released, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tencent/liteav/videoproducer/capture/bi$a;->e:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VirtualDisplayManager"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 50
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/bi;->a(Z)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/capture/bi;Landroid/view/Surface;IILandroid/media/projection/MediaProjection;Lcom/tencent/liteav/videoproducer/capture/bi$b;)V
    .locals 3

    const-string v0, "VirtualDisplayManager"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p0, "surface is null!"

    .line 51
    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {p5, v1, v1}, Lcom/tencent/liteav/videoproducer/capture/bi$b;->a(ZZ)V

    return-void

    .line 53
    :cond_0
    new-instance v2, Lcom/tencent/liteav/videoproducer/capture/bi$a;

    invoke-direct {v2, v1}, Lcom/tencent/liteav/videoproducer/capture/bi$a;-><init>(B)V

    .line 54
    iput-object p1, v2, Lcom/tencent/liteav/videoproducer/capture/bi$a;->a:Landroid/view/Surface;

    .line 55
    iput p2, v2, Lcom/tencent/liteav/videoproducer/capture/bi$a;->b:I

    .line 56
    iput p3, v2, Lcom/tencent/liteav/videoproducer/capture/bi$a;->c:I

    .line 57
    iput-object p5, v2, Lcom/tencent/liteav/videoproducer/capture/bi$a;->d:Lcom/tencent/liteav/videoproducer/capture/bi$b;

    const/4 p2, 0x0

    .line 58
    iput-object p2, v2, Lcom/tencent/liteav/videoproducer/capture/bi$a;->e:Landroid/hardware/display/VirtualDisplay;

    .line 59
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->e:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->d:Lcom/tencent/liteav/base/util/j;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/base/util/j;->c(Ljava/lang/Runnable;)V

    .line 61
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->g:Landroid/media/projection/MediaProjection;

    if-nez p1, :cond_1

    if-nez p4, :cond_1

    .line 62
    iget-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->f:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->f:Z

    .line 64
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->b:Landroid/content/Context;

    const-class p3, Lcom/tencent/rtmp/video/TXScreenCapture$TXScreenCaptureAssistantActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->b:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    if-eqz p4, :cond_2

    if-eq p1, p4, :cond_2

    .line 67
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "startVirtualDisplay with media projection:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p4}, Lcom/tencent/liteav/videoproducer/capture/bi;->a(Landroid/media/projection/MediaProjection;)V

    return-void

    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/bi;->a()V

    :cond_3
    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->d:Lcom/tencent/liteav/base/util/j;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->j:Ljava/lang/Runnable;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Stop media projection session "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->g:Landroid/media/projection/MediaProjection;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VirtualDisplayManager"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->g:Landroid/media/projection/MediaProjection;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 23
    invoke-static {v1}, Lcom/tencent/liteav/videoproducer/capture/bi;->b(Landroid/media/projection/MediaProjection;)V

    .line 24
    :try_start_0
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->g:Landroid/media/projection/MediaProjection;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->k:Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {p1, v2}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 25
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->g:Landroid/media/projection/MediaProjection;

    invoke-virtual {p1}, Landroid/media/projection/MediaProjection;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo p1, "stop media projection session with exception "

    .line 26
    invoke-static {v0, p1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :goto_0
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->g:Landroid/media/projection/MediaProjection;

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->h:Lcom/tencent/liteav/base/util/v;

    if-eqz p1, :cond_3

    .line 29
    invoke-virtual {p1}, Lcom/tencent/liteav/base/util/v;->a()V

    .line 30
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->h:Lcom/tencent/liteav/base/util/v;

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/capture/bi;)Lcom/tencent/liteav/base/util/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->d:Lcom/tencent/liteav/base/util/j;

    return-object p0
.end method

.method private static b(Landroid/media/projection/MediaProjection;)V
    .locals 6

    .line 2
    :try_start_0
    const-class v0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder;

    sget v1, Lcom/tencent/liteav/audio/SystemLoopbackRecorder;->a:I

    const-string v1, "notifyMediaProjectionState"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    const-class v4, Landroid/media/projection/MediaProjection;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    .line 6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fail to send media projection session "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VirtualDisplayManager"

    invoke-static {v0, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "window"

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 8
    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/capture/bi;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videoproducer/capture/bi$a;

    .line 4
    iget-object v3, v1, Lcom/tencent/liteav/videoproducer/capture/bi$a;->d:Lcom/tencent/liteav/videoproducer/capture/bi$b;

    if-eqz v3, :cond_0

    .line 5
    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/capture/bi$a;->e:Landroid/hardware/display/VirtualDisplay;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v3}, Lcom/tencent/liteav/videoproducer/capture/bi$b;->e()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v3, v2, v2}, Lcom/tencent/liteav/videoproducer/capture/bi$b;->a(ZZ)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0, v2}, Lcom/tencent/liteav/videoproducer/capture/bi;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoproducer/capture/bi;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/capture/bi;->b(Landroid/content/Context;)Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->i:Z

    if-eq v1, v0, :cond_1

    .line 3
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->i:Z

    .line 4
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->e:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videoproducer/capture/bi$a;

    .line 5
    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/capture/bi$a;->d:Lcom/tencent/liteav/videoproducer/capture/bi$b;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1, v0}, Lcom/tencent/liteav/videoproducer/capture/bi$b;->b(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/media/projection/MediaProjection;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->d:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/bm;->a(Lcom/tencent/liteav/videoproducer/capture/bi;Landroid/media/projection/MediaProjection;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->d:Lcom/tencent/liteav/base/util/j;

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/bl;->a(Lcom/tencent/liteav/videoproducer/capture/bi;Landroid/view/Surface;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/view/Surface;IILandroid/media/projection/MediaProjection;Lcom/tencent/liteav/videoproducer/capture/bi$b;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/bi;->d:Lcom/tencent/liteav/base/util/j;

    invoke-static/range {p0 .. p5}, Lcom/tencent/liteav/videoproducer/capture/bk;->a(Lcom/tencent/liteav/videoproducer/capture/bi;Landroid/view/Surface;IILandroid/media/projection/MediaProjection;Lcom/tencent/liteav/videoproducer/capture/bi$b;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->b(Ljava/lang/Runnable;)V

    return-void
.end method
