.class public final Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator$playGift$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->playGift$lambda-1(Landroid/widget/ImageView;Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V
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
        "com/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator$playGift$1$2",
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
.field final synthetic $imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator$playGift$1$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator$playGift$1$2;->$imageView:Landroid/widget/ImageView;

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

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator$playGift$1$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;

    invoke-static {v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->access$obtainSvgaView(Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator$playGift$1$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;

    invoke-static {v1}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;->access$getContainer$p(Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator$playGift$1$2;->$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator$playGift$1$2;->$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 5
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator$playGift$1$2$onComplete$1;

    iget-object v2, p0, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator$playGift$1$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;

    invoke-direct {v1, v2, v0}, Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator$playGift$1$2$onComplete$1;-><init>(Lcom/guochao/faceshow/component/f2fmatch/utils/F2fGiftAnimator;Lcom/opensource/svgaplayer/SVGAImageView;)V

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V

    .line 6
    new-instance v1, Lcom/opensource/svgaplayer/SVGADrawable;

    invoke-direct {v1, p1}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
