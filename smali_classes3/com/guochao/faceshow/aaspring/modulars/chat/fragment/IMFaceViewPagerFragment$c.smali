.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->d:Landroid/view/View;

    const v1, 0x7f0a0af5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    .line 2
    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 3
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitImageView(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V

    .line 4
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
