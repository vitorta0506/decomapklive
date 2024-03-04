.class Lcom/guochao/faceshow/aaspring/views/PKProgressView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/PKProgressView;->h(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/guochao/faceshow/aaspring/views/PKProgressView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/PKProgressView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView$b;->c:Lcom/guochao/faceshow/aaspring/views/PKProgressView;

    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView$b;->a:J

    iput-wide p4, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView$b;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView$b;->c:Lcom/guochao/faceshow/aaspring/views/PKProgressView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->c(Lcom/guochao/faceshow/aaspring/views/PKProgressView;)J

    move-result-wide v1

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView$b;->a:J

    long-to-float v2, v2

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->b(Lcom/guochao/faceshow/aaspring/views/PKProgressView;J)J

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView$b;->c:Lcom/guochao/faceshow/aaspring/views/PKProgressView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->e(Lcom/guochao/faceshow/aaspring/views/PKProgressView;)J

    move-result-wide v1

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView$b;->b:J

    long-to-float v2, v2

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->d(Lcom/guochao/faceshow/aaspring/views/PKProgressView;J)J

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView$b;->c:Lcom/guochao/faceshow/aaspring/views/PKProgressView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
