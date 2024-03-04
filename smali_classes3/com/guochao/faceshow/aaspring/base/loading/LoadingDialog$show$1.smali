.class public final Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog$show$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;->show()V
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
        "com/guochao/faceshow/aaspring/base/loading/LoadingDialog$show$1",
        "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;",
        "onComplete",
        "",
        "videoItem",
        "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "onError",
        "lib_base_release"
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog$show$1;->this$0:Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 9
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/SVGARect;->getHeight()D

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v2

    .line 3
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog$show$1;->this$0:Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;->access$getSvgaImageView$p(Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_0

    .line 4
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v5

    const/high16 v6, 0x3fc00000    # 1.5f

    if-nez v5, :cond_1

    float-to-double v5, v6

    div-double/2addr v0, v5

    const v7, 0x3fa66666    # 1.3f

    float-to-double v7, v7

    mul-double v0, v0, v7

    double-to-int v0, v0

    .line 6
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-double/2addr v2, v5

    mul-double v2, v2, v7

    double-to-int v0, v2

    .line 7
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    float-to-double v5, v6

    mul-double v0, v0, v5

    double-to-int v0, v0

    .line 8
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-double v2, v2, v5

    double-to-int v0, v2

    .line 9
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog$show$1;->this$0:Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;->access$getSvgaImageView$p(Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog$show$1;->this$0:Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;->access$getSvgaImageView$p(Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog$show$1;->this$0:Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;->access$getSvgaImageView$p(Lcom/guochao/faceshow/aaspring/base/loading/LoadingDialog;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
