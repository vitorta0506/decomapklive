.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

.field private b:Landroidx/viewpager/widget/ViewPager;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroidx/recyclerview/widget/RecyclerView;

.field private h:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

.field private k:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->i:Ljava/util/List;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->g:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static S1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dressBean"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public T1()Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    .line 2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public U1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d017a

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dressBean"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    :cond_0
    const v0, 0x7f0a0b25

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v0, 0x7f0a0b95

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a07e3

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->f:Landroid/widget/TextView;

    const v0, 0x7f0a02f1

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a0abb

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->g:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a0e05

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->b:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0a00fd

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->h:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->h:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getType()I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->U1(I)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->setOnSelectUserChangedListener(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->U1(I)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendContentFragment;->setOnSelectUserChangedListener(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->b:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method public loadData()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3
    new-instance v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 4
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    .line 5
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v3

    invoke-virtual {v3}, Lq7/a;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArThumbnailImage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArThumbnailImage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getThumbnailImage()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->setDressHead(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    iput-object v3, v0, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/bean/UserBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->h:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j(Lp7/h;)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->d:Landroid/widget/ImageView;

    const v2, 0x7f0f063d

    const-string v3, ""

    invoke-static {v0, v3, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->d:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v2

    invoke-virtual {v2}, Lq7/a;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArThumbnailImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArThumbnailImage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getThumbnailImage()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    const v2, 0x7f0f00ac

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 11
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getIsVip()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v1, :cond_4

    const v0, 0x7f0f009a

    goto :goto_3

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getIsVip()I

    move-result v0

    if-ne v0, v2, :cond_5

    const v0, 0x7f0f0099

    goto :goto_3

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getTagType()I

    move-result v0

    if-ne v0, v1, :cond_6

    const v0, 0x7f0f0097

    goto :goto_3

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getTagType()I

    move-result v0

    if-ne v0, v2, :cond_7

    const v0, 0x7f0f0098

    goto :goto_3

    :cond_7
    const/4 v0, -0x1

    .line 15
    :goto_3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->f:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v0, :cond_8

    .line 16
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 17
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->e:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    :goto_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->g:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v1, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->g:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getDressMallRuleList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getDressMallRuleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    .line 22
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getRuleId()J

    move-result-wide v3

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->j:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getDefaultRuleId()J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-nez v8, :cond_9

    .line 23
    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->setSelect(Z)V

    goto :goto_6

    .line 24
    :cond_9
    invoke-virtual {v2, v5}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->setSelect(Z)V

    .line 25
    :goto_6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 26
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_b
    return-void
.end method

.method public setOnSelectUserChangedListener(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;

    return-void
.end method
