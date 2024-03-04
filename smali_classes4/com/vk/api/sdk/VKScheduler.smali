.class public final Lcom/vk/api/sdk/VKScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u000c\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vk/api/sdk/VKScheduler;",
        "",
        "()V",
        "NETWORK_THREADS_COUNT",
        "",
        "counter",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "handler$delegate",
        "Lkotlin/Lazy;",
        "networkExecutor",
        "Ljava/util/concurrent/ExecutorService;",
        "getNetworkExecutor",
        "()Ljava/util/concurrent/ExecutorService;",
        "networkExecutor$delegate",
        "runOnMainThread",
        "",
        "runnable",
        "Ljava/lang/Runnable;",
        "delay",
        "",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vk/api/sdk/VKScheduler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NETWORK_THREADS_COUNT:I = 0x20

.field private static final counter:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final handler$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final networkExecutor$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/api/sdk/VKScheduler;

    invoke-direct {v0}, Lcom/vk/api/sdk/VKScheduler;-><init>()V

    sput-object v0, Lcom/vk/api/sdk/VKScheduler;->INSTANCE:Lcom/vk/api/sdk/VKScheduler;

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/vk/api/sdk/VKScheduler;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    sget-object v0, Lcom/vk/api/sdk/VKScheduler$handler$2;->INSTANCE:Lcom/vk/api/sdk/VKScheduler$handler$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vk/api/sdk/VKScheduler;->handler$delegate:Lkotlin/Lazy;

    .line 3
    sget-object v0, Lcom/vk/api/sdk/VKScheduler$networkExecutor$2;->INSTANCE:Lcom/vk/api/sdk/VKScheduler$networkExecutor$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vk/api/sdk/VKScheduler;->networkExecutor$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCounter$p()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/vk/api/sdk/VKScheduler;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private final getHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/vk/api/sdk/VKScheduler;->handler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public static final runOnMainThread(Ljava/lang/Runnable;)V
    .locals 4
    .param p0    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/vk/api/sdk/VKScheduler;->runOnMainThread$default(Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

.method public static final runOnMainThread(Ljava/lang/Runnable;J)V
    .locals 3
    .param p0    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "runnable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/vk/api/sdk/VKScheduler;->INSTANCE:Lcom/vk/api/sdk/VKScheduler;

    invoke-direct {v0}, Lcom/vk/api/sdk/VKScheduler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public static synthetic runOnMainThread$default(Ljava/lang/Runnable;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/vk/api/sdk/VKScheduler;->runOnMainThread(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public final getNetworkExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/vk/api/sdk/VKScheduler;->networkExecutor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-networkExecutor>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
