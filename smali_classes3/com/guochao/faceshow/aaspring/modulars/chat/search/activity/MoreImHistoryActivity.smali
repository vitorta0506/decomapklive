.class public Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreImHistoryActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreImHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key1"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreImHistoryActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;ILcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;)V

    return-void
.end method

.method public g0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;ILcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;)V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreImHistoryActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, p3, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->c(Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;ZLjava/lang/String;)V

    return-void
.end method

.method public i0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2
.end method

.method public k0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;ILcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;)V
    .locals 0

    return-void
.end method

.method public loadData(I)V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreImHistoryActivity;->b:Ljava/lang/String;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreImHistoryActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreImHistoryActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreImHistoryActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->I0(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreImHistoryActivity;->b:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    :cond_1
    const p1, 0x7f120056

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreImHistoryActivity;->i0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreImHistoryActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;ILcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;)V

    return-void
.end method
