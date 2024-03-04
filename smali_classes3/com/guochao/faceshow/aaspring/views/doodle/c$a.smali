.class Lcom/guochao/faceshow/aaspring/views/doodle/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/doodle/c;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/doodle/c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/doodle/c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/c;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->e(Lcom/guochao/faceshow/aaspring/views/doodle/c;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/c;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->e(Lcom/guochao/faceshow/aaspring/views/doodle/c;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/c;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->d(Lcom/guochao/faceshow/aaspring/views/doodle/c;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/c;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->e(Lcom/guochao/faceshow/aaspring/views/doodle/c;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/c;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->f(Lcom/guochao/faceshow/aaspring/views/doodle/c;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H(FFF)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/c;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->e(Lcom/guochao/faceshow/aaspring/views/doodle/c;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/c;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->g(Lcom/guochao/faceshow/aaspring/views/doodle/c;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/c$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/c;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->h(Lcom/guochao/faceshow/aaspring/views/doodle/c;)F

    move-result p1

    mul-float p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I(FF)V

    return-void
.end method
