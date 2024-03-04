.class Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->onInviteClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Ld9/g;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;)Leb/b;

    move-result-object v2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    const v4, 0x7f1204a3

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    const v5, 0x7f120495

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;

    iget-object v7, v7, Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/guochao/faceshow/aaspring/utils/UrlUtils;->appendInviter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v8

    .line 5
    invoke-virtual/range {v2 .. v8}, Leb/b;->F(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
