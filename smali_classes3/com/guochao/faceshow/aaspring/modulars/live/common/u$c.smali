.class Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->g(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/guochao/faceshow/aaspring/modulars/live/common/u$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:[I

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$g;


# direct methods
.method constructor <init>(Landroid/view/View;[ILandroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/live/common/u$g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->b:[I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->a:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "scaleY"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0xc8

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->b:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
