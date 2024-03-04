.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->loadData(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/MyFriendListActivity;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
