.class Lcom/guochao/faceshow/aaspring/modulars/live/common/x$d;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/x;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;
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
            "Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;->getStatus()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    const/4 v0, 0x2

    iput v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->f:I

    .line 3
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p2

    invoke-interface {p2}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;->getMatchUserInfo()Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat$UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat$UserInfo;->getInviteUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->A(Z)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->h4(J)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->v()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->e()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz p1, :cond_6

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t2()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;->getStatus()I

    move-result p2

    if-nez p2, :cond_2

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iput v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->f:I

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;->getStatus()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;->getStatus()I

    move-result p2

    const/4 v1, -0x2

    if-ne p2, v1, :cond_6

    .line 13
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-eqz p2, :cond_4

    .line 14
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->t2()V

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;->getStatus()I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->e()V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->I()V

    .line 18
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string p2, "\u968f\u673aPK\u5fc3\u8df3: \u5339\u914d\u65e0\u7ed3\u679c code=-1"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_0

    .line 19
    :cond_5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string p2, "\u968f\u673aPK\u5fc3\u8df3: \u6709\u4eba\u8c03\u7528\u4e86\u53d6\u6d88PK code=-2"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_6
    :goto_0
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 3
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u968f\u673aPK\u5fc3\u8df3: \u63a5\u53e3\u62a5\u9519"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$d;->a(Lcom/guochao/faceshow/aaspring/beans/RandomPKHearBeat;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
