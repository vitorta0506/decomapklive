.class Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->a:I

    iput-wide p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->b:J

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 11
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;
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
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    if-eqz v0, :cond_6

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    .line 3
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->onFailure(Lg7/a;)V

    return-void

    .line 5
    :cond_1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->a:I

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->setFlag(I)V

    .line 6
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->setGameInfoId(J)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getIsJoin()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->u(Z)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->w(Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;)V

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getFlag()I

    move-result p2

    const v0, 0x7f0a045c

    if-nez p2, :cond_3

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0f04b8

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0f04b7

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12
    :goto_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->W(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getRoundId()Ljava/lang/String;

    move-result-object v8

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    if-eqz p2, :cond_6

    .line 15
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getIsJoin()I

    move-result p2

    if-ne p2, v1, :cond_4

    .line 17
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    invoke-interface {p2}, Lb8/d;->c()Lb8/a;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->r(I)V

    .line 19
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d:Ld9/g;

    .line 20
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->a:I

    if-nez v0, :cond_5

    const-string v0, "LIVE_LUCKY_REMOTE_READY"

    goto :goto_2

    :cond_5
    const-string v0, "LIVE_LUCKY_REMOTE_READY_V_COIN"

    :goto_2
    move-object v2, v0

    .line 21
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/guochao/faceshow/bean/UserBean;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget v4, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->g:I

    .line 22
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getGameInfoId()J

    move-result-wide v6

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget v9, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    iget v10, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->a:I

    .line 23
    invoke-static/range {v2 .. v10}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createLuckyReadyMessageModel(Ljava/lang/String;Lcom/guochao/faceshow/bean/UserBean;ILjava/util/List;JLjava/lang/String;II)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    :cond_6
    :goto_3
    return-void
.end method

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
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1205b1

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/f$d$a;->a(Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
