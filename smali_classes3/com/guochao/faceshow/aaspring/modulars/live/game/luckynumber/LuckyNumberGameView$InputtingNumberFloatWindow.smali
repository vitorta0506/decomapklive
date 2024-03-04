.class Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputtingNumberFloatWindow"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field b:Landroid/widget/ImageView;

.field c:Ljava/lang/Runnable;

.field d:Z

.field final synthetic e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

.field mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->c:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->a:Landroid/view/View;

    .line 4
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->b(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->d:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;)V

    const-string v3, "lucky_inputting"

    invoke-virtual {p1, v1, v3, v2, v0}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    :cond_1
    return-void
.end method

.method private c(Landroid/view/View;J)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->a:Landroid/view/View;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setX(F)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->c:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f0f0487

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f0f0487

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    :cond_0
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->b:Landroid/widget/ImageView;

    const v0, 0x7f0f0488

    .line 4
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-wide/16 v0, 0x3a98

    .line 5
    invoke-direct {p0, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->c(Landroid/view/View;J)V

    return-void
.end method

.method public e(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-wide/16 v0, 0xbb8

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$InputtingNumberFloatWindow;->c(Landroid/view/View;J)V

    :cond_0
    return-void
.end method
