.class Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
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
.field final synthetic a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
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

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120adf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a$a;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
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
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalActivity;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/mine/view/WithdrawalActivity;->e0(Lcom/guochao/faceshow/mine/view/WithdrawalActivity;Ljava/lang/String;)V

    return-void
.end method
