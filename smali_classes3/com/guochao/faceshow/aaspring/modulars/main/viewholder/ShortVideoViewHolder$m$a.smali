.class Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;->b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->i(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;->b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->i(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;->b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->i(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Ly7/e;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ly7/e;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {v1, v0}, Ly7/e;->g(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m$a;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;->b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Ly7/e;->i(I)V

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
