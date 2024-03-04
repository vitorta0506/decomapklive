.class public Lcom/guochao/faceshow/activity/InvalitedActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/bean/InvalitedPersons;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public b0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/bean/InvalitedPersons;)V
    .locals 2

    const p2, 0x7f0a04c0

    .line 1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/views/NormalCircleImageView;

    .line 2
    iget-object v0, p3, Lcom/guochao/faceshow/bean/InvalitedPersons;->img:Ljava/lang/String;

    const v1, 0x7f0f0089

    invoke-static {p2, v0, v1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 3
    iget-object p2, p3, Lcom/guochao/faceshow/bean/InvalitedPersons;->nickName:Ljava/lang/String;

    const v0, 0x7f0a051a

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 4
    iget-object p2, p3, Lcom/guochao/faceshow/bean/InvalitedPersons;->createTimeMsec:Ljava/lang/String;

    invoke-static {p2}, Lcom/guochao/faceshow/utils/TimeUtil;->getStrToDateYmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0a0558

    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/bean/InvalitedPersons;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/activity/InvalitedActivity;->b0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/bean/InvalitedPersons;)V

    return-void
.end method

.method public d0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/bean/InvalitedPersons;)V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object p2, p3, Lcom/guochao/faceshow/bean/InvalitedPersons;->userId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0067

    return v0
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->initView()V

    const v0, 0x7f0a042c

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->setBottomEnable(Z)V

    const v0, 0x7f0a0332

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/InvalitedActivity;->a:Landroid/view/View;

    const v0, 0x7f120449

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    return-void
.end method

.method public loadData(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->invitelist:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "limit"

    const-string v1, "20"

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/activity/InvalitedActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/InvalitedActivity$a;-><init>(Lcom/guochao/faceshow/activity/InvalitedActivity;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public notifyDataLoaded(Z)V
    .locals 0

    const/4 p1, 0x1

    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0245

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

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activity/InvalitedActivity;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/bean/InvalitedPersons;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/activity/InvalitedActivity;->d0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/bean/InvalitedPersons;)V

    return-void
.end method

.method public showEmptyView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvalitedActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->hideFooterView()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvalitedActivity;->a:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setFooterView(I)V

    :goto_0
    return-void
.end method
