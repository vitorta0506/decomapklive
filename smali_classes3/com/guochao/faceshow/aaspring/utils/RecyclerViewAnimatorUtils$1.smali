.class Lcom/guochao/faceshow/aaspring/utils/RecyclerViewAnimatorUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/RecyclerViewAnimatorUtils;->sync(Landroidx/recyclerview/widget/RecyclerView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/RecyclerViewAnimatorUtils$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/utils/RecyclerViewAnimatorUtils$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/RecyclerViewAnimatorUtils$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/utils/RecyclerViewAnimatorUtils$1;->val$index:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/RecyclerViewAnimatorUtils$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_0
    return-void
.end method
