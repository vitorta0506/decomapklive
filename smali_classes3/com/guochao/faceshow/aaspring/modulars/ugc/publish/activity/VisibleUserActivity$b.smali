.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->i0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;I)I

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setSelected(Z)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eq p2, v3, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;)Ljava/util/List;

    move-result-object p2

    const/16 v0, 0x79

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    const v2, 0x7f12068d

    .line 6
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->p0(Landroid/app/Activity;Ljava/util/List;ILjava/lang/String;)V

    goto :goto_2

    .line 8
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {p2, v3}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setAllSelected(Z)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 11
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setSelectInvisibleUsers(Ljava/util/List;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    :goto_2
    return-void
.end method
