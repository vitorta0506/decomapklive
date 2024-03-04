.class Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;->onConfirm(Landroid/app/Dialog;ZLjava/lang/String;)V
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
.field final synthetic a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;

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

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->g0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;Lg7/a;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
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
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    const-string/jumbo p2, "tokens/user/trade/withdrawApplication"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    const-string/jumbo v0, "userId"

    .line 3
    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->h:I

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "withdraw_id"

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->e:I

    .line 5
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "pay_type"

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->enterPayName:Landroid/widget/EditText;

    .line 6
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "realName"

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->etAccount:Landroid/widget/EditText;

    .line 7
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "account"

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a$a;-><init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
