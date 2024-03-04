.class public Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment<",
        "Lcom/guochao/faceshow/aaspring/beans/DressUpData;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field d:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;

.field public e:Landroid/widget/TextView;

.field private f:Lcom/guochao/faceshow/aaspring/beans/DressUpData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;)Lcom/guochao/faceshow/aaspring/beans/DressUpData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->X1()V

    return-void
.end method

.method public static T1()Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;-><init>()V

    return-object v0
.end method

.method private W1(Lcom/guochao/faceshow/aaspring/beans/DressUpData;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->mvpId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;)V

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->dressUp(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private X1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public S1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DressUpData;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/high16 v2, 0x43290000    # 169.0f

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p2, v0, :cond_1

    .line 4
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6
    :goto_0
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getItemType()I

    move-result p2

    const/4 v0, 0x0

    if-eq p2, v1, :cond_4

    const p2, 0x7f0a051d

    .line 7
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 8
    invoke-static {p2}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/g;

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    const p2, 0x7f0a0cd3

    .line 9
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f0a0d07

    .line 10
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 11
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget p2, p3, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->valid:I

    const v2, 0x7f12052b

    if-nez p2, :cond_2

    .line 13
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const p2, 0x7f12065f

    .line 14
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 15
    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const v1, 0x7f0a0741

    if-eqz p2, :cond_3

    .line 17
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const p2, 0x7f0a0d0c

    .line 19
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 20
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getTitleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a052f

    .line 21
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v1, 0x7f0f015c

    .line 22
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    const p2, 0x7f0a05b1

    .line 23
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 24
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isCheck()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x4

    .line 26
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    :goto_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public U1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->f:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->isCheck()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->f:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getCanItBeUsed()I

    move-result v0

    const-string v1, "charge"

    const-string v2, "6"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->f:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    .line 5
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCheck(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->f:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCheck(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->cancelDressUp(Lkotlin/jvm/functions/Function2;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->f:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    iget v5, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->valid:I

    if-ne v5, v3, :cond_5

    .line 11
    iget v0, v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->received:I

    if-ne v0, v3, :cond_4

    const v0, 0x7f1207fb

    .line 12
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    .line 14
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCheck(Z)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->f:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCheck(Z)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->f:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->W1(Lcom/guochao/faceshow/aaspring/beans/DressUpData;)V

    .line 17
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_use_click:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1207ee

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->e:Landroid/widget/TextView;

    const v1, 0x7f120636

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 23
    :cond_4
    sget-object v0, Lcom/guochao/component/mvp/activity/MVPActivity;->Companion:Lcom/guochao/component/mvp/activity/MVPActivity$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "get_badge"

    invoke-virtual {v0, v1, v3, v2}, Lcom/guochao/component/mvp/activity/MVPActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_5
    sget-object v0, Lcom/guochao/component/mvp/activity/MVPActivity;->Companion:Lcom/guochao/component/mvp/activity/MVPActivity$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/guochao/component/mvp/activity/MVPActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_6
    sget-object v0, Lcom/guochao/component/mvp/activity/MVPActivity;->Companion:Lcom/guochao/component/mvp/activity/MVPActivity$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/guochao/component/mvp/activity/MVPActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public V1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DressUpData;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->f:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    .line 3
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setSelected(Z)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/guochao/faceshow/utils/TimeUtil;->getDressUpTimePairMvp(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/DressUpData;)Landroid/util/Pair;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->e:Landroid/widget/TextView;

    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->e:Landroid/widget/TextView;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->S1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DressUpData;)V

    return-void
.end method

.method public getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->e(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->d(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->getItemType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x440

    return p1

    :cond_0
    const/16 p1, 0x441

    return p1
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0179

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->initView(Landroid/view/View;)V

    const v0, 0x7f0a0240

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0332

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->b:Landroid/view/View;

    const v0, 0x7f0a0330

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->c:Landroid/widget/TextView;

    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->c:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41700000    # 15.0f

    .line 8
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x43160000    # 150.0f

    .line 10
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/16 v0, 0x8

    .line 11
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setFooterView(I)V

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCheck(Z)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setItemType(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setCanItBeUsed(I)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    const v1, 0x7f12065e

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/DressUpData;->setTitleName(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f06009a

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method public loadData(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showProgressDialog(Ljava/lang/CharSequence;)V

    :cond_0
    if-eq p1, v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->loadMvpBagData(Z)V

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->getMvpLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0240

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->U1()V

    :goto_0
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

    const/4 v0, 0x0

    const/16 v1, 0x440

    if-ne p2, v1, :cond_0

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0371

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d038e

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

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
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DressUpData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->V1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DressUpData;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/viewmodel/MvpBagModel;->loadMvpBagData(Z)V

    return-void
.end method
