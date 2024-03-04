.class Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->b2(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->q2()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->mRunwayMessageViewArea:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->rcvGift:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B:Landroid/os/Handler;

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$u0;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$u0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$k;)V

    invoke-static {v1, v2, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->d(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroid/os/Handler;Ld9/i;)V

    :cond_1
    return-void
.end method
