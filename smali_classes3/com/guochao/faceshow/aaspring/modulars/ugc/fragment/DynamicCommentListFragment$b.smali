.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/PageComment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/PageComment;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/PageComment;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/PageComment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->a:I

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getDefaultPage()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->G0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->G0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getList()Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_1

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->setList(Ljava/util/ArrayList;)V

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/Comment;

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->G0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->G0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCommentId()I

    move-result v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCommentId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->G0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object v1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getTotalCount()I

    move-result p2

    if-lez p2, :cond_6

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getTotalCount()I

    move-result v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->I0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;I)I

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->T0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->X0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->W0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)I

    move-result v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getTotalCount()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;->a(II)V

    .line 16
    :cond_5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->Y0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getTotalCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->notifyDataLoaded(Z)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->showEmptyView()V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/PageComment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->showEmptyView()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PageComment;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$b;->a(Lcom/guochao/faceshow/aaspring/beans/PageComment;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
