.class Lcom/previewlibrary/wight/SmoothImageView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/previewlibrary/wight/SmoothImageView;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/previewlibrary/wight/SmoothImageView;


# direct methods
.method constructor <init>(Lcom/previewlibrary/wight/SmoothImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView$e;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView$e;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-static {v0}, Lcom/previewlibrary/wight/SmoothImageView;->d(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$i;

    move-result-object v0

    const-string v1, "animAlpha"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->e:I

    .line 2
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView$e;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-static {v0}, Lcom/previewlibrary/wight/SmoothImageView;->d(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$i;

    move-result-object v0

    const-string v1, "animScale"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->f:F

    .line 3
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView$e;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-static {v0}, Lcom/previewlibrary/wight/SmoothImageView;->d(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$i;

    move-result-object v0

    const-string v1, "animLeft"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->a:F

    .line 4
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView$e;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-static {v0}, Lcom/previewlibrary/wight/SmoothImageView;->d(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$i;

    move-result-object v0

    const-string v1, "animTop"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->b:F

    .line 5
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView$e;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-static {v0}, Lcom/previewlibrary/wight/SmoothImageView;->d(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$i;

    move-result-object v0

    const-string v1, "animWidth"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->c:F

    .line 6
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView$e;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-static {v0}, Lcom/previewlibrary/wight/SmoothImageView;->d(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$i;

    move-result-object v0

    const-string v1, "animHeight"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/previewlibrary/wight/SmoothImageView$i;->d:F

    .line 7
    iget-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView$e;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
