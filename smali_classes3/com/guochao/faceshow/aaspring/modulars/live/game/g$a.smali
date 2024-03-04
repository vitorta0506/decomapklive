.class Lcom/guochao/faceshow/aaspring/modulars/live/game/g$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/g;Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$a;->a:Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
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
            "Ljava/lang/Integer;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 3
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object p1

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p2

    invoke-virtual {p2}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result p2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    sub-int/2addr p2, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setTokenNum(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_2

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6
    :cond_2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->h:I

    sub-int/2addr p1, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p2, p1}, Lp9/a;->B(I)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$a;->a:Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V

    return-void

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 9
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1205cd

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    :cond_5
    if-eqz p1, :cond_6

    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_6

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/g;)V

    .line 12
    :cond_6
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$a;->onFailure(Lg7/a;)V

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
            "Ljava/lang/Integer;",
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

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$a;->a(Ljava/lang/Integer;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
