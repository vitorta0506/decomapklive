.class Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhb/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lhb/a;->a(Lhb/b;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->c:Landroid/widget/TextView;

    const v1, 0x7f1209b2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->b:Landroid/widget/ImageView;

    const v1, 0x7f08027f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->b(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Ld9/g;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {p1, v1, v0}, Ld9/g;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->c(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setIsAttention(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->b(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Ld9/g;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getLevel()I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isAdministrator()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createFocusBroadCasterModel(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ld9/e;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d$a;->b(Ljava/lang/String;)V

    return-void
.end method
