.class Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->initData()V
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
.field final synthetic a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/mine/model/MyWalletBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
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
    :try_start_0
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->tvDiamondCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getF()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lp9/a;->t(Lcom/guochao/faceshow/mine/model/MyWalletBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$b;->a(Lcom/guochao/faceshow/mine/model/MyWalletBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
