.class Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->b:Z

    .line 4
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;->onDismiss()V

    :cond_1
    :goto_0
    return-void
.end method
