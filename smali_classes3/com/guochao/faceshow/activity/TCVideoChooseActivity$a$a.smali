.class Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;->onGranted(Lte/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->b0(Lcom/guochao/faceshow/activity/TCVideoChooseActivity;)Lcom/guochao/faceshow/adapters/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/adapters/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->d0(Lcom/guochao/faceshow/activity/TCVideoChooseActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;

    iget-object v2, v2, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->d0(Lcom/guochao/faceshow/activity/TCVideoChooseActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;

    iget-object v2, v2, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->e0(Lcom/guochao/faceshow/activity/TCVideoChooseActivity;)Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter;->b(Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$a$a;->a(Ljava/util/List;)V

    return-void
.end method
