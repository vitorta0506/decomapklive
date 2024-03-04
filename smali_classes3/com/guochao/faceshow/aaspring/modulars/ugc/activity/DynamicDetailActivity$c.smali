.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/DynamicBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getItemViewType()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Ly9/a;->a(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->setOnDynamicOperationListener(Laa/e;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    iget-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->mViewGroup:Landroid/view/ViewGroup;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    move-result-object p2

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->o(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    move-result-object p2

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object v1

    invoke-static {p2, v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->h1(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/Comment;)V

    :cond_0
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicDetailActivity$c;->a(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
