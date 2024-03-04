.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;
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
            "Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    invoke-static {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;I)I

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    invoke-static {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;I)I

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_0
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;->getTotal()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;->getTotal()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$TotalBean;

    .line 7
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$TotalBean;->getAmount_type()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$TotalBean;->getAmount()I

    move-result v2

    invoke-static {v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;I)I

    goto :goto_0

    .line 9
    :cond_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$TotalBean;->getAmount()I

    move-result v2

    invoke-static {v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;I)I

    goto :goto_0

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;)I

    move-result p2

    const/16 v2, 0x8

    if-eqz p2, :cond_3

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->tvAllRmb:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    iget-object v3, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->tvAllRmb:Landroid/widget/TextView;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    const-string p2, "\uffe5{0}"

    invoke-static {p2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->tvAllRmb:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :goto_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;)I

    move-result p2

    if-eqz p2, :cond_5

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->tvAllUsd:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p2

    invoke-virtual {p2}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p2

    const-string v3, "ar"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    iget-object v3, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->tvAllUsd:Landroid/widget/TextView;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    const-string p2, " {0} US$"

    invoke-static {p2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 18
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    iget-object v3, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->tvAllUsd:Landroid/widget/TextView;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    const-string p2, "US$ {0}"

    invoke-static {p2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 19
    :cond_5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;->tvAllUsd:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    :goto_2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->a:I

    if-ne p2, v0, :cond_7

    if-eqz p1, :cond_8

    .line 21
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;->getPage()Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 22
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;->getPage()Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 v3, 0x14

    if-lt p2, v3, :cond_6

    .line 23
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setFooterView(I)V

    goto :goto_3

    .line 24
    :cond_6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    invoke-virtual {p2, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setFooterView(I)V

    .line 25
    :goto_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;->getPage()Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setDatas(Ljava/util/List;)V

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_8

    .line 26
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;->getPage()Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 27
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;->getPage()Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    .line 28
    :cond_8
    :goto_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;->getPage()Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;->getPage()Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;->getPage()Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$PageBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

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
            "Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setFooterView(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity$a;->a(Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
