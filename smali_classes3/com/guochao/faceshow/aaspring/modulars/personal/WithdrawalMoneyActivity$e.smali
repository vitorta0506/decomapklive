.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$e;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;
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
            "Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->getNormList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->getNormList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->getCurrency()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;Z)Z

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->getWithDrawSwitch()Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->getWithDrawSwitch()Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;->getAliPaySwitch()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setAliPaySwitch(I)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->getWithDrawSwitch()Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;->getPayoneerSwitch()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setPayoneerSwitch(I)V

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->getWithDrawSwitch()Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;->getPayoneerSwitchV2()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setPayoneerSwitchV2(I)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->getWithDrawSwitch()Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;->getPaypalSwitch()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setPaypalSwitch(I)V

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->getWithDrawSwitch()Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData$WithDrawSwitch;->getUsdtSwitch()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->setUsdtSwitch(I)V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/manager/i;->z()V

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;->getNormList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/mine/model/WithdrawalBean;

    .line 14
    iget v0, p2, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->currency:I

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setDatas(Ljava/util/List;)V

    goto :goto_2

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->b:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setDatas(Ljava/util/List;)V

    .line 20
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    goto :goto_3

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->l0()V

    :goto_3
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
            "Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$e;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->l0()V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$e;->a(Lcom/guochao/faceshow/aaspring/beans/WithdrawalData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
