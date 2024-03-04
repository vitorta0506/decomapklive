.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->onConfirm(Landroid/app/Dialog;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Lg7/a;)V

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
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 11
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    const-string p2, "tokens/user/trade/withdrawApplication"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget v0, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->a:I

    sget v1, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_ALI_PAY:I

    const-string v2, "realName"

    const-string v3, "payee"

    const-string v4, "withdrawType"

    const-string v5, "ruleId"

    const-string v6, "pay_type"

    const-string v7, "withdraw_id"

    const-string v8, "account"

    const-string v9, "userId"

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->y0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-static {p2, v9}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->A0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etAliPayName:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etAliPayAccount:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;-><init>()V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->f:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-virtual {p2, v1, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;->startRequest(Lcom/guochao/faceshow/aaspring/base/http/callback/c;Landroidx/lifecycle/LifecycleOwner;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 12
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-static {p2, v9}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v9, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    .line 13
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->A0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    .line 14
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etAliPayName:Landroid/widget/EditText;

    .line 15
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etAliPayAccount:Landroid/widget/EditText;

    .line 16
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->f:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    .line 17
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto/16 :goto_0

    .line 18
    :cond_1
    sget v1, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_PAYONEER:I

    if-ne v0, v1, :cond_3

    .line 19
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->y0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 20
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 21
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-static {p2, v9}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->A0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;-><init>()V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->f:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-virtual {p2, v1, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;->startRequest(Lcom/guochao/faceshow/aaspring/base/http/callback/c;Landroidx/lifecycle/LifecycleOwner;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 26
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-static {p2, v9}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v9, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    .line 27
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->A0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    .line 28
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    .line 29
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/PayoneerData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/PayoneerData;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->f:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    .line 30
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto/16 :goto_0

    .line 31
    :cond_3
    sget v1, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_PAYONEERV2:I

    if-ne v0, v1, :cond_5

    .line 32
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->y0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 33
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 34
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-static {p2, v9}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->A0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerAccount:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;-><init>()V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->f:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-virtual {p2, v1, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;->startRequest(Lcom/guochao/faceshow/aaspring/base/http/callback/c;Landroidx/lifecycle/LifecycleOwner;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 39
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-static {p2, v9}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v9, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    .line 40
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->A0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    .line 41
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayoneerAccount:Landroid/widget/EditText;

    .line 42
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->f:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    .line 43
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto/16 :goto_0

    .line 44
    :cond_5
    sget v1, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_BANK_CARD:I

    if-ne v0, v1, :cond_7

    .line 45
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->y0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Z

    move-result p2

    const-string v0, "banck_address"

    const-string v1, "bank_id"

    if-eqz p2, :cond_6

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 47
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-static {p2, v9}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->A0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAccount:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAccountHolder:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->B0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/mine/model/BankBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/BankBean;->getBank_id()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAddress:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;-><init>()V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->f:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-virtual {p2, v1, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;->startRequest(Lcom/guochao/faceshow/aaspring/base/http/callback/c;Landroidx/lifecycle/LifecycleOwner;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 55
    :cond_6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-static {p2, v9}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v9, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    .line 56
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->A0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    .line 57
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAccount:Landroid/widget/EditText;

    .line 58
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAccountHolder:Landroid/widget/EditText;

    .line 59
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    .line 60
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->B0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/mine/model/BankBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/BankBean;->getBank_id()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etBankCardAddress:Landroid/widget/EditText;

    .line 61
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->f:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    .line 62
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto/16 :goto_0

    .line 63
    :cond_7
    sget v1, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_PAY_PAL:I

    const-string v10, "withDrawCountry"

    if-ne v0, v1, :cond_9

    .line 64
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->y0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 66
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-static {p2, v9}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->A0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayPalName:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayPalAccount:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->E0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v10, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;-><init>()V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->f:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-virtual {p2, v1, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;->startRequest(Lcom/guochao/faceshow/aaspring/base/http/callback/c;Landroidx/lifecycle/LifecycleOwner;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 73
    :cond_8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-static {p2, v9}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v9, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    .line 74
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->A0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    .line 75
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayPalName:Landroid/widget/EditText;

    .line 76
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->etPayPalAccount:Landroid/widget/EditText;

    .line 77
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    .line 78
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->E0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v10, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->f:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    .line 79
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto/16 :goto_0

    .line 80
    :cond_9
    sget v1, Lcom/guochao/faceshow/utils/BaseConfig;->WITHDRAWAL_USDT:I

    if-ne v0, v1, :cond_c

    .line 81
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->b()Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_0

    .line 82
    :cond_a
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->y0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Z

    move-result p2

    const-string v0, "usdtChannel"

    if-eqz p2, :cond_b

    .line 83
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 84
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-static {p2, v9}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->A0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->e()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->c()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->E0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v10, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;-><init>()V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->f:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-virtual {p2, v1, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithDrawH5RequestUtils;->startRequest(Lcom/guochao/faceshow/aaspring/base/http/callback/c;Landroidx/lifecycle/LifecycleOwner;Ljava/util/Map;)V

    goto :goto_0

    .line 91
    :cond_b
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-static {p2, v9}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v9, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    .line 92
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->A0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a:I

    .line 93
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;

    .line 94
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->e()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;

    .line 95
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$k;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v8, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    .line 96
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->E0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v10, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->f:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    .line 97
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    nop

    :cond_c
    :goto_0
    return-void
.end method
