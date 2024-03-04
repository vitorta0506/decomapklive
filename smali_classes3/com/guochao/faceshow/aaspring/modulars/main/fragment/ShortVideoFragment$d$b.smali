.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->t:Z

    .line 3
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->s:Z

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->q()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->o(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    :cond_0
    return-void
.end method
