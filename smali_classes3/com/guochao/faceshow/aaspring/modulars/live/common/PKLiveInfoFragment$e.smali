.class Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->e2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 9
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;
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
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "LiveRoom"

    const-string p2, "pk result fail: list is null"

    .line 1
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->getRemainTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e;)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->getRemainTime()J

    move-result-wide v1

    .line 5
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;->getIsWin()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;

    move-result-object p2

    const-string v0, "0"

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;->setIsWin(Ljava/lang/String;)V

    :cond_2
    const/4 p2, 0x1

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;->getIsWin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 9
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->n()Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->C(I)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    .line 12
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;->getPkEarnings()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;->getPkEarnings()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v2

    move v2, v0

    .line 13
    invoke-interface/range {v1 .. v8}, Ld9/g;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 14
    :try_start_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;->getPkEarnings()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 15
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;->getPkEarnings()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 16
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->C2(JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    :catch_1
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;I)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iput-boolean p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->d:Z

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pk result fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LiveRoom"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$e;->a(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
