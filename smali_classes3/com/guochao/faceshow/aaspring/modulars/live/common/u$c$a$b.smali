.class Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a$b;->a:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a$b;->a:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a$b;->a:Z

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$c;->d:Lcom/guochao/faceshow/aaspring/modulars/live/common/u$g;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u$g;->a()V

    :cond_0
    return-void
.end method
