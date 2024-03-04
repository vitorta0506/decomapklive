.class Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

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

    .line 1
    new-instance v0, Lcom/opensource/svgaplayer/SVGADrawable;

    invoke-direct {v0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitScreenWidth(Lcom/opensource/svgaplayer/SVGAVideoEntity;Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method
