.class Lcom/guochao/faceshow/aaspring/modulars/live/common/x$e;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/PkRound;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/x;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/PkRound;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 8
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/PkRound;
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
            "Lcom/guochao/faceshow/aaspring/beans/PkRound;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/PkRound;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->k:Z

    .line 3
    iput-boolean v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->i:Z

    .line 4
    iput-object p1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->c:Lcom/guochao/faceshow/aaspring/beans/PkRound;

    .line 5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object p2

    if-nez p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->M5:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->y(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;)V

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->c:Lcom/guochao/faceshow/aaspring/beans/PkRound;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/PkRound;->getSelectTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->g4(J)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->m()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;

    move-result-object p2

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->c:Lcom/guochao/faceshow/aaspring/beans/PkRound;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/PkRound;->getSelectTime()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->h0(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;JZ)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkRound;->getSelectTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkRound;->getPkIngEndTime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PkRound;->getPkPunishEndTime()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BasePkLiveRoomFragment;->k4(JJJZ)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/x;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->p:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->v:Ljava/lang/String;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/x;->c:Lcom/guochao/faceshow/aaspring/beans/PkRound;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createPkChangeUiModel(Lcom/guochao/faceshow/aaspring/beans/PkRound;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendC2CLiveMessage(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    :cond_2
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
            "Lcom/guochao/faceshow/aaspring/beans/PkRound;",
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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PkRound;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/x$e;->a(Lcom/guochao/faceshow/aaspring/beans/PkRound;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
