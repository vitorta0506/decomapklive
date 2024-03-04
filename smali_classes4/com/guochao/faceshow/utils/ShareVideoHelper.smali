.class public Lcom/guochao/faceshow/utils/ShareVideoHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mShareContentBean:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

.field private final mSharePlatformBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper;->mSharePlatformBeans:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper;->mContentView:Landroid/view/View;

    const v0, 0x7f0a095c

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/utils/ShareVideoHelper$MyAdapter;-><init>(Lcom/guochao/faceshow/utils/ShareVideoHelper;Lcom/guochao/faceshow/utils/ShareVideoHelper$1;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/utils/ShareVideoHelper;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper;->mSharePlatformBeans:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/guochao/faceshow/utils/ShareVideoHelper;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/guochao/faceshow/utils/ShareVideoHelper;)Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper;->mShareContentBean:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    return-object p0
.end method


# virtual methods
.method public setPlatformList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper;->mSharePlatformBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper;->mSharePlatformBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setShareContentBean(Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/ShareVideoHelper;->mShareContentBean:Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    return-void
.end method
