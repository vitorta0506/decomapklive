.class public abstract Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment$b;
    }
.end annotation


# instance fields
.field private a:Z

.field protected b:Z

.field c:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->b:Z

    return-void
.end method


# virtual methods
.method public P1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->b:Z

    return v0
.end method

.method public continueGame(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/SoundPoolManager;->playDefaultButtonSound()I

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment$b;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->a:Z

    .line 5
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment$b;

    invoke-interface {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment$b;->y0(Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->b:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->a:Z

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->b:Z

    return-void
.end method
