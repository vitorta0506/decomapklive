.class Lcom/previewlibrary/wight/SmoothImageView$c;
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

    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView$c;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView$c;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-static {v0}, Lcom/previewlibrary/wight/SmoothImageView;->c(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView$c;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-static {v0}, Lcom/previewlibrary/wight/SmoothImageView;->c(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$g;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/previewlibrary/wight/SmoothImageView$g;->a(I)V

    :cond_0
    return-void
.end method
