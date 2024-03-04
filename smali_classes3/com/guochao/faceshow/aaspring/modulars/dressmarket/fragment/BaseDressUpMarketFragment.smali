.class public abstract Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment<",
        "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;-><init>()V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->T1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->U1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic T1(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->W1(I)V

    return-void
.end method

.method private synthetic U1(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->X1(I)V

    return-void
.end method


# virtual methods
.method public S1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;)V
    .locals 11

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a0c75

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a059d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 4
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a02f0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 5
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v6, 0x7f0a0c76

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 6
    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v7, 0x7f0a08b8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 7
    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v8, 0x7f0a00fd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 8
    instance-of v8, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/PendantAvatarMarketFragment;

    const/16 v9, 0x8

    if-eqz v8, :cond_1

    const/16 v10, 0x8

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    instance-of v10, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/EntranceCarMarketFragment;

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    const/16 v10, 0x8

    :goto_2
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    if-eqz v8, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    const/16 v6, 0x8

    .line 10
    :goto_3
    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v10, 0x7f0a0c52

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v10, 0x7f0a0cf3

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 13
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getIsVip()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 15
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0f0099

    .line 16
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 17
    :cond_4
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getIsVip()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_5

    .line 18
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0f009a

    .line 19
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 20
    :cond_5
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getTagType()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 21
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0f0098

    .line 22
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 23
    :cond_6
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getTagType()I

    move-result v0

    if-ne v0, v10, :cond_7

    .line 24
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0f0097

    .line 25
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 26
    :cond_7
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getTagType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 27
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0f05bc

    .line 28
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 29
    :cond_8
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    if-eqz v8, :cond_a

    .line 30
    new-instance v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 31
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    .line 32
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v2

    invoke-virtual {v2}, Lq7/a;->j()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArThumbnailImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArThumbnailImage()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_9
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getThumbnailImage()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressHead(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    iput-object v2, v0, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/UserBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 35
    invoke-virtual {v7, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j(Lp7/h;)V

    goto :goto_7

    .line 36
    :cond_a
    invoke-static {v4}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->j()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArThumbnailImage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArThumbnailImage()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_b
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getThumbnailImage()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    const v1, 0x7f0f00ac

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    invoke-virtual {v0, v4}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 37
    :goto_7
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getDressMallRuleList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 38
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_8

    .line 39
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    .line 40
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getRuleId()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getDefaultRuleId()J

    move-result-wide v7

    cmp-long v4, v2, v7

    if-nez v4, :cond_d

    .line 41
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->setPriceSpecContent(Landroid/widget/TextView;)V

    :cond_e
    const p3, 0x7f1202b0

    .line 42
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f1202e2

    .line 43
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_f
    :goto_8
    return-void
.end method

.method public abstract V1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;)V
.end method

.method protected abstract W1(I)V
.end method

.method protected abstract X1(I)V
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->S1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d017b

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->initView(Landroid/view/View;)V

    const v0, 0x7f0a0332

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->b:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/EntranceCarMarketFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->a:I

    .line 6
    :cond_0
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/PendantAvatarMarketFragment;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->a:I

    .line 8
    :cond_1
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/ChatShadingMarketFragment;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->a:I

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f06038c

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 12
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void
.end method

.method public loadData(I)V
    .locals 3

    const-string v0, "tokens/mall/goodList"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "pageNo"

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

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public notifyDataLoaded(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->hideFooterView()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setFooterView(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->b:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onCreateLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 4

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-object p1
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

    const v1, 0x7f0d022f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0c52

    .line 3
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lp8/a;

    invoke-direct {v0, p0}, Lp8/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0cf3

    .line 4
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lp8/b;

    invoke-direct {v0, p0}, Lp8/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/fragment/BaseDressUpMarketFragment;->V1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;)V

    return-void
.end method
