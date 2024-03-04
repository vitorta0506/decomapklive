.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->addFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhb/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;Ljava/lang/String;)V

    const-wide/16 v2, 0x578

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->focusBtn:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setFocused(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getLevel()I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isAdministrator()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createFocusBroadCasterModel(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;->b(Ljava/lang/String;)V

    return-void
.end method
