.class Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;

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

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->svgGuid:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->svgGuid:Lcom/opensource/svgaplayer/SVGAImageView;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitImageView(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;F)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment$a;->a:Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->svgGuid:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
