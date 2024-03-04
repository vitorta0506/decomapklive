.class public Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;
.super Lcom/guochao/faceshow/views/flowlayout/FlowLayout;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/flowlayout/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$c;,
        Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$b;
    }
.end annotation


# instance fields
.field private f:Lcom/guochao/faceshow/views/flowlayout/a;

.field private g:Z

.field private h:I

.field private i:Landroid/view/MotionEvent;

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$b;

.field private l:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/views/flowlayout/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 2
    iput-boolean p3, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->g:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->h:I

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    .line 5
    sget-object v1, Lcom/guochao/faceshow/R$styleable;->TagFlowLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->g:Z

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->h:I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    iget-boolean p1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->g:Z

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->f:Lcom/guochao/faceshow/views/flowlayout/a;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/flowlayout/a;->c()Ljava/util/HashSet;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/flowlayout/a;->a()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 5
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/views/flowlayout/a;->b(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, p0, v3, v4}, Lcom/guochao/faceshow/views/flowlayout/a;->d(Lcom/guochao/faceshow/views/flowlayout/FlowLayout;ILjava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 6
    new-instance v5, Lcom/guochao/faceshow/views/flowlayout/TagView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/guochao/faceshow/views/flowlayout/TagView;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v7, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v8, -0x2

    .line 9
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 10
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 11
    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 13
    iget v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 14
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v6, 0x1

    .line 15
    invoke-virtual {v4, v6}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 16
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 17
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 18
    :cond_0
    new-instance v9, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v9, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 19
    invoke-virtual {v7, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 20
    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 22
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/views/flowlayout/TagView;->setChecked(Z)V

    .line 25
    :cond_1
    iget-object v4, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->f:Lcom/guochao/faceshow/views/flowlayout/a;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/views/flowlayout/a;->b(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Lcom/guochao/faceshow/views/flowlayout/a;->f(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 26
    iget-object v4, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/views/flowlayout/TagView;->setChecked(Z)V

    .line 28
    :cond_2
    iget-object v4, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->f:Lcom/guochao/faceshow/views/flowlayout/a;

    iget-object v4, v4, Lcom/guochao/faceshow/views/flowlayout/a;->d:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 29
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 30
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 31
    new-instance v4, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$a;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$a;-><init>(Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;)V

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 32
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private c(Lcom/guochao/faceshow/views/flowlayout/TagView;I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->g:Z

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/flowlayout/TagView;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->h:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/views/flowlayout/TagView;

    .line 7
    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/views/flowlayout/TagView;->setChecked(Z)V

    .line 8
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/views/flowlayout/TagView;->setChecked(Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->h:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->h:I

    if-lt v0, v1, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/views/flowlayout/TagView;->setChecked(Z)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/views/flowlayout/TagView;->setChecked(Z)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->k:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$b;

    if-eqz p1, :cond_3

    .line 17
    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, p2}, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$b;->a(Ljava/util/Set;)V

    :cond_3
    return-void
.end method

.method private d(II)Lcom/guochao/faceshow/views/flowlayout/TagView;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/views/flowlayout/TagView;

    .line 3
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 5
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Landroid/view/View;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->b()V

    return-void
.end method

.method public getAdapter()Lcom/guochao/faceshow/views/flowlayout/a;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->f:Lcom/guochao/faceshow/views/flowlayout/a;

    return-object v0
.end method

.method public getSelectedList()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/views/flowlayout/TagView;

    .line 3
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v2}, Lcom/guochao/faceshow/views/flowlayout/TagView;->getTagView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 5
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/views/flowlayout/FlowLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "key_choose_pos"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\\|"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 8
    iget-object v4, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/views/flowlayout/TagView;

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 10
    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/views/flowlayout/TagView;->setChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "key_default"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 12
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "key_default"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const-string v2, ""

    if-lez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v1, "key_choose_pos"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->i:Landroid/view/MotionEvent;

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->i:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->i:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->i:Landroid/view/MotionEvent;

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->d(II)Lcom/guochao/faceshow/views/flowlayout/TagView;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->e(Landroid/view/View;)I

    move-result v1

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->c(Lcom/guochao/faceshow/views/flowlayout/TagView;I)V

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->l:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$c;

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/flowlayout/TagView;->getTagView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v2, v0, v1, p0}, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$c;->a(Landroid/view/View;ILcom/guochao/faceshow/views/flowlayout/FlowLayout;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setAdapter(Lcom/guochao/faceshow/views/flowlayout/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->f:Lcom/guochao/faceshow/views/flowlayout/a;

    .line 2
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/views/flowlayout/a;->setOnDataChangedListener(Lcom/guochao/faceshow/views/flowlayout/a$a;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->b()V

    return-void
.end method

.method public setMaxSelectCount(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "you has already select more than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " views , so it will be clear ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TagFlowLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    :cond_0
    iput p1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->h:I

    return-void
.end method

.method public setOnSelectListener(Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->k:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$b;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setOnTagClickListener(Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout;->l:Lcom/guochao/faceshow/views/flowlayout/TagFlowLayout$c;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    :cond_0
    return-void
.end method
