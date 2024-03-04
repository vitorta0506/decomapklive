.class Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->marqueeView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->marqueeView:Landroid/view/View;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$b$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$b;)V

    invoke-static {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/u;->e(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Ld9/i;)V

    :cond_0
    return-void
.end method
