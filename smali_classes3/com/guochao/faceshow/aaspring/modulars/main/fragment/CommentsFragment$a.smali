.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/beans/PageComment;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/PageComment;)Lkotlin/Unit;
    .locals 5

    if-eqz p1, :cond_9

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getDefaultPage()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->setList(Ljava/util/ArrayList;)V

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/Comment;

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->G0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->G0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCommentId()I

    move-result v2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCommentId()I

    move-result v3

    if-ne v2, v3, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->G0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->G0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getTotalCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getTotalCount()I

    move-result v3

    invoke-static {v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->I0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;I)I

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->X0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->Z0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;

    move-result-object v0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->o:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->Y0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v0, v3, v4}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->a1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getTotalCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->notifyDataLoaded(Z)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->showEmptyView()V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    goto :goto_2

    .line 19
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->showEmptyView()V

    .line 21
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 22
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PageComment;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$a;->a(Lcom/guochao/faceshow/aaspring/beans/PageComment;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
