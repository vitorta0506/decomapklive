.class Lcom/guochao/faceshow/fragment/OpenVideoFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/fragment/OpenVideoFragment;->Y1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Lcom/guochao/faceshow/bean/PageBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/fragment/OpenVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/bean/PageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/PageBean;

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    iget v1, p1, Lcom/guochao/faceshow/bean/PageBean;->count:I

    invoke-static {v0, v1}, Lcom/guochao/faceshow/fragment/OpenVideoFragment;->U1(Lcom/guochao/faceshow/fragment/OpenVideoFragment;I)I

    .line 4
    sget-object v0, Lcom/guochao/faceshow/utils/AppContentFilter;->INSTANCE:Lcom/guochao/faceshow/utils/AppContentFilter;

    iget-object v1, p1, Lcom/guochao/faceshow/bean/PageBean;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/utils/AppContentFilter;->filterVideoList(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/OpenVideoFragment;->P1(Lcom/guochao/faceshow/fragment/OpenVideoFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 6
    iget-object v0, p1, Lcom/guochao/faceshow/bean/PageBean;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/OpenVideoFragment;->X1(Lcom/guochao/faceshow/fragment/OpenVideoFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/OpenVideoFragment;->X1(Lcom/guochao/faceshow/fragment/OpenVideoFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/OpenVideoFragment;->W1(Lcom/guochao/faceshow/fragment/OpenVideoFragment;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/guochao/faceshow/bean/PageBean;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->resetData(Ljava/util/List;)V

    .line 10
    iget-object p1, p1, Lcom/guochao/faceshow/bean/PageBean;->list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/fragment/OpenVideoFragment;->X1(Lcom/guochao/faceshow/fragment/OpenVideoFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;

    iget-object v1, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    .line 12
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0603ce

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    new-array v2, v2, [I

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;-><init>(III[I)V

    .line 13
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/OpenVideoFragment;->W1(Lcom/guochao/faceshow/fragment/OpenVideoFragment;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object v0

    iget-object p1, p1, Lcom/guochao/faceshow/bean/PageBean;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->addData(Ljava/util/List;)V

    :cond_4
    :goto_1
    return-void
.end method
