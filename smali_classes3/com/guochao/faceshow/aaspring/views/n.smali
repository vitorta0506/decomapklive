.class public Lcom/guochao/faceshow/aaspring/views/n;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PayoneerData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter;

.field private f:Lcom/guochao/faceshow/aaspring/views/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/guochao/faceshow/aaspring/views/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PayoneerData;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/views/m;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/n;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/n;->d:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/n;->f:Lcom/guochao/faceshow/aaspring/views/m;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/n;->c()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/n;->a:Landroid/view/View;

    const p2, 0x7f0a0937

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/n;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/n;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/high16 p1, 0x42c80000    # 100.0f

    .line 9
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p1, -0x2

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/n;->d()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/n;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/n;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/views/n;)Lcom/guochao/faceshow/aaspring/views/m;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/n;->f:Lcom/guochao/faceshow/aaspring/views/m;

    return-object p0
.end method

.method private c()I
    .locals 1

    const v0, 0x7f0d0320

    return v0
.end method

.method private d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/n;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/n;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/n;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/n;->d:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/n;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/n;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/n;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/RecycleViewDivider;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/n;->b:Landroid/content/Context;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/n;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/guochao/faceshow/aaspring/views/RecycleViewDivider;-><init>(Landroid/content/Context;III)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/n;->e:Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/n$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/n$a;-><init>(Lcom/guochao/faceshow/aaspring/views/n;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/PayoneerSelectAdapter;->setOnItemClickListener(Lz9/a;)V

    return-void
.end method
