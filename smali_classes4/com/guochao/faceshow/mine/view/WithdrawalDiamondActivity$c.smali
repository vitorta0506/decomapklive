.class Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/mine/model/WithdrawalBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$c;->a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/WithdrawalBean;",
            ">;>;)V"
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

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$c;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/WithdrawalBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/WithdrawalBean;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$c;->a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    iput-object p1, p2, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->a:Ljava/util/List;

    .line 3
    new-instance p1, Lwa/c;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$c;->a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->a:Ljava/util/List;

    iget-boolean v2, v0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->b:Z

    invoke-direct {p1, v0, v1, v2}, Lwa/c;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object p1, p2, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->c:Lwa/c;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity$c;->a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->lvWithdrawalList:Lcom/guochao/faceshow/views/MeasureListView;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;->c:Lwa/c;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
