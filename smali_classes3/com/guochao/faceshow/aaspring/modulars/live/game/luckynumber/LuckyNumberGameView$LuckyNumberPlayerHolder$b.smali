.class Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mInfoView:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->mCardBg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v0

    const-string v0, "rotationY"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xb4

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberGameView$LuckyNumberPlayerHolder;->j()V

    return-void
.end method
