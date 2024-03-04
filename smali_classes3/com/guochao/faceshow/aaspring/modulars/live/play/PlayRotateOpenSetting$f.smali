.class Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomRecharge()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f$a;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;)V

    invoke-direct {v0, v2, v3}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    .line 5
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v3

    if-ne v3, v1, :cond_2

    const v1, 0x7f120828

    goto :goto_0

    :cond_2
    const v1, 0x7f12016a

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->l()Lcom/guochao/faceshow/views/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onResponse()V
    .locals 5

    .line 1
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    .line 2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    invoke-virtual {v1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->a2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)I

    move-result v0

    if-lt v1, v0, :cond_1

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->a2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->f2(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;Z)Z

    return-void
.end method
