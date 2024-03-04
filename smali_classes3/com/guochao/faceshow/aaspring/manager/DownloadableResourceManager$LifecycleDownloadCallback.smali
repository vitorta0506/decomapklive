.class public abstract Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LifecycleDownloadCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0012H\u0002J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;",
        "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "life",
        "Ljava/lang/ref/WeakReference;",
        "(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/ref/WeakReference;)V",
        "getLife",
        "()Ljava/lang/ref/WeakReference;",
        "getLifecycleOwner",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "observer",
        "Landroidx/lifecycle/LifecycleObserver;",
        "getObserver",
        "()Landroidx/lifecycle/LifecycleObserver;",
        "setObserver",
        "(Landroidx/lifecycle/LifecycleObserver;)V",
        "fail",
        "",
        "code",
        "",
        "remove",
        "success",
        "item",
        "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final life:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private observer:Landroidx/lifecycle/LifecycleObserver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "life"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;->life:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/ref/WeakReference;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;-><init>(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private final remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;->life:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;->observer:Landroidx/lifecycle/LifecycleObserver;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public fail(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/d;->a(Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;I)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;->remove()V

    return-void
.end method

.method protected final getLife()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;->life:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public final getObserver()Landroidx/lifecycle/LifecycleObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;->observer:Landroidx/lifecycle/LifecycleObserver;

    return-object v0
.end method

.method public final setObserver(Landroidx/lifecycle/LifecycleObserver;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleObserver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;->observer:Landroidx/lifecycle/LifecycleObserver;

    return-void
.end method

.method public success(Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;->remove()V

    return-void
.end method
