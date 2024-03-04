.class Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->x2(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->b2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->c2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    new-instance v0, Lcom/opensource/svgaplayer/SVGADrawable;

    invoke-direct {v0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->c2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitScreenWidth(Lcom/opensource/svgaplayer/SVGAVideoEntity;Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->c2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->c2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
