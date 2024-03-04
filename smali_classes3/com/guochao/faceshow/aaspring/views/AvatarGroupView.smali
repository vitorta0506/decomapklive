.class public Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Z

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:I

.field k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->a:Ljava/util/List;

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->b:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->i:Z

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->j:I

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->k:I

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->a:Ljava/util/List;

    const/16 v0, 0xa

    .line 10
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->b:I

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->i:Z

    .line 12
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->j:I

    .line 13
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->k:I

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->a:Ljava/util/List;

    const/16 p3, 0xa

    .line 17
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->b:I

    const/4 p3, 0x1

    .line 18
    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->i:Z

    .line 19
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->j:I

    .line 20
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->k:I

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/high16 v1, 0x3f400000    # 0.75f

    const/high16 v2, -0x3f400000    # -6.0f

    const/high16 v3, 0x41a00000    # 20.0f

    const v4, 0x7f06006a

    const v5, 0x7f060099

    if-eqz p2, :cond_0

    .line 2
    sget-object v6, Lcom/guochao/faceshow/R$styleable;->AvatarGroupView:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v5, 0x4

    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->d:I

    const/16 p2, 0x8

    const/4 v6, 0x5

    .line 4
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->b:I

    const/16 p2, 0xa

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->c:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->e:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->g:I

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->f:I

    const/4 p2, 0x3

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->h:I

    const/4 p2, 0x6

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->i:Z

    .line 11
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->j:I

    const/16 p2, 0x9

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->k:I

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->d:I

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->e:I

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->f:I

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->g:I

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->h:I

    :goto_0
    return-void
.end method

.method private b()Lcom/guochao/faceshow/views/NormalCircleImageView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/views/NormalCircleImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0529

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->h:I

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderWidth(I)V

    return-object v0
.end method

.method private c()Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->j:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->b()Lcom/guochao/faceshow/views/NormalCircleImageView;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->f:I

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 8
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->g:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    .line 10
    :cond_2
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 12
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->b()Lcom/guochao/faceshow/views/NormalCircleImageView;

    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 14
    new-instance v0, Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/guochao/faceshow/views/NormalCircleImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a098a

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 16
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x51

    .line 17
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v3, -0x3f800000    # -4.0f

    .line 18
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 19
    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->f:I

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 21
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->g:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 22
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 3
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p4

    .line 4
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p5, p4, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 5
    iget p4, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->g:I

    add-int/2addr p4, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 5
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 6
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->g:I

    sub-int/2addr v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAvatarList(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lp7/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->a:Ljava/util/List;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->b:I

    const/4 v3, 0x1

    if-le v0, v2, :cond_2

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->c:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    :goto_2
    if-ge v1, v0, :cond_b

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp7/c;

    .line 7
    invoke-interface {v4}, Lp7/c;->getAvatarUrl()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->c()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a0529

    .line 9
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/views/NormalCircleImageView;

    .line 10
    iget-boolean v8, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->i:Z

    if-eqz v8, :cond_4

    int-to-float v8, v1

    .line 11
    invoke-virtual {v6, v8}, Landroid/view/View;->setZ(F)V

    goto :goto_3

    :cond_4
    neg-int v8, v1

    int-to-float v8, v8

    .line 12
    invoke-virtual {v6, v8}, Landroid/view/View;->setZ(F)V

    :goto_3
    const v8, 0x7f0a098a

    .line 13
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 14
    invoke-interface {v4}, Lp7/c;->getGender()I

    move-result v4

    if-eq v4, v3, :cond_7

    if-eqz v8, :cond_6

    .line 15
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->k:I

    if-ne v4, v3, :cond_5

    const v4, 0x7f0f0650

    .line 16
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_5
    const v4, 0x7f0f0651

    .line 17
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    :cond_6
    :goto_4
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->e:I

    invoke-virtual {v7, v4}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderColor(I)V

    goto :goto_6

    :cond_7
    if-eqz v8, :cond_9

    .line 19
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->k:I

    if-ne v4, v3, :cond_8

    const v4, 0x7f0f04b3

    .line 20
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_8
    const v4, 0x7f0f04b4

    .line 21
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    :cond_9
    :goto_5
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->d:I

    invoke-virtual {v7, v4}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderColor(I)V

    .line 23
    :goto_6
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_a

    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_a

    const v4, 0x7f0f02f0

    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7, v4}, Lhc/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;)V

    goto :goto_7

    .line 25
    :cond_a
    invoke-static {p0}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v4

    invoke-virtual {v4, v5}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object v4

    new-instance v5, Ljc/d;

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->h:I

    int-to-float v6, v6

    invoke-virtual {v7}, Lcom/guochao/faceshow/views/NormalCircleImageView;->getBorderColor()I

    move-result v8

    invoke-direct {v5, v6, v8}, Ljc/d;-><init>(FI)V

    invoke-virtual {v4, v5}, Lic/c;->Q1(Le0/h;)Lic/c;

    move-result-object v4

    .line 26
    invoke-static {p0}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v5

    const v6, 0x7f0f0089

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lic/d;->K(Ljava/lang/Integer;)Lic/c;

    move-result-object v5

    new-instance v6, Ljc/d;

    iget v8, p0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;->h:I

    int-to-float v8, v8

    .line 27
    invoke-virtual {v7}, Lcom/guochao/faceshow/views/NormalCircleImageView;->getBorderColor()I

    move-result v9

    invoke-direct {v6, v8, v9}, Ljc/d;-><init>(FI)V

    invoke-virtual {v5, v6}, Lic/c;->Q1(Le0/h;)Lic/c;

    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Lic/c;->P1(Lcom/bumptech/glide/g;)Lic/c;

    move-result-object v4

    .line 29
    invoke-virtual {v4, v7}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_b
    return-void
.end method
