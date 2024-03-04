.class public Lcom/guochao/faceshow/aaspring/modulars/main/ChooseMyFollowsActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/bean/FollowBean;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
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
.method public b0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/bean/FollowBean;)V
    .locals 2

    const p2, 0x7f0a00f0

    .line 1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p3}, Lcom/guochao/faceshow/bean/FollowBean;->getImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/guochao/faceshow/bean/FollowBean;->getSex()I

    move-result v1

    invoke-static {p2, v0, v1}, Lhc/a;->e(Landroid/widget/ImageView;Ljava/lang/String;I)V

    const p2, 0x7f0a0424

    .line 3
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p2, 0x7f0a0dc5

    .line 4
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p3}, Lcom/guochao/faceshow/bean/FollowBean;->getNick_name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/bean/FollowBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/ChooseMyFollowsActivity;->b0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/bean/FollowBean;)V

    return-void
.end method

.method public d0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/bean/FollowBean;)V
    .locals 0

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0038

    return v0
.end method

.method public initView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->initView()V

    const v0, 0x7f12039f

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public loadData(I)V
    .locals 2

    const-string p1, "user/attention/listAttention"

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currPage"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "types"

    const-string v1, "0"

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "pageSize"

    const-string v1, "1000"

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/ChooseMyFollowsActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/ChooseMyFollowsActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/ChooseMyFollowsActivity;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d036b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/ChooseMyFollowsActivity;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/bean/FollowBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/ChooseMyFollowsActivity;->d0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/bean/FollowBean;)V

    return-void
.end method
