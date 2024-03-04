.class Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->b:Landroid/content/Context;

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->c:I

    .line 5
    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->d:I

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const p1, 0x7f0d029e

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a:Ljava/util/List;

    const p2, 0x7f0d029f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a:Ljava/util/List;

    const p2, 0x7f0d02a5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a:Ljava/util/List;

    const p2, 0x7f0d02a2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a:Ljava/util/List;

    const p2, 0x7f0d02a3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a:Ljava/util/List;

    const p2, 0x7f0d02a0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const p1, 0x7f0d02a6

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a:Ljava/util/List;

    const p2, 0x7f0d02ab

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a:Ljava/util/List;

    const p2, 0x7f0d02a9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a:Ljava/util/List;

    const p2, 0x7f0d02a8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a:Ljava/util/List;

    const p2, 0x7f0d02aa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a:Ljava/util/List;

    const p2, 0x7f0d02a7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;I)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p2, 0x7f0a046f

    .line 1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f110015

    .line 3
    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    :cond_0
    const p2, 0x7f0a0a46

    .line 4
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f110016

    .line 6
    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    :cond_1
    const p2, 0x7f0a07c7

    .line 7
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz p2, :cond_2

    const v1, 0x7f110017

    .line 8
    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    :cond_2
    const p2, 0x7f0a0289

    .line 9
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f110014

    .line 11
    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    :cond_3
    const p2, 0x7f0a060a

    .line 12
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz p2, :cond_4

    .line 13
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f110019

    .line 14
    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    :cond_4
    const p2, 0x7f0a0e30

    .line 15
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-eqz p2, :cond_5

    .line 16
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f110018

    .line 17
    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    :cond_5
    const p2, 0x7f0a0e14

    .line 18
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    if-eqz p2, :cond_6

    .line 19
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->c:I

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    :cond_6
    const p2, 0x7f0a04c0

    .line 20
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-eqz p2, :cond_7

    .line 21
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lp7/h;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->c:I

    invoke-virtual {p2, v1, v2, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->k(Lp7/h;IZ)V

    :cond_7
    const p2, 0x7f0a052a

    .line 22
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const/4 v1, 0x2

    if-eqz p2, :cond_9

    .line 23
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-static {v2}, Lic/a;->b(Landroid/content/Context;)Lic/d;

    move-result-object v2

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->c()Lb8/a;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object v2

    const v3, 0x7f0f0089

    invoke-virtual {v2, v3}, Lic/c;->s1(I)Lic/c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lic/c;->I1(I)Lic/c;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 24
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->c:I

    if-ne v2, v1, :cond_8

    instance-of v2, p2, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;

    if-eqz v2, :cond_8

    .line 25
    move-object v2, p2

    check-cast v2, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;

    const-string v3, "#FFDF6D"

    .line 26
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#D09A12"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->c(II)V

    .line 27
    :cond_8
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "tag"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    instance-of v2, p2, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;

    if-eqz v2, :cond_9

    .line 28
    check-cast p2, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;

    .line 29
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->setDrawEnabled(Z)V

    :cond_9
    const p2, 0x7f0a080e

    .line 30
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_a

    const/16 v0, 0x12

    .line 31
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setMaxEcplise(Landroid/widget/TextView;ILjava/lang/String;)V

    :cond_a
    const p2, 0x7f0a080f

    .line 32
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_b

    const/16 v0, 0x8

    .line 33
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setMaxEcplise(Landroid/widget/TextView;ILjava/lang/String;)V

    :cond_b
    const p2, 0x7f0a015e

    .line 34
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    .line 35
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->d:I

    const/high16 v2, 0x42700000    # 60.0f

    if-ne v0, v1, :cond_c

    if-eqz p2, :cond_e

    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 37
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_c
    if-eqz p2, :cond_d

    .line 38
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_d
    const p2, 0x7f0a0e8c

    .line 40
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 p2, 0x41500000    # 13.0f

    .line 42
    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_e
    :goto_0
    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr p2, v3

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->b(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$g;->c(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$InfoViewHolder;

    move-result-object p1

    return-object p1
.end method
