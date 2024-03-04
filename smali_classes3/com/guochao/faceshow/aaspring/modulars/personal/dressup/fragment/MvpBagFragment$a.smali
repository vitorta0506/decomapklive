.class Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;

    .line 3
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getDressUpId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    return-void

    .line 5
    :cond_2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissProgressDialog()V

    :cond_3
    if-nez p1, :cond_4

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;

    .line 10
    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->obtain(Lcom/guochao/faceshow/aaspring/beans/MvpBagBean;)Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_7

    .line 12
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->a:I

    if-ne p1, v1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->clearAll()V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->showEmptyView()V

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    return-void

    .line 16
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    .line 17
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getIsUse()I

    move-result v4

    if-ne v4, v1, :cond_8

    .line 18
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;)Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCheck(Z)V

    .line 19
    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCheck(Z)V

    goto :goto_1

    .line 20
    :cond_9
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->a:I

    if-ne p1, v1, :cond_a

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;)Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setDatas(Ljava/util/List;)V

    goto :goto_2

    .line 23
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addDatas(Ljava/util/List;)V

    .line 24
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;->a(Ljava/util/List;)V

    return-void
.end method
