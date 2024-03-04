.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0b47

    const-string v2, "field \'mTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->mTextView:Landroid/widget/TextView;

    .line 4
    const-class v0, Lcom/opensource/svgaplayer/SVGAImageView;

    const v1, 0x7f0a09f1

    const-string v2, "field \'mSVGAImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->mTextView:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
