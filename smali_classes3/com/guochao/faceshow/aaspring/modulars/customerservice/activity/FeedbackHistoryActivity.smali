.class public Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;",
        "Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public b0(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;ILcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;)V
    .locals 0

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;->d(Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;)V

    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;ILcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;)V

    return-void
.end method

.method public d0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0374

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public e0(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;ILcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->getIsNewAnswer()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;->setIsNewAnswer(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryDetailActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "data"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->initView()V

    const v0, 0x7f120306

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "#F8F9FC"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public loadData(I)V
    .locals 2

    const-string p1, "tokens/sysHelp/queryFeedBackQuestionList"

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object p1

    const-string v0, "limit"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getCurrentPage()I

    move-result v0

    const-string v1, "page"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;->d0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity$FeedbackHistoryBeanHolder;ILcom/guochao/faceshow/aaspring/beans/FeedbackHistoryBean;)V

    return-void
.end method
