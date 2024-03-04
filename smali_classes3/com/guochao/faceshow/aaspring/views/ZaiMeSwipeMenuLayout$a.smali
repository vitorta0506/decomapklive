.class Lcom/guochao/faceshow/aaspring/views/ZaiMeSwipeMenuLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/ZaiMeSwipeMenuLayout;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/ZaiMeSwipeMenuLayout;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/ZaiMeSwipeMenuLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ZaiMeSwipeMenuLayout$a;->a:Lcom/guochao/faceshow/aaspring/views/ZaiMeSwipeMenuLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ZaiMeSwipeMenuLayout$a;->a:Lcom/guochao/faceshow/aaspring/views/ZaiMeSwipeMenuLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    return-void
.end method
