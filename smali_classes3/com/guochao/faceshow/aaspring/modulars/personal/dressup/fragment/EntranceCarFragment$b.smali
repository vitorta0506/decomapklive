.class Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 7
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissProgressDialog()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    .line 6
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getIsUse()I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 7
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;)Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCheck(Z)V

    .line 8
    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCheck(Z)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;J)J

    .line 10
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->a:I

    if-ne v2, v1, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->getList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;)Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setDatas(Ljava/util/List;)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addDatas(Ljava/util/List;)V

    .line 14
    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageBeanData$PageBean;->getTotalPage()I

    move-result p1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v3

    if-le p1, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->notifyDataLoaded(Z)V

    return-void

    .line 15
    :cond_6
    :goto_3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->a:I

    if-ne p1, v1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->clearAll()V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->showEmptyView()V

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/EntranceCarFragment;->notifyDataLoaded(Z)V

    return-void
.end method
