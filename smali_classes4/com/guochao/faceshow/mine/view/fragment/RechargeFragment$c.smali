.class Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->W1()V
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
.field final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/mine/model/MyWalletBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
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
    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setDiamond(Ljava/lang/Integer;)V

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    iput-object p1, p2, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->o:Lcom/guochao/faceshow/mine/model/MyWalletBean;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->U1()Lcom/guochao/faceshow/aaspring/modulars/googlepay/ui/RechargeHeader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->U1()Lcom/guochao/faceshow/aaspring/modulars/googlepay/ui/RechargeHeader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/ui/RechargeHeader;->b(I)V

    .line 7
    :cond_2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lp9/a;->t(Lcom/guochao/faceshow/mine/model/MyWalletBean;)V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->T1(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;Z)Z

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s...%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "zune"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/mine/model/MyWalletBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$c;->a(Lcom/guochao/faceshow/mine/model/MyWalletBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
