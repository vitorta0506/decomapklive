.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;->onFailure(Lg7/a;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;->getList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;->setList(Ljava/util/List;)V

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addDatas(Ljava/util/List;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->showEmptyView()V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;)Lcom/guochao/faceshow/views/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;)Lcom/guochao/faceshow/views/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/p;->j(Z)V

    :cond_0
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
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->showEmptyView()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;->a(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
