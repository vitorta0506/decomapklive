.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$d;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/mine/model/MyWalletBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/mine/model/MyWalletBean;
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
            "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyHead;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getAvailableBalance()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyHead;->b(I)V

    .line 2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lp9/a;->t(Lcom/guochao/faceshow/mine/model/MyWalletBean;)V

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
            "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
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

    check-cast p1, Lcom/guochao/faceshow/mine/model/MyWalletBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$d;->a(Lcom/guochao/faceshow/mine/model/MyWalletBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
