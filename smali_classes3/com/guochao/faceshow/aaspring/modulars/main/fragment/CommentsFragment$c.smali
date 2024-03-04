.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->i1(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)Lkotlin/Unit;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;",
            ">;)",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->d1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->g1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;)Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getDefaultPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setCurrentPage(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->loadData(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->getLevelId()I

    move-result v1

    const-string v2, "levelId"

    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 8
    new-instance v0, Ly7/n;

    invoke-direct {v0}, Ly7/n;-><init>()V

    const/4 v1, 0x0

    .line 9
    iput v1, v0, Ly7/n;->a:I

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->getCommentId()I

    move-result v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;->getLevelId()I

    move-result p1

    invoke-static {v1, v2, v3, v4, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->h1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;Ljava/lang/String;Ljava/lang/String;II)Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object p1

    iput-object p1, v0, Ly7/n;->b:Lcom/guochao/faceshow/aaspring/beans/Comment;

    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->H0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getCode()I

    move-result p1

    const/16 v0, 0x3f2

    if-ne p1, v0, :cond_2

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;

    const v0, 0x7f1205a2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 15
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 16
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment$c;->a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
