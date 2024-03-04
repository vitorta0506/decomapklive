.class Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->onResendClicked(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$f;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    invoke-static {}, Lba/a;->r()Lba/a;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$f;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->fromDynamic(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lba/a;->w(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->resetList(Z)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->notifyDataLoaded(Z)V

    :cond_1
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
