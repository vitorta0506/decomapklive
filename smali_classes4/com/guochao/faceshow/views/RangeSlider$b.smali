.class Lcom/guochao/faceshow/views/RangeSlider$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/RangeSlider;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/RangeSlider;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/RangeSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/RangeSlider$b;->a:Lcom/guochao/faceshow/views/RangeSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSlider$b;->a:Lcom/guochao/faceshow/views/RangeSlider;

    invoke-static {v0}, Lcom/guochao/faceshow/views/RangeSlider;->c(Lcom/guochao/faceshow/views/RangeSlider;)Lcom/guochao/faceshow/views/ThumbView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSlider$b;->a:Lcom/guochao/faceshow/views/RangeSlider;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/views/RangeSlider;->d(Lcom/guochao/faceshow/views/RangeSlider;I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSlider$b;->a:Lcom/guochao/faceshow/views/RangeSlider;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method
