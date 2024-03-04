.class Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->x:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->x:I

    if-gtz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->m:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoardNow(Landroid/content/Context;Landroid/view/View;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->Z1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    const v3, 0x7f1208a6

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->mTextViewInputSubmit:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    iget v5, v5, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "s)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->a2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->y:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
