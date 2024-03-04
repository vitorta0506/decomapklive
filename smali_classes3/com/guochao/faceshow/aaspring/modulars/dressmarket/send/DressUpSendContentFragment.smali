.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment<",
        "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:Lcom/guochao/faceshow/views/p;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->X1(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;)Lcom/guochao/faceshow/views/p;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->c:Lcom/guochao/faceshow/views/p;

    return-object p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->d:Ljava/util/List;

    return-object p0
.end method

.method public static U1(I)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private V1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->q0()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private X1(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setContent(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setCurrPage(I)V

    const/16 p1, 0xf

    .line 4
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setPageSize(I)V

    const-string p1, "tokens/search/findUserByNickNameOrId"

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$b;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;I)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public T1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;)V
    .locals 5

    .line 1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0d86

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0dc5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0da0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->getUserId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ID : %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0d88

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a01ec

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 8
    invoke-direct {p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 9
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 11
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    invoke-direct {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;)V

    .line 12
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->b()V

    return-void
.end method

.method public W1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;)V
    .locals 2

    const p2, 0x7f0a01ec

    .line 1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;

    invoke-interface {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;->b(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;

    invoke-interface {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;->a(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->T1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0330

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->initView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "type"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->b:I

    :cond_0
    const v0, 0x7f0a0332

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->a:Landroid/view/View;

    const v0, 0x7f0a0330

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x423c0000    # 47.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/high16 v2, 0x42800000    # 64.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v0, 0x7f0a0a26

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->b:I

    if-ne v1, v3, :cond_2

    .line 10
    new-instance v1, Lcom/guochao/faceshow/views/p;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/views/p;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->c:Lcom/guochao/faceshow/views/p;

    .line 11
    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/views/p;->l(Z)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->c:Lcom/guochao/faceshow/views/p;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/p;->n()V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->c:Lcom/guochao/faceshow/views/p;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/p;->k(Lcom/guochao/faceshow/views/p$c;)V

    :cond_2
    const v0, 0x7f0a0d64

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x42880000    # 68.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->hideFooterView()V

    return-void
.end method

.method public loadData(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->c:Lcom/guochao/faceshow/views/p;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/p;->m(Z)V

    :cond_0
    const-string v0, "tokens/mall/findFriendsByType"

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->b:I

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "currPage"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pageSize"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;)V

    .line 4
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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d022d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$d;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V

    const v0, 0x7f0a0d86

    .line 4
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0dc5

    .line 5
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->W1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/SendUserResponse$SendUser;)V

    return-void
.end method

.method public setOnSelectUserChangedListener(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;

    return-void
.end method

.method public showEmptyView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->hideFooterView()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->a:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setFooterView(I)V

    :goto_0
    return-void
.end method
