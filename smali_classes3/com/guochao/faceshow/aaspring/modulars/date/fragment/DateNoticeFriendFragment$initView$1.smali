.class public final Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$initView$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J \u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$initView$1",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "getItemOffsets",
        "",
        "outRect",
        "Landroid/graphics/Rect;",
        "view",
        "Landroid/view/View;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "onDraw",
        "c",
        "Landroid/graphics/Canvas;",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $bottomHeight:I

.field final synthetic $margin:I

.field final synthetic $paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(IILandroid/graphics/Paint;)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$initView$1;->$bottomHeight:I

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$initView$1;->$margin:I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$initView$1;->$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$initView$1;->$bottomHeight:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 6
    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$initView$1;->$bottomHeight:I

    add-int/2addr v4, v3

    if-nez v1, :cond_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_1

    .line 7
    :cond_0
    iget v5, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$initView$1;->$margin:I

    int-to-float v5, v5

    move v7, v5

    :goto_1
    int-to-float v8, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v9, v3

    int-to-float v10, v4

    iget-object v11, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$initView$1;->$paint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, p3, -0x2

    if-ne v1, v3, :cond_1

    .line 8
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$initView$1;->$margin:I

    int-to-float v5, v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v7, v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$initView$1;->$bottomHeight:I

    int-to-float v3, v3

    add-float v8, v2, v3

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$initView$1;->$paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
