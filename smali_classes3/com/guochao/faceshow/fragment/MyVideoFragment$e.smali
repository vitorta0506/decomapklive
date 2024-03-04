.class Lcom/guochao/faceshow/fragment/MyVideoFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/fragment/MyVideoFragment;->a2()V
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
.field final synthetic a:Lcom/guochao/faceshow/fragment/MyVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/fragment/MyVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/MyVideoFragment;

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
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/PageBean;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/MyVideoFragment;

    iget v1, p1, Lcom/guochao/faceshow/bean/PageBean;->count:I

    invoke-static {v0, v1}, Lcom/guochao/faceshow/fragment/MyVideoFragment;->W1(Lcom/guochao/faceshow/fragment/MyVideoFragment;I)I

    .line 3
    sget-object v0, Lcom/guochao/faceshow/utils/AppContentFilter;->INSTANCE:Lcom/guochao/faceshow/utils/AppContentFilter;

    iget-object v1, p1, Lcom/guochao/faceshow/bean/PageBean;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/utils/AppContentFilter;->filterVideoList(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/MyVideoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/MyVideoFragment;->R1(Lcom/guochao/faceshow/fragment/MyVideoFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p1, Lcom/guochao/faceshow/bean/PageBean;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/MyVideoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/MyVideoFragment;->Y1(Lcom/guochao/faceshow/fragment/MyVideoFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/MyVideoFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/MyVideoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/MyVideoFragment;->Y1(Lcom/guochao/faceshow/fragment/MyVideoFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/MyVideoFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/MyVideoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/MyVideoFragment;->Z1(Lcom/guochao/faceshow/fragment/MyVideoFragment;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object v0

    iget-object p1, p1, Lcom/guochao/faceshow/bean/PageBean;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->resetData(Ljava/util/List;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/MyVideoFragment$e;->a:Lcom/guochao/faceshow/fragment/MyVideoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/fragment/MyVideoFragment;->Z1(Lcom/guochao/faceshow/fragment/MyVideoFragment;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object v0

    iget-object p1, p1, Lcom/guochao/faceshow/bean/PageBean;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->addData(Ljava/util/List;)V

    :goto_1
    return-void
.end method
