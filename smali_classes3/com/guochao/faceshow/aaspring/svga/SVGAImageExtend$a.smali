.class Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGACallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/opensource/svgaplayer/SVGACallback;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend;Lcom/opensource/svgaplayer/SVGACallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$a;->b:Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$a;->a:Lcom/opensource/svgaplayer/SVGACallback;

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$a;->b:Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->getLoops()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$a;->b:Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->getClearsAfterStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$a;->b:Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->getMVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$a;->b:Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->getMVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->release()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$a;->a:Lcom/opensource/svgaplayer/SVGACallback;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/opensource/svgaplayer/SVGACallback;->onFinished()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$a;->a:Lcom/opensource/svgaplayer/SVGACallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/opensource/svgaplayer/SVGACallback;->onPause()V

    :cond_0
    return-void
.end method

.method public onRepeat()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$a;->a:Lcom/opensource/svgaplayer/SVGACallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/opensource/svgaplayer/SVGACallback;->onRepeat()V

    :cond_0
    return-void
.end method

.method public onStep(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/svga/SVGAImageExtend$a;->a:Lcom/opensource/svgaplayer/SVGACallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGACallback;->onStep(ID)V

    :cond_0
    return-void
.end method
