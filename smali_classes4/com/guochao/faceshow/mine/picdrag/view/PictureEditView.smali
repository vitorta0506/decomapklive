.class public Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$b;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Landroidx/recyclerview/widget/GridLayoutManager;

.field private c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

.field private d:Landroid/widget/TextView;

.field private e:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private f:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;)Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;)Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->f:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$b;

    return-object p0
.end method

.method private d()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, 0x800003

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 4
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {p0, v1, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d03fd

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v2, 0x7f0a0888

    .line 6
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->a:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0a0889

    .line 7
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->d:Landroid/widget/TextView;

    .line 8
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->setCount(I)V

    .line 9
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 15
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$a;-><init>(Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->e:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 17
    new-instance v0, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->e:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setCount(I)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/8"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f1209bf

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string p1, "%s %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#6365FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x22

    .line 4
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->d(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->g()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->setCount(I)V

    return-void
.end method

.method public e(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->h(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->g()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->setCount(I)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->getData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->setData(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->g()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->setCount(I)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$a;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->c:Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter;->setOnItemClickListener(Lcom/guochao/faceshow/mine/picdrag/view/PictureDragAdapter$a;)V

    return-void
.end method

.method public setOnSortUpdateSortListener(Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView;->f:Lcom/guochao/faceshow/mine/picdrag/view/PictureEditView$b;

    return-void
.end method
