.class Lcom/previewlibrary/wight/SmoothImageView$a;
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
.field a:I

.field final synthetic b:Lcom/previewlibrary/wight/SmoothImageView;


# direct methods
.method constructor <init>(Lcom/previewlibrary/wight/SmoothImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView$a;->b:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/previewlibrary/wight/SmoothImageView$a;->a:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget v0, p0, Lcom/previewlibrary/wight/SmoothImageView$a;->a:I

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/previewlibrary/wight/SmoothImageView$a;->b:Lcom/previewlibrary/wight/SmoothImageView;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->offsetTopAndBottom(I)V

    .line 4
    :cond_0
    iput p1, p0, Lcom/previewlibrary/wight/SmoothImageView$a;->a:I

    return-void
.end method
