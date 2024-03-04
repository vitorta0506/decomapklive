.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lwd/j;)V
    .locals 1
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setCurrentPage(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getCurrentPage()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->loadData(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
