.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse;
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
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse;->getList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse;->getList()Ljava/util/List;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addDatas(Ljava/util/List;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse;->getTotalCount()I

    move-result p1

    if-ge v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->notifyDataLoaded(Z)V

    return-void

    .line 5
    :cond_2
    :goto_1
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment$a;->onFailure(Lg7/a;)V

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
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->notifyDataLoaded(Z)V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment$a;->a(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
