.class public Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreUserActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;",
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

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreUserActivity;

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreUserActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;ILcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    return-void
.end method

.method public g0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;ILcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreUserActivity;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;->e(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;ZLjava/lang/String;)V

    return-void
.end method

.method public i0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2
.end method

.method public k0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;ILcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "identify"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getNickName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "name"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "userId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "type"

    const/4 p3, 0x1

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    const-class p3, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public loadData(I)V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreUserActivity;->b:Ljava/lang/String;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreUserActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreUserActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreUserActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->L0(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V

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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreUserActivity;->b:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    :cond_1
    const p1, 0x7f120057

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreUserActivity;->i0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/MoreUserActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;ILcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    return-void
.end method
