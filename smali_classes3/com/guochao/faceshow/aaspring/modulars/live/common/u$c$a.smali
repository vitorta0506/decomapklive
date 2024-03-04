.class Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->c:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    const-string v1, "translationX"

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->a:Landroid/view/View;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->a:Landroid/view/View;

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v0, v2

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_0
    const-wide/16 v0, 0x12c

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x44bb8000    # 1500.0f
    .end array-data
.end method
