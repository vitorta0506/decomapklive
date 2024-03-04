.class Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;->c(Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/view/ViewfinderView;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
