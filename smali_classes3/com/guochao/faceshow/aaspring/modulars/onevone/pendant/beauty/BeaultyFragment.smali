.class public Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/pusher/beauty/BeautyItem;",
            ">;"
        }
    .end annotation
.end field

.field content:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field d:Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

.field private e:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

.field private f:Lcom/guochao/pusher/beauty/BeautyItem;

.field filterSeekLay:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field filterSeekbar:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private g:I

.field tvFilterLevel:Landroid/widget/TextView;
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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->c:Ljava/util/List;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->beautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->d:Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->f:Lcom/guochao/pusher/beauty/BeautyItem;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->g:I

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->W1(I)V

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->g:I

    return p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Lcom/guochao/pusher/beauty/BeautyItem;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->f:Lcom/guochao/pusher/beauty/BeautyItem;

    return-object p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->e:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    return-object p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->a:I

    return p0
.end method

.method private W1(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/pusher/beauty/BeautyItem;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->f:Lcom/guochao/pusher/beauty/BeautyItem;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->filterSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->filterSeekbar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->f:Lcom/guochao/pusher/beauty/BeautyItem;

    invoke-virtual {v2}, Lcom/guochao/pusher/beauty/BeautyItem;->getMaxValue()F

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->f:Lcom/guochao/pusher/beauty/BeautyItem;

    invoke-virtual {v3}, Lcom/guochao/pusher/beauty/BeautyItem;->getMinValue()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->filterSeekbar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->f:Lcom/guochao/pusher/beauty/BeautyItem;

    invoke-virtual {v2}, Lcom/guochao/pusher/beauty/BeautyItem;->getCurrentValue()F

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->f:Lcom/guochao/pusher/beauty/BeautyItem;

    invoke-virtual {v3}, Lcom/guochao/pusher/beauty/BeautyItem;->getMinValue()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->tvFilterLevel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->f:Lcom/guochao/pusher/beauty/BeautyItem;

    invoke-virtual {v2}, Lcom/guochao/pusher/beauty/BeautyItem;->getCurrentValue()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->g:I

    if-ltz v0, :cond_1

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->content:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 9
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeautyHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeautyHolder;->beautyName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10
    :cond_1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->g:I

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->content:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 13
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeautyHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeautyHolder;->beautyName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public V1()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->f:Lcom/guochao/pusher/beauty/BeautyItem;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->e:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->getLastBeautyValue()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->d:Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    invoke-interface {v1}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->getBeautyItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->e:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->getLastBeautyValue()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->d:Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/pusher/beauty/BeautyItem;

    invoke-interface {v2, v3}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->update(Lcom/guochao/pusher/beauty/BeautyItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->a:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->e:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->saveLast(ILcom/guochao/faceshow/aaspring/beans/BeautyItemCache;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->W1(I)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0163

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

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->a:I

    const-string v0, "isTrtc"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->b:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x3ed

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->a:I

    .line 5
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->a:I

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->getLast(I)Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->e:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->d:Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    invoke-interface {v0}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->getBeautyItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->e:Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->getLastBeautyValue()Landroid/util/ArrayMap;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/pusher/beauty/BeautyItem;

    .line 11
    invoke-virtual {v2}, Lcom/guochao/pusher/beauty/BeautyItem;->getEffectKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v2}, Lcom/guochao/pusher/beauty/BeautyItem;->getEffectKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/guochao/pusher/beauty/BeautyItem;->setCurrentValue(F)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->W1(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->tvFilterLevel:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->content:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->content:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->filterSeekbar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method
