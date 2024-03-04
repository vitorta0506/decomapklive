.class Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->getBagGiftResource(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Landroid/util/SparseArray<",
        "Lcom/guochao/faceshow/bean/BagListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$a;->a:Ljava/util/List;

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
            "Landroid/util/SparseArray<",
            "Lcom/guochao/faceshow/bean/BagListBean;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$a;->a:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$800(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Landroid/util/SparseArray;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Landroid/util/SparseArray;
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
            "Landroid/util/SparseArray<",
            "Lcom/guochao/faceshow/bean/BagListBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Landroid/util/SparseArray<",
            "Lcom/guochao/faceshow/bean/BagListBean;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 3
    sget-object p2, Lcom/guochao/faceshow/utils/BagHelper;->INSTANCE:Lcom/guochao/faceshow/utils/BagHelper;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$a;->a:Ljava/util/List;

    invoke-virtual {p2, p1, v0}, Lcom/guochao/faceshow/utils/BagHelper;->mergeData(Landroid/util/SparseArray;Ljava/util/List;)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 5
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getChildCode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "bag"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$a;->a:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->access$800(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Ljava/util/List;)V

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
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$a;->onResponse(Landroid/util/SparseArray;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
