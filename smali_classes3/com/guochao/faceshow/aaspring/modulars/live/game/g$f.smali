.class Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

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
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1205d0

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 12
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
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->r:Lcom/guochao/faceshow/views/e;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->r:Lcom/guochao/faceshow/views/e;

    invoke-virtual {p2}, Lcom/guochao/faceshow/views/e;->dismiss()V

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v1, 0x0

    .line 7
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;->getIdx()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->m:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;->getDiamond()I

    move-result v1

    if-ge v10, v1, :cond_4

    move v10, v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    if-eqz p1, :cond_7

    .line 14
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getFlag()I

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "LIVE_LUCKY_REMOTE_START"

    goto :goto_2

    :cond_6
    const-string p1, "LIVE_LUCKY_REMOTE_START_V_COIN"

    :goto_2
    move-object v1, p1

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget v5, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int v5, v5, p1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    .line 15
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getGameInfoId()J

    move-result-wide v6

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getRoundId()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget v9, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->p:Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getFlag()I

    move-result v11

    .line 16
    invoke-static/range {v1 .. v11}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLuckyStartMessageModel(Ljava/lang/String;Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;IIJLjava/lang/String;III)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 17
    :cond_7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string p2, "\u53d6\u6d88\u4e4b\u524d\u7684\u4efb\u52a1\uff0c\u51c6\u5907\u5f00\u59cb\u8f6c\u4e86"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->n:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->D()V

    return-void

    .line 20
    :cond_8
    :goto_3
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$f;->onFailure(Lg7/a;)V

    return-void
.end method
