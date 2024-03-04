.class public final Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity$getWithdrawData$$inlined$success$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;->getWithdrawData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u00012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "_response",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "",
        "invoke",
        "com/guochao/faceshow/aaspring/base/http/v2/GCRequest$success$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity$getWithdrawData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity$getWithdrawData$$inlined$success$1;->invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity$getWithdrawData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;->setWithdrawSpecification(Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;->getInviteMoney()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity$getWithdrawData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;->getTvTotalBalance()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;->getCanUseMoney()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 7
    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity$getWithdrawData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;->getTvCanBalance()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;->getInviteEarnMoneyRuleSets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v4, "inviteEarnMoneyRuleSets"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_4

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity$getWithdrawData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawSpecification;->getInviteEarnMoneyRuleSets()Ljava/util/List;

    move-result-object v1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;->setMList(Ljava/util/List;)V

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity$getWithdrawData$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;->access$getSpecificationAdapter$p(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
