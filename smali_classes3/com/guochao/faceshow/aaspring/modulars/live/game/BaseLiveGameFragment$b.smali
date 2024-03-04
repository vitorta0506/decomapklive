.class Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->P1()V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;",
            ">;>;)V"
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

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment$b;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameInfoId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->b:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v6

    const-string v1, "LIVE_LUCKY_REMOTE_CANCEL"

    move-object v2, p1

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLuckyCancelMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getSelectTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->d:Ld9/g;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getSelectTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->e:J

    .line 8
    invoke-static {}, Lc9/a;->i()Lc9/a;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;

    iget-wide v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseLiveGameFragment;->e:J

    iput-wide v0, p1, Lc9/a;->b:J

    return-void
.end method
