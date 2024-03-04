.class public final Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback$success$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;->success(Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback$success$1",
        "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;",
        "onComplete",
        "",
        "videoItem",
        "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "onError",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback$success$1;->this$0:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 2
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback$success$1;->this$0:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;->getLife()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback$success$1;->this$0:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;->success(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    return-void
.end method

.method public onError()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback$success$1;->this$0:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;->fail(I)V

    return-void
.end method
