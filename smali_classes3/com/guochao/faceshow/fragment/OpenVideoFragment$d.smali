.class Lcom/guochao/faceshow/fragment/OpenVideoFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;


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
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/fragment/OpenVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$d;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$d;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$d;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$d;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$d;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/fragment/OpenVideoFragment;->P1(Lcom/guochao/faceshow/fragment/OpenVideoFragment;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$d;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/fragment/OpenVideoFragment;->W1(Lcom/guochao/faceshow/fragment/OpenVideoFragment;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->getDataList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$d;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/fragment/OpenVideoFragment;->X1(Lcom/guochao/faceshow/fragment/OpenVideoFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;

    iget-object v1, p0, Lcom/guochao/faceshow/fragment/OpenVideoFragment$d;->a:Lcom/guochao/faceshow/fragment/OpenVideoFragment;

    .line 4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0603ce

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    new-array v2, v2, [I

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;-><init>(III[I)V

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_1
    :goto_0
    return-void
.end method
