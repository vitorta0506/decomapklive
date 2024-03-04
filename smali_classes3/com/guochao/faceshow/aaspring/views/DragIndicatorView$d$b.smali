.class Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d$b;->a:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d$b;->a:Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;->a()F

    move-result v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$c;->b()F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;->a(Lcom/guochao/faceshow/aaspring/views/DragIndicatorView$d;FF)V

    return-void
.end method
