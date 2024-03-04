.class Lcom/guochao/faceshow/aaspring/modulars/live/game/g$g;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1205ab

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$g;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getGameInfoId()J

    move-result-wide v2

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getRoundId()Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object v6, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getFlag()I

    move-result v5

    const-string v0, "LIVE_LUCKY_REMOTE_CANCEL"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLuckyCancelMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p2

    const/4 v0, 0x0

    .line 8
    invoke-interface {v6, p2, v0}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-boolean p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->k:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 11
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p2

    invoke-virtual {p2}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 12
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p2

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    invoke-virtual {v1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;->getBackDiamond()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p2, v1}, Lp9/a;->B(I)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p2

    invoke-virtual {p2}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object p2

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    invoke-virtual {v1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;->getBackDiamond()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setTokenNum(I)V

    .line 14
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->f()V

    return-void
.end method
