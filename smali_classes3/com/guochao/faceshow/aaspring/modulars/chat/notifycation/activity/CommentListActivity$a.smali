.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;ILcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity;Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity;

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "type"

    const-string v0, "9"

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getInfoId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "circle_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "comment_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getHeight()Ljava/lang/String;

    move-result-object p2

    const-string v0, "height"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getWidth()Ljava/lang/String;

    move-result-object p2

    const-string v0, "width"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getFriendRingCommentNewVo()Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity;

    const p2, 0x7f1201e0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity$a;->a(Ljava/lang/Integer;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
