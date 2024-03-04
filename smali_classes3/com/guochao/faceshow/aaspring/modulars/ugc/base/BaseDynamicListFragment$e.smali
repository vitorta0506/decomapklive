.class Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->notifyDataLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->access$000(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;II)V

    return-void
.end method
