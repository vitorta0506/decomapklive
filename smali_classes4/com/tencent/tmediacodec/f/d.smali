.class public final Lcom/tencent/tmediacodec/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/os/Handler;

.field private static final b:Ljava/util/concurrent/ExecutorService;

.field private static final c:Landroid/os/HandlerThread;

.field private static final d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/tmediacodec/f/d;->a:Landroid/os/Handler;

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmediacodec/f/d;->b:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "tmediacodec-sub"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    sput-object v0, Lcom/tencent/tmediacodec/f/d;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tencent/tmediacodec/f/d;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/tmediacodec/f/d;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/tencent/tmediacodec/f/d;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/tencent/tmediacodec/f/d;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
