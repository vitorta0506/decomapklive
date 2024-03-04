.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewGrid:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewGrid:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewGrid:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mViewGrid:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
