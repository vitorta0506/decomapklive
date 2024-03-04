.class public Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/guochao/pusher/beauty/FilterItem;

.field private c:I

.field content:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/pusher/beauty/FilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

.field filterSeekbar:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private g:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

.field tvFilterLevel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->b:Lcom/guochao/pusher/beauty/FilterItem;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->e:Ljava/util/List;

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->beautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->f:Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->a:I

    return p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->X1(I)V

    return-void
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)Lcom/guochao/pusher/beauty/FilterItem;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->b:Lcom/guochao/pusher/beauty/FilterItem;

    return-object p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)Lcom/guochao/pusher/base/ILivePusher$BeautyManager;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->f:Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    return-object p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->g:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    return-object p0
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->Y1()V

    return-void
.end method

.method private X1(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_4

    if-ne p1, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->filterSeekbar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->filterSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0268

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/pusher/beauty/FilterItem;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->b:Lcom/guochao/pusher/beauty/FilterItem;

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->filterSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/FilterItem;->getCurrentValue()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->tvFilterLevel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->b:Lcom/guochao/pusher/beauty/FilterItem;

    invoke-virtual {v3}, Lcom/guochao/pusher/beauty/FilterItem;->getCurrentValue()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->b:Lcom/guochao/pusher/beauty/FilterItem;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->getFilterPath(Lcom/guochao/pusher/beauty/FilterItem;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->f:Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->b:Lcom/guochao/pusher/beauty/FilterItem;

    invoke-virtual {v5}, Lcom/guochao/pusher/beauty/FilterItem;->getCurrentValue()F

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->setFilter(Ljava/lang/String;F)V

    .line 10
    :cond_1
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->a:I

    if-ltz v3, :cond_2

    .line 11
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->content:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterItemHolder;

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterItemHolder;->c(Z)V

    .line 13
    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterItemHolder;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 14
    :cond_2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->a:I

    .line 15
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->content:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterItemHolder;

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterItemHolder;->c(Z)V

    .line 17
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterItemHolder;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->g:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->setLastFilter(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->g:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->b:Lcom/guochao/pusher/beauty/FilterItem;

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/FilterItem;->getCurrentValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->setLastFilterStrength(F)V

    .line 20
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->Y1()V

    return-void

    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->b:Lcom/guochao/pusher/beauty/FilterItem;

    .line 22
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->content:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterItemHolder;

    if-eqz v0, :cond_5

    .line 23
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterItemHolder;->c(Z)V

    .line 24
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterItemHolder;->mTextViewName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 25
    :cond_5
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->a:I

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->tvFilterLevel:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->filterSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->filterSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->filterSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f05c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->f:Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->setFilter(Ljava/lang/String;F)V

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->g:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->setLastFilterStrength(F)V

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->g:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->setLastFilter(Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->Y1()V

    return-void
.end method

.method private Y1()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->c:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->g:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->saveLast(ILcom/guochao/faceshow/aaspring/beans/BeautyItemCache;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lq9/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lq9/a;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->g:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-interface {v0, v1}, Lq9/a;->t1(Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public W1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->e:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/pusher/beauty/FilterItem;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/pusher/beauty/FilterItem;->getDefaultValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/pusher/beauty/FilterItem;->setCurrentValue(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 5
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->X1(I)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d018c

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

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

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->c:I

    const-string v0, "isTrtc"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->d:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x3ed

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->c:I

    .line 5
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->c:I

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->getLast(I)Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->g:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->filterSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->f:Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->getFilterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->g:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->getLastFilter()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/pusher/beauty/FilterItem;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->getFilterPath(Lcom/guochao/pusher/beauty/FilterItem;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->g:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->getLastFilter()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->a:I

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->filterSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->filterSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0268

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->filterSeekbar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->g:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->getLastFilterStrength()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->tvFilterLevel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->g:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->getLastFilterStrength()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 16
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->tvFilterLevel:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->content:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->content:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->filterSeekbar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method
