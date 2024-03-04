.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->g:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->g:I

    if-gtz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mTextViewIKnow:Landroid/widget/TextView;

    const v1, 0x7f120530

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mTextViewIKnow:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    .line 4
    :cond_0
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->mTextViewIKnow:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f120531

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    iget v5, v5, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->g:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->a:Landroid/os/Handler;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
