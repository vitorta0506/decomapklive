.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/r;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/game/r$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lcom/guochao/faceshow/aaspring/modulars/live/game/r$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->d:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->b:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->e()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->a:Landroid/view/View;

    const v0, 0x7f0a025d

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 11
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 12
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 13
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/r;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->f()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/game/r;)Lcom/guochao/faceshow/aaspring/modulars/live/game/r$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->f:Lcom/guochao/faceshow/aaspring/modulars/live/game/r$c;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/game/r;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/game/r;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/live/game/r;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->e:Ljava/lang/String;

    return-object p0
.end method

.method private e()I
    .locals 1

    const v0, 0x7f0d031f

    return v0
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/r$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/r;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public g(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->e:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/live/game/r$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/r;->f:Lcom/guochao/faceshow/aaspring/modulars/live/game/r$c;

    return-void
.end method
