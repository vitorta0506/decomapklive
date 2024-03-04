.class Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->onCustomRecharge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Ld9/g;

    move-result-object p2

    invoke-interface {p2}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->e0(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;)Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result p2

    if-ne p2, v0, :cond_1

    const-string p2, "1"

    goto :goto_0

    :cond_1
    const-string p2, "0"

    :goto_0
    const-string v0, "isToken"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/play/PlayRotateOpenSetting;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
