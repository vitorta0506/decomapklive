.class Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/SvgaHelper;->playAnim(Lcom/opensource/svgaplayer/SVGAImageView;Ljava/io/File;Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$CallBack;

.field final synthetic val$imageView:Lcom/opensource/svgaplayer/SVGAImageView;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAImageView;Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$1;->val$imageView:Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$1;->val$callBack:Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$1;->val$imageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitScreenWidth(Lcom/opensource/svgaplayer/SVGAVideoEntity;Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$1;->val$imageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$1;->val$imageView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$1;->val$imageView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$1;->val$imageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    return-void
.end method

.method public onError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$1;->val$callBack:Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$CallBack;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/utils/SvgaHelper$CallBack;->onError()V

    :cond_0
    return-void
.end method
