.class Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteDialog;->X1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 5
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iget v5, v5, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->a:I

    if-lez v5, :cond_2

    .line 7
    invoke-virtual {v4, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setSelect(Z)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v4, v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setSelect(Z)V

    .line 9
    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setDatas(Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iget v3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->a:I

    if-ne v3, v1, :cond_4

    .line 12
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$l;->a()V

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;I)V

    .line 14
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;)I

    move-result p1

    if-eq p1, v1, :cond_6

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->a:I

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;II)V

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment;->showEmptyView()V

    :cond_7
    :goto_2
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteListFragment$g;->a(Ljava/util/List;)V

    return-void
.end method
