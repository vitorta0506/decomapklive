.class public final Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$OnNetworkChangeCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001,B\t\u0008\u0002\u00a2\u0006\u0004\u0008*\u0010+J0\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u0007J(\u0010\u000f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0003J\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016R\u0014\u0010\u0013\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u001b\u0010#\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u0014\u0010%\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u001a\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00160\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;",
        "Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$OnNetworkChangeCallBack;",
        "",
        "fileUrl",
        "fileSavePath",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/d;",
        "Ljava/io/File;",
        "callback",
        "",
        "highPriority",
        "",
        "download",
        "Lokhttp3/Response;",
        "response",
        "file",
        "writeToFile",
        "",
        "type",
        "onChange",
        "TAG",
        "Ljava/lang/String;",
        "",
        "Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;",
        "failList",
        "Ljava/util/List;",
        "Lokhttp3/OkHttpClient;",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        "executor",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        "highPriorityExecutor$delegate",
        "Lkotlin/Lazy;",
        "getHighPriorityExecutor",
        "()Ljava/util/concurrent/ThreadPoolExecutor;",
        "highPriorityExecutor",
        "Landroid/os/Handler;",
        "handler",
        "Landroid/os/Handler;",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "runningList",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "<init>",
        "()V",
        "DownloadRunnable",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ResourceDownloadManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final executor:Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final failList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final highPriorityExecutor$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final okHttpClient:Lokhttp3/OkHttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final runningList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->create(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->register(Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$OnNetworkChangeCallBack;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->failList:Ljava/util/List;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->h(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->g()Lokhttp3/OkHttpClient;

    move-result-object v0

    const-string v1, "getInstance(BaseApplicat\u2026tance()).fileOkHttpClient"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 4
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    new-instance v8, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0x100

    invoke-direct {v8, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    .line 7
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v3, 0x3

    const/4 v4, 0x5

    const-wide/16 v5, 0xf

    move-object v2, v0

    .line 8
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$highPriorityExecutor$2;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$highPriorityExecutor$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->highPriorityExecutor$delegate:Lkotlin/Lazy;

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->handler:Landroid/os/Handler;

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->runningList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/base/http/callback/d;Lkotlin/jvm/internal/Ref$LongRef;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->writeToFile$lambda-9$lambda-8(Lcom/guochao/faceshow/aaspring/base/http/callback/d;Lkotlin/jvm/internal/Ref$LongRef;J)V

    return-void
.end method

.method public static final synthetic access$getFailList$p()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->failList:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getHandler$p()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic access$getOkHttpClient$p()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static final synthetic access$getRunningList$p()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->runningList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static final synthetic access$writeToFile(Lokhttp3/Response;Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->writeToFile(Lokhttp3/Response;Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V

    return-void
.end method

.method public static final download(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/callback/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fileUrl"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSavePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->download$default(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final download(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;Z)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/callback/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "Ljava/io/File;",
            ">;Z)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "fileUrl"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSavePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->runningList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    .line 3
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->getFileUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->getPriority()Z

    move-result v4

    if-ne v4, p3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v3

    .line 4
    :goto_1
    check-cast v1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->makeSureCallbacks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_3
    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;Z)V

    if-eqz p3, :cond_d

    .line 7
    sget-object p1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->getHighPriorityExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Ljava/lang/Runnable;

    .line 9
    instance-of v4, v1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    if-eqz v4, :cond_5

    .line 10
    check-cast v1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->getFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_6
    move-object p3, v3

    .line 11
    :goto_3
    check-cast p3, Ljava/lang/Runnable;

    if-eqz p3, :cond_9

    .line 12
    instance-of p0, p3, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    if-eqz p0, :cond_8

    .line 13
    check-cast p3, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->isInitCallbacks()Z

    move-result p0

    if-nez p0, :cond_7

    .line 14
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, p0}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->setCallbacks(Ljava/util/ArrayList;)V

    .line 15
    :cond_7
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->getCallbacks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void

    .line 16
    :cond_9
    sget-object p1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->getHighPriorityExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 17
    sget-object p1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->runningList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object p1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Ljava/lang/Runnable;

    .line 20
    instance-of v0, p3, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    if-eqz v0, :cond_b

    .line 21
    check-cast p3, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->getFileUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    goto :goto_4

    :cond_b
    const/4 p3, 0x0

    :goto_4
    if-eqz p3, :cond_a

    move-object v3, p2

    .line 22
    :cond_c
    check-cast v3, Ljava/lang/Runnable;

    if-eqz v3, :cond_13

    .line 23
    sget-object p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-interface {p0, v3}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 24
    :cond_d
    sget-object p1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->getHighPriorityExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 25
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Ljava/lang/Runnable;

    .line 26
    instance-of v4, v1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    if-eqz v4, :cond_f

    .line 27
    check-cast v1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->getFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_e

    move-object v3, p3

    .line 28
    :cond_10
    check-cast v3, Ljava/lang/Runnable;

    if-eqz v3, :cond_12

    .line 29
    instance-of p0, v3, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    if-eqz p0, :cond_11

    .line 30
    check-cast v3, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->makeSureCallbacks()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    return-void

    .line 31
    :cond_12
    sget-object p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 32
    sget-object p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->runningList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_6
    return-void
.end method

.method public static synthetic download$default(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->download(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;Z)V

    return-void
.end method

.method private final getHighPriorityExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->highPriorityExecutor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method private static final writeToFile(Lokhttp3/Response;Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Ljava/io/File;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x800

    new-array p1, p1, [B

    .line 3
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    .line 4
    new-instance p0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 6
    iget-wide v5, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v1, p1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    if-eqz p2, :cond_0

    .line 8
    sget-object v4, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/guochao/faceshow/aaspring/manager/e;

    invoke-direct {v5, p2, p0, v2, v3}, Lcom/guochao/faceshow/aaspring/manager/e;-><init>(Lcom/guochao/faceshow/aaspring/base/http/callback/d;Lkotlin/jvm/internal/Ref$LongRef;J)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private static final writeToFile$lambda-9$lambda-8(Lcom/guochao/faceshow/aaspring/base/http/callback/d;Lkotlin/jvm/internal/Ref$LongRef;J)V
    .locals 8

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    long-to-double v0, v2

    long-to-double v4, p2

    div-double v6, v0, v4

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/guochao/faceshow/aaspring/base/http/callback/d;->onProgress(JJD)V

    return-void
.end method


# virtual methods
.method public onChange(I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    sget-object p1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->failList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->failList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method
