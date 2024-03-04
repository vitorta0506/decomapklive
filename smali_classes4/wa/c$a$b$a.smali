.class Lwa/c$a$b$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/c$a$b;->onConfirm(Landroid/app/Dialog;ZLjava/lang/String;)V
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
.field final synthetic a:Lwa/c$a$b;


# direct methods
.method constructor <init>(Lwa/c$a$b;)V
    .locals 0

    iput-object p1, p0, Lwa/c$a$b$a;->a:Lwa/c$a$b;

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
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lwa/c$a$b$a;->a:Lwa/c$a$b;

    iget-object p1, p1, Lwa/c$a$b;->b:Lwa/c$a;

    iget-object p1, p1, Lwa/c$a;->c:Lwa/c;

    invoke-static {p1}, Lwa/c;->c(Lwa/c;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lwa/c$a$b$a;->a:Lwa/c$a$b;

    iget-object p1, p1, Lwa/c$a$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1206ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 5
    iget-object p1, p0, Lwa/c$a$b$a;->a:Lwa/c$a$b;

    iget-object p1, p1, Lwa/c$a$b;->b:Lwa/c$a;

    iget-object p1, p1, Lwa/c$a;->b:Lwa/c$d;

    iget-object p1, p1, Lwa/c$d;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lwa/c$a$b$a;->a:Lwa/c$a$b;

    iget-object v0, v0, Lwa/c$a$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lwa/c$a$b$a;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

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
    iget-object p1, p0, Lwa/c$a$b$a;->a:Lwa/c$a$b;

    iget-object p2, p1, Lwa/c$a$b;->b:Lwa/c$a;

    iget-object v0, p2, Lwa/c$a;->c:Lwa/c;

    iget-object p2, p2, Lwa/c$a;->a:Lcom/guochao/faceshow/mine/model/WithdrawalBean;

    iget-object p1, p1, Lwa/c$a$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    invoke-static {v0, p2, p1}, Lwa/c;->b(Lwa/c;Lcom/guochao/faceshow/mine/model/WithdrawalBean;Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;)V

    return-void
.end method
