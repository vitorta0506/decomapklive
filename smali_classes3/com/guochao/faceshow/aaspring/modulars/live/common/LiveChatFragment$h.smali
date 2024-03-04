.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->floatImUnread:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;->getUnread()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$h;->a(Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;)V

    return-void
.end method
