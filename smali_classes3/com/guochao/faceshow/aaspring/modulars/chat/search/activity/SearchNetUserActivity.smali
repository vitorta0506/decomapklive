.class public Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchNetUserActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;",
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

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchNetUserActivity;

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchNetUserActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;ILcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V

    return-void
.end method

.method public g0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;ILcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V
    .locals 0

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchNetUserActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;->c(Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;Ljava/lang/String;)V

    return-void
.end method

.method public i0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2
.end method

.method public k0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;ILcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V
    .locals 0

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public loadData(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchNetUserActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setContent(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setCurrPage(I)V

    const/16 p1, 0x14

    .line 4
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setPageSize(I)V

    const-string p1, "tokens/search/findUserByNickNameOrId"

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchNetUserActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchNetUserActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchNetUserActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchNetUserActivity;->b:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    :cond_1
    const p1, 0x7f12005e

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchNetUserActivity;->i0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchNetUserActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchNetUserHolder;ILcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V

    return-void
.end method
