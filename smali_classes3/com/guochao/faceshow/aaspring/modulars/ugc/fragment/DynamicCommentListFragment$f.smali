.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->g1(Lcom/guochao/faceshow/aaspring/beans/Comment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
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
            "Ljava/lang/Object;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    const v0, 0x7f120206

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded()V

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/DynamicCommentEvent;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/DynamicCommentEvent;-><init>()V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/DynamicCommentEvent;->setCommentType(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->W0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/DynamicCommentEvent;->setDynamicCommentId(I)V

    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->d1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)I

    move-result p1

    if-lez p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->N0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->H0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->P0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->S0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->W0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment$f;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;->Q0(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicCommentListFragment;)I

    move-result v1

    sub-int/2addr v1, p2

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;->a(II)V

    :cond_1
    return-void
.end method
