.class Lcom/guochao/faceshow/aaspring/modulars/live/common/x$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/x;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;
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
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 2
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setIsPKPrepare(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->y(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u8f7d\u5bf9\u65b9\u4e3b\u64ad\u7684\u52a0\u901f\u6d41\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getJsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->v:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->W5:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getLiveId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->X5:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->a6:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getServerTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m:J

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->K()V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPk()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->getNickName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->q5(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
            ">;)V"
        }
    .end annotation

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$a;->a(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
