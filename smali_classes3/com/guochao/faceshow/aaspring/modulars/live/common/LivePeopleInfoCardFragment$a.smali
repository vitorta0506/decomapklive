.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->addFocus()V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->focusClick:Z

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->setFocused(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->setIs_tutual(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->focusClick:Z

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->setIs_tutual(I)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->access$200(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserId:Ljava/lang/String;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {p1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getLevel()I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isAdministrator()Z

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createFocusBroadCasterModel(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mILiveRoomManager:Ld9/g;

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->mUserId:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment$a;->b(Ljava/lang/String;)V

    return-void
.end method
