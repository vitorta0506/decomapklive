.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field cdlLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/IM_User;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;

.field emptyView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private f:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;

.field private g:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

.field private h:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

.field private i:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;"
        }
    .end annotation
.end field

.field mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private n:Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

.field private o:I

.field private p:I

.field q:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private r:I

.field refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlRelatedUserMore:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlRelatedVoiceRoom:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvDefault:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvHeadView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvHostSearch:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvItemView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvVoiceRoomView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private s:I

.field srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field t:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field tvRelatedDynamic:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvUserTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvVoiceRoomTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->a:I

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->b:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->p:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->r:I

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->s:I

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->t:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->o2(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;Lwd/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->r2(Lwd/j;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->q2(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->p2(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->t2(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;Lwd/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->s2(Lwd/j;)V

    return-void
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic X1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->n:Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    return-object p0
.end method

.method static synthetic Y1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->u2(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic Z1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->l:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    return-object p0
.end method

.method static synthetic b2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->a:I

    return p0
.end method

.method static synthetic c2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->m:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;

    return-object p0
.end method

.method static synthetic e2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->findNextPlay(II)V

    return-void
.end method

.method static synthetic f2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    return-object p0
.end method

.method private findNextPlay(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->autoPlayVideos()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->stopCurrentPlay()V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-ltz p1, :cond_6

    :goto_0
    if-gt p1, p2, :cond_2

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    if-eqz v2, :cond_1

    .line 5
    move-object v0, v1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->stopCurrentPlay()V

    goto :goto_2

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->r:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-ne p1, p2, :cond_5

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->c0()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->d0()V

    .line 10
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->r:I

    goto :goto_2

    .line 12
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->stopCurrentPlay()V

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->d0()V

    .line 14
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->mCurrentHolder:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->r:I

    goto :goto_2

    .line 16
    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->stopCurrentPlay()V

    :goto_2
    return-void
.end method

.method static synthetic g2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->b:I

    return p0
.end method

.method static synthetic i2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->k:Ljava/util/List;

    return-object p0
.end method

.method private initListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->setOnItemClickListener(Lz9/a;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->setOnItemClickListener(Lz9/a;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->setOnItemClickListener(Lz9/a;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S(Lzd/b;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S(Lzd/b;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvDefault:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHostSearch:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private initRecycleView()V
    .locals 8

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHeadView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHeadView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->d:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHeadView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/d;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->setOnItemClickListener(Lz9/a;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvVoiceRoomView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->l:Ljava/util/List;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->l:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvVoiceRoomView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/guochao/faceshow/aaspring/views/RecycleViewDivider;

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v5, v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06009b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/guochao/faceshow/aaspring/views/RecycleViewDivider;-><init>(Landroid/content/Context;III)V

    .line 17
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 18
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->m:Ljava/util/List;

    invoke-direct {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->q:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->t:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 22
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 24
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvDefault:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->j:Ljava/util/List;

    invoke-direct {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->g:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    .line 26
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvDefault:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 27
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 29
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->k:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    .line 30
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHostSearch:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHostSearch:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic j2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->p:I

    return p1
.end method

.method static synthetic k2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    return-object p0
.end method

.method static synthetic l2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic m2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;

    return-object p0
.end method

.method private n2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->a:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvDefault:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHostSearch:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->cdlLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string v0, "tokens/search/smartRecommend"

    .line 9
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;-><init>()V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_0
    return-void
.end method

.method private synthetic o2(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "item"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;-><init>()V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->j:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getMname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->setText(Ljava/lang/String;)V

    const/16 p2, 0xa

    .line 5
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->setType(I)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->j:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getMname()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->o:I

    invoke-direct {p0, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->w2(Ljava/lang/String;I)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->k:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getMname()Ljava/lang/String;

    move-result-object p2

    iget p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->o:I

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->x2(Ljava/lang/String;I)V

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "people_nearby_item"

    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->j:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "userId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic p2(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->k:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getSearchType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->o:I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->k:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->c:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;-><init>()V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->k:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->setText(Ljava/lang/String;)V

    const/16 p2, 0xa

    .line 6
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->setType(I)V

    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->hideSoftKeyboard()V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->k:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->k:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getContent()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->o:I

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->w2(Ljava/lang/String;I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->k:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getContent()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->o:I

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->x2(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private synthetic q2(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->l:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->l:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->h2(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;Ljava/util/List;)V

    return-void
.end method

.method private synthetic r2(Lwd/j;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->a:I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->c:Ljava/lang/String;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->o:I

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->u2(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic s2(Lwd/j;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->b:I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->v2(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic t2(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->d:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "userId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private u2(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setContent(Ljava/lang/String;)V

    .line 3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->a:I

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setCurrPage(I)V

    const/16 p1, 0xf

    .line 4
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setPageSize(I)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setSearchType(I)V

    const-string p1, "tokens/search/comprehensiveRing"

    .line 6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private v2(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->a:I

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setContent(Ljava/lang/String;)V

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->b:I

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setCurrPage(I)V

    const/16 v1, 0xf

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setPageSize(I)V

    const-string v1, "tokens/search/keyWordList"

    .line 6
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$f;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private w2(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setContent(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setCurrPage(I)V

    const/16 v1, 0xf

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBean;->setPageSize(I)V

    const-string v1, "tokens/search/comprehensiveUser"

    .line 5
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;

    invoke-direct {v1, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private x2(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v0, "api/token/live/voice/room/searchRoomByNames"

    invoke-direct {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    const-string v0, "title"

    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$i;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$h;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V

    .line 2
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-void
.end method

.method private y2(Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->c:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvDefault:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHostSearch:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->cdlLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->a:I

    .line 11
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->n2()V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->cdlLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvDefault:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->tvUserTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHeadView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rlRelatedUserMore:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHostSearch:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 21
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->b:I

    .line 22
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->v2(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->e(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    const v0, 0x7f0d01df

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->d:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->j:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->k:Ljava/util/List;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->m:Ljava/util/List;

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvDefault:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvHostSearch:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->cdlLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1, v1, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 15
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->n:Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    .line 16
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setType(I)V

    .line 17
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->initRecycleView()V

    .line 18
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->initListener()V

    return-void
.end method

.method public loadData(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->n2()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->stopCurrentPlay()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->rvItemView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->t:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->onDestroy()V

    return-void
.end method

.method public onMessageEvent(Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->y2(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->getText()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->o:I

    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->w2(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->getText()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->o:I

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->x2(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->c:Ljava/lang/String;

    const-string v2, "user_search_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onVoiceRoomViewClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VoiceRoomMoreActivity;->b0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
