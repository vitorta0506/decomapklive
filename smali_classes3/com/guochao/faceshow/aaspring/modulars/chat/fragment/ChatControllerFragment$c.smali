.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Landroid/util/SparseArray<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;>;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Landroid/util/SparseArray;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;>;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;>;>;)V"
        }
    .end annotation

    const/16 p2, 0x9

    .line 2
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->mFaceButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$c;->onResponse(Landroid/util/SparseArray;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
