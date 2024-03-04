.class Lcom/previewlibrary/wight/SmoothImageView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/previewlibrary/wight/SmoothImageView;->p()V
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

    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView$d;->a:Lcom/previewlibrary/wight/SmoothImageView;

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

    .line 2
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView$d;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 3
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView$d;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method
