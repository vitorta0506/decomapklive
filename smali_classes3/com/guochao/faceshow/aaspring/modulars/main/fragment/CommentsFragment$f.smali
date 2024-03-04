.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->k1(Lcom/guochao/faceshow/aaspring/beans/Comment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/beans/Comment;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/Comment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->b:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)Lkotlin/Unit;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    const v1, 0x7f120206

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded()V

    .line 5
    new-instance p1, Ly7/n;

    invoke-direct {p1}, Ly7/n;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput v0, p1, Ly7/n;->a:I

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->b:Lcom/guochao/faceshow/aaspring/beans/Comment;

    iput-object v1, p1, Ly7/n;->b:Lcom/guochao/faceshow/aaspring/beans/Comment;

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->N0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)I

    move-result p1

    if-lez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->Q0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->P0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)I

    move-result v1

    sub-int/2addr v1, v0

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->S0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->W0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->o:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->T0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {p1, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$k;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$f;->a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
