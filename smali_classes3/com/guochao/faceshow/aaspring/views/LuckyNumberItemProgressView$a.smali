.class Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView$a;->a:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView$a;->a:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;->h:F

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView$a;->a:Lcom/guochao/faceshow/aaspring/views/LuckyNumberItemProgressView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
