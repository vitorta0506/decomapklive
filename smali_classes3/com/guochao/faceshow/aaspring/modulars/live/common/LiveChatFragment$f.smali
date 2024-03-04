.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftSVGAImageView:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mGiftSVGAImageView:Lcom/guochao/faceshow/views/SvgaImageViewV2;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    :cond_0
    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
