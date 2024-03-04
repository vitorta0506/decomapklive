.class public Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lq9/a;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Z

.field tabLay:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->c:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->e:Z

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->d:I

    return p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->e:Z

    return p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->Z1()V

    return-void
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->Y1()V

    return-void
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->a:Ljava/util/List;

    return-object p0
.end method

.method private X1(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->d:I

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "Motion"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method private Y1()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->d:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->tabLay:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->tabLay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->a:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    :goto_1
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    if-nez v3, :cond_1

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->c:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 9
    :cond_1
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->setGifList(Ljava/util/List;)V

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 13
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->X1(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private Z1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->tabLay:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourceTypeNameLang()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourceTypeNameLang()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourceTypeNameLang()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 5
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourceTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->c:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getSourceTypeName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 6
    :goto_3
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_4
    if-ge v1, v0, :cond_4

    .line 7
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;-><init>()V

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    .line 9
    invoke-direct {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->X1(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method


# virtual methods
.method public a2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 4
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantCategoryFragment;->Z1()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->d:I

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->getLast(I)Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->setLastFaceMotion(Ljava/lang/String;)V

    .line 8
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->d:I

    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->saveLast(ILcom/guochao/faceshow/aaspring/beans/BeautyItemCache;)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->beautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->setMotionTmpl(Ljava/lang/String;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0187

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "type"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->d:I

    const-string v0, "isTrtc"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->f:Z

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;)V

    .line 5
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->d:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    const/4 v2, 0x6

    .line 6
    :cond_1
    invoke-virtual {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/a;->w(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public t1(Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lq9/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lq9/a;

    invoke-interface {v0, p1}, Lq9/a;->t1(Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;)V

    :cond_0
    return-void
.end method
