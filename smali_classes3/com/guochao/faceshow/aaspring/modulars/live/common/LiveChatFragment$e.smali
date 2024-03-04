.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->onReceiveLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->isDelayed:Z

    .line 2
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mLiveChatAdapter:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mRecyclerView:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment$e;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
