.class Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->l(IILandroid/widget/TextView;Ld9/e$a;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:F

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ld9/e$a;

.field final synthetic f:F


# direct methods
.method constructor <init>(Landroid/widget/TextView;FIILd9/e$a;F)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->a:Landroid/widget/TextView;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->b:F

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->c:I

    iput p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->d:I

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->e:Ld9/e$a;

    iput p6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->f:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->a:Landroid/widget/TextView;

    const/4 v0, 0x1

    new-array v1, v0, [F

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->b:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "scaleX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->a:Landroid/widget/TextView;

    new-array v2, v0, [F

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->b:F

    aput v4, v2, v3

    const-string v4, "scaleY"

    invoke-static {v1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x12c

    .line 4
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object p1, v6, v3

    aput-object v1, v6, v0

    .line 7
    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 8
    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 9
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 10
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->c:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->d:I

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->a:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;->e:Ld9/e$a;

    if-eqz p1, :cond_0

    .line 13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ld9/e$a;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 14
    :cond_1
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/u$a;)V

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
