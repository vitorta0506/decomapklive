.class public Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

.field private f:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

.field private g:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->c:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->o0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->g:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    return-object p0
.end method

.method private o0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->UPDATE_USER_HOBBIES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "userId"

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "hobbyIds"

    .line 3
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$e;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->m0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;)V

    return-void
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->e(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->d(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0065

    return v0
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->initView()V

    const v0, 0x7f120416

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    const v0, 0x7f1207b4

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060093

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightTextClickListener(Lcom/guochao/faceshow/aaspring/views/v$e;)V

    :cond_0
    return-void
.end method

.method public loadData(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->clearAll()V

    .line 2
    sget-object p1, Lcom/guochao/faceshow/utils/Contants;->GET_USER_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public m0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;)V
    .locals 7

    const v0, 0x7f0a0d0c

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a02ae

    .line 2
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/FlowLayout/NestedRecyclerView;

    const v2, 0x7f0a0e02

    .line 3
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a057a

    .line 4
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->getType()I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    const v2, 0x7f12041a

    .line 6
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x41a00000    # 20.0f

    .line 8
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->getType()I

    move-result v3

    const/4 v6, 0x0

    if-ne v3, v4, :cond_1

    const v3, 0x7f120416

    .line 11
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const v3, 0x7f120417

    .line 14
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x41f00000    # 30.0f

    .line 18
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 19
    :goto_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->getType()I

    move-result v3

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->getHobbyBeans()Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v2, v3, v5}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 20
    new-instance v2, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;-><init>()V

    .line 21
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 22
    new-instance v2, Lcom/guochao/faceshow/aaspring/views/FlowLayout/SpaceItemDecoration;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/SpaceItemDecoration;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 23
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-nez p2, :cond_2

    .line 24
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    goto :goto_2

    :cond_2
    if-ne p2, v4, :cond_3

    .line 25
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->g:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    goto :goto_2

    .line 26
    :cond_3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    .line 27
    :goto_2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;

    invoke-direct {p2, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;)V

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;->c(Lcom/guochao/faceshow/aaspring/modulars/personal/c;)V

    .line 28
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$d;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public n0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p1, 0x17

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "tag"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "tagId"

    .line 3
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 4
    new-instance p3, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-direct {p3}, Lcom/guochao/faceshow/mine/model/HobbyBean;-><init>()V

    .line 5
    invoke-virtual {p3, p2}, Lcom/guochao/faceshow/mine/model/HobbyBean;->setHobbyId(I)V

    .line 6
    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/mine/model/HobbyBean;->setTags(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/mine/model/HobbyBean;->setSelect(Z)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->d:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->b:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->g:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/adapter/FlowAdapter;

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
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

    const v1, 0x7f0d0380

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
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->n0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;)V

    return-void
.end method
