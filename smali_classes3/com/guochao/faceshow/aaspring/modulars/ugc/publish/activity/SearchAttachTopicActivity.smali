.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field hotTopic:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mEditTextSearch:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field recyclerContent:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->s0(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->m0(Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V

    return-void
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->c:Z

    return p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->q0(Ljava/lang/String;I)V

    return-void
.end method

.method private m0(Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->mEditTextSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getTopicName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getTopicName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "#"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "topics"

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->onBackPressed()V

    return-void
.end method

.method private n0()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->G(Landroid/content/Context;)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b(I)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->a()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->hotTopic:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->hotTopic:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->hotTopic:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private q0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->c:Z

    const-string v0, "tokens/search/findTopicByName"

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "topicName"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "currPage"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pageSize"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$e;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;I)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static r0(Landroid/app/Activity;ZI)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bottomTopic"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const p1, 0x7f010027

    const v1, 0x7f010025

    .line 3
    invoke-static {p0, p1, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;II)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private s0(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->hotTopic:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setDatas(Ljava/util/List;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->q0(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;ILcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00a5

    return v0
.end method

.method public l0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;ILcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, p3, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;->c(Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;Z)V

    return-void
.end method

.method public loadData(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->mEditTextSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->s0(Ljava/lang/String;I)V

    return-void
.end method

.method public o0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->b:Z

    if-eqz v0, :cond_0

    const v0, 0x7f010025

    const v1, 0x7f010028

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "bottomTopic"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->b:Z

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getEmptyView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0603ce

    .line 4
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v0, 0x43160000    # 150.0f

    .line 5
    invoke-static {v0}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f0a0330

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f120949

    .line 7
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->mEditTextSearch:Landroid/widget/EditText;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->mEditTextSearch:Landroid/widget/EditText;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->recyclerContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x41800000    # 16.0f

    .line 11
    invoke-static {p0, v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 12
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->n0()V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->hideFooterView()V

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->o0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->p0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;ILcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V

    return-void
.end method

.method public p0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchTopicHolder;ILcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->m0(Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V

    return-void
.end method

.method public useImmersiveStatusBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
