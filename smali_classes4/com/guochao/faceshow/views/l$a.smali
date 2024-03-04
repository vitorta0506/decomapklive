.class Lcom/guochao/faceshow/views/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/l;->c(Landroid/content/Context;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/l;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/l;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/l$a;->a:Lcom/guochao/faceshow/views/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 10
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/l$a;->a:Lcom/guochao/faceshow/views/l;

    invoke-static {v0}, Lcom/guochao/faceshow/views/l;->a(Lcom/guochao/faceshow/views/l;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/l$a;->a:Lcom/guochao/faceshow/views/l;

    invoke-static {v0}, Lcom/guochao/faceshow/views/l;->a(Lcom/guochao/faceshow/views/l;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/SVGARect;->getHeight()D

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v2

    .line 5
    iget-object v4, p0, Lcom/guochao/faceshow/views/l$a;->a:Lcom/guochao/faceshow/views/l;

    invoke-static {v4}, Lcom/guochao/faceshow/views/l;->b(Lcom/guochao/faceshow/views/l;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v5

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    if-nez v5, :cond_2

    div-double/2addr v0, v6

    const-wide v8, 0x3ff4ccccc0000000L    # 1.2999999523162842

    mul-double v0, v0, v8

    double-to-int v0, v0

    .line 7
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-double/2addr v2, v6

    mul-double v2, v2, v8

    double-to-int v0, v2

    .line 8
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    mul-double v0, v0, v6

    double-to-int v0, v0

    .line 9
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-double v2, v2, v6

    double-to-int v0, v2

    .line 10
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/l$a;->a:Lcom/guochao/faceshow/views/l;

    invoke-static {v0}, Lcom/guochao/faceshow/views/l;->b(Lcom/guochao/faceshow/views/l;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/views/l$a;->a:Lcom/guochao/faceshow/views/l;

    invoke-static {v0}, Lcom/guochao/faceshow/views/l;->b(Lcom/guochao/faceshow/views/l;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/views/l$a;->a:Lcom/guochao/faceshow/views/l;

    invoke-static {p1}, Lcom/guochao/faceshow/views/l;->b(Lcom/guochao/faceshow/views/l;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
