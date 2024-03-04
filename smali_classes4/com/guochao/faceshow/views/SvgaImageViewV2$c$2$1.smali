.class public final Lcom/guochao/faceshow/views/SvgaImageViewV2$c$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/SvgaImageViewV2$c$2;->invoke()Lcom/guochao/faceshow/views/SvgaImageViewV2$c$2$1;
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
        "com/guochao/faceshow/views/SvgaImageViewV2$c$2$1",
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
.field final synthetic this$0:Lcom/guochao/faceshow/views/SvgaImageViewV2;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/SvgaImageViewV2;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2$c$2$1;->this$0:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 3
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2$c$2$1;->this$0:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2$c$2$1;->this$0:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    new-instance v1, Lcom/opensource/svgaplayer/SVGADrawable;

    invoke-direct {v1, p1}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2$c$2$1;->this$0:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v0, :cond_0

    if-eq v1, v2, :cond_2

    :cond_0
    if-ne v1, v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2$c$2$1;->this$0:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitWidth(Lcom/opensource/svgaplayer/SVGAVideoEntity;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    const/4 v0, -0x2

    if-ne v1, v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2$c$2$1;->this$0:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->getResizeScale()F

    move-result v1

    .line 8
    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitImageView(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;F)V

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2$c$2$1;->this$0:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    :cond_3
    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
