.class Lc9/a$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc9/a;->l(Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

.field final synthetic c:Ld9/g;

.field final synthetic d:Lc9/a;


# direct methods
.method constructor <init>(Lc9/a;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;Ld9/g;)V
    .locals 0

    iput-object p1, p0, Lc9/a$a;->d:Lc9/a;

    iput-object p2, p0, Lc9/a$a;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    iput-object p3, p0, Lc9/a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    iput-object p4, p0, Lc9/a$a;->c:Ld9/g;

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

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lc9/a$a;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lc9/a$a;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameInfoId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->setGameInfoId(J)V

    .line 3
    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-direct {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;-><init>()V

    .line 4
    iget-object p2, p0, Lc9/a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->a()I

    move-result p2

    invoke-virtual {v6, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->g(I)V

    .line 5
    iget-object p2, p0, Lc9/a$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->b()I

    move-result p2

    invoke-virtual {v6, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->h(I)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getIsJoin()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v6, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->j(Z)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;->getRoundId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->i(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lc9/a$a;->d:Lc9/a;

    iget-object v3, p0, Lc9/a$a;->c:Ld9/g;

    iget-object v5, p0, Lc9/a$a;->a:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v10}, Lc9/a;->r(Ld9/g;Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;J)V

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

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

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

    invoke-virtual {p0, p1, p2}, Lc9/a$a;->a(Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
