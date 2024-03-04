.class Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;)V

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;->getList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->a:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->clearAll()V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    return-void

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setDatas(Ljava/util/List;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    .line 9
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setFooterView(I)V

    goto :goto_2

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setFooterView(I)V

    goto :goto_2

    .line 13
    :cond_4
    new-instance p1, Lg7/a;

    invoke-direct {p1}, Lg7/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->onFailure(Lg7/a;)V

    :goto_2
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;)V

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->clearAll()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$a;->a(Lcom/guochao/faceshow/aaspring/beans/NewRecordBeans;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
