.class Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x32

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, -0x3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;)V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    .line 5
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->b2(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)I

    move-result v2

    int-to-long v2, v2

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, -0x4

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->y:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;)V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    .line 10
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->b2(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)I

    move-result v2

    int-to-long v2, v2

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x4

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->y:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
