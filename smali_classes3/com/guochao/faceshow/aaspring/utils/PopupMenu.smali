.class public Lcom/guochao/faceshow/aaspring/utils/PopupMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnDismissListener;,
        Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private gravity:I

.field private mAlpha:F

.field mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private final mMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMenuItemClickListener:Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;

.field private onDismissListener:Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mAlpha:F

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mMenus:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/utils/PopupMenu;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mMenus:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/utils/PopupMenu;)Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mOnMenuItemClickListener:Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/guochao/faceshow/aaspring/utils/PopupMenu;)Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnDismissListener;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->onDismissListener:Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnDismissListener;

    return-object p0
.end method


# virtual methods
.method public getGravity()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->gravity:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mAlpha:F

    goto :goto_0

    :cond_0
    const p1, 0x7f0a0138

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0801e7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->gravity:I

    return-void
.end method

.method public setMenus(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setOnDismissListener(Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->onDismissListener:Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnDismissListener;

    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mOnMenuItemClickListener:Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0402

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mContentView:Landroid/view/View;

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const v1, 0x7f0a0138

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0801e7

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03ce

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mContentView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    const v4, 0x7f0a0c6c

    .line 7
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mMenus:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->calTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 8
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v4, v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    add-int/2addr v2, v0

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mContentView:Landroid/view/View;

    const/4 v1, -0x2

    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/utils/Tool;->createPopWindowBottomInstance(Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mContentView:Landroid/view/View;

    const v4, 0x7f0a066d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v3, -0x1

    .line 13
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 14
    new-instance v3, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mContext:Landroid/content/Context;

    const v7, 0x7f0d03ce

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mMenus:Ljava/util/List;

    move-object v4, v3

    move-object v5, p0

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/PopupMenu;Landroid/content/Context;ILjava/util/List;Landroid/widget/PopupWindow;)V

    .line 15
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->mContext:Landroid/content/Context;

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v3, v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    const v3, 0x800003

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 17
    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$2;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$2;-><init>(Lcom/guochao/faceshow/aaspring/utils/PopupMenu;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method
