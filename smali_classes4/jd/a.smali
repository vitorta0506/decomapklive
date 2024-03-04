.class public Ljd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkd/a;


# direct methods
.method public constructor <init>(Lkd/a;)V
    .locals 0
    .param p1    # Lkd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljd/a;->a:Lkd/a;

    return-void
.end method

.method private a(I)Lcom/rd/animation/type/AnimationType;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1
    sget-object p1, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 2
    :pswitch_0
    sget-object p1, Lcom/rd/animation/type/AnimationType;->SCALE_DOWN:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 3
    :pswitch_1
    sget-object p1, Lcom/rd/animation/type/AnimationType;->SWAP:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/rd/animation/type/AnimationType;->DROP:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 5
    :pswitch_3
    sget-object p1, Lcom/rd/animation/type/AnimationType;->THIN_WORM:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 6
    :pswitch_4
    sget-object p1, Lcom/rd/animation/type/AnimationType;->FILL:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 7
    :pswitch_5
    sget-object p1, Lcom/rd/animation/type/AnimationType;->SLIDE:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 8
    :pswitch_6
    sget-object p1, Lcom/rd/animation/type/AnimationType;->WORM:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 9
    :pswitch_7
    sget-object p1, Lcom/rd/animation/type/AnimationType;->SCALE:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 10
    :pswitch_8
    sget-object p1, Lcom/rd/animation/type/AnimationType;->COLOR:Lcom/rd/animation/type/AnimationType;

    return-object p1

    .line 11
    :pswitch_9
    sget-object p1, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(I)Lcom/rd/draw/data/RtlMode;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    sget-object p1, Lcom/rd/draw/data/RtlMode;->Auto:Lcom/rd/draw/data/RtlMode;

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Lcom/rd/draw/data/RtlMode;->Auto:Lcom/rd/draw/data/RtlMode;

    return-object p1

    .line 3
    :cond_1
    sget-object p1, Lcom/rd/draw/data/RtlMode;->Off:Lcom/rd/draw/data/RtlMode;

    return-object p1

    .line 4
    :cond_2
    sget-object p1, Lcom/rd/draw/data/RtlMode;->On:Lcom/rd/draw/data/RtlMode;

    return-object p1
.end method

.method private d(Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_interactiveAnimation:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 2
    sget v2, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_animationDuration:I

    const/16 v3, 0x15e

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    move-wide v2, v4

    .line 3
    :cond_0
    sget v4, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_animationType:I

    sget-object v5, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 4
    invoke-direct {p0, v4}, Ljd/a;->a(I)Lcom/rd/animation/type/AnimationType;

    move-result-object v4

    .line 5
    sget v5, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_rtl_mode:I

    sget-object v6, Lcom/rd/draw/data/RtlMode;->Off:Lcom/rd/draw/data/RtlMode;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 6
    invoke-direct {p0, v5}, Ljd/a;->b(I)Lcom/rd/draw/data/RtlMode;

    move-result-object v5

    .line 7
    sget v6, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_fadeOnIdle:I

    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 8
    sget v6, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_idleDuration:I

    const/16 v7, 0xbb8

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    int-to-long v6, p1

    .line 9
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v2, v3}, Lkd/a;->A(J)V

    .line 10
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v0}, Lkd/a;->J(Z)V

    .line 11
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v4}, Lkd/a;->B(Lcom/rd/animation/type/AnimationType;)V

    .line 12
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v5}, Lkd/a;->S(Lcom/rd/draw/data/RtlMode;)V

    .line 13
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v1}, Lkd/a;->F(Z)V

    .line 14
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v6, v7}, Lkd/a;->I(J)V

    return-void
.end method

.method private e(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_unselectedColor:I

    const-string v1, "#33ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 2
    sget v1, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_selectedColor:I

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 3
    iget-object v1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {v1, v0}, Lkd/a;->Y(I)V

    .line 4
    iget-object v0, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {v0, p1}, Lkd/a;->U(I)V

    return-void
.end method

.method private f(Landroid/content/res/TypedArray;)V
    .locals 6
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_viewPager:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2
    sget v2, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_autoVisibility:I

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 3
    sget v3, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_dynamicCount:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 4
    sget v5, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_count:I

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v1, :cond_0

    const/4 v5, 0x3

    .line 5
    :cond_0
    sget v1, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_select:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    if-lez v5, :cond_2

    add-int/lit8 v4, v5, -0x1

    if-le p1, v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, p1

    .line 6
    :goto_0
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v0}, Lkd/a;->Z(I)V

    .line 7
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v2}, Lkd/a;->C(Z)V

    .line 8
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v3}, Lkd/a;->E(Z)V

    .line 9
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v5}, Lkd/a;->D(I)V

    .line 10
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v4}, Lkd/a;->V(I)V

    .line 11
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v4}, Lkd/a;->W(I)V

    .line 12
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v4}, Lkd/a;->K(I)V

    return-void
.end method

.method private g(Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_orientation:I

    sget-object v1, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lcom/rd/draw/data/Orientation;->VERTICAL:Lcom/rd/draw/data/Orientation;

    .line 3
    :goto_0
    sget v0, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_radius:I

    const/4 v2, 0x6

    invoke-static {v2}, Lnd/b;->a(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    const/4 v2, 0x0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    :cond_1
    sget v3, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_padding:I

    const/16 v4, 0x8

    invoke-static {v4}, Lnd/b;->a(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    if-gez v3, :cond_2

    const/4 v3, 0x0

    .line 5
    :cond_2
    sget v4, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_scaleFactor:I

    const v5, 0x3f333333    # 0.7f

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    cmpg-float v7, v4, v6

    if-gez v7, :cond_3

    const v4, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_3
    cmpl-float v6, v4, v5

    if-lez v6, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 6
    :cond_4
    :goto_1
    sget v5, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView_piv_strokeWidth:I

    const/4 v6, 0x1

    invoke-static {v6}, Lnd/b;->a(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    if-le p1, v0, :cond_5

    move p1, v0

    .line 7
    :cond_5
    iget-object v5, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {v5}, Lkd/a;->b()Lcom/rd/animation/type/AnimationType;

    move-result-object v5

    sget-object v6, Lcom/rd/animation/type/AnimationType;->FILL:Lcom/rd/animation/type/AnimationType;

    if-eq v5, v6, :cond_6

    goto :goto_2

    :cond_6
    move v2, p1

    .line 8
    :goto_2
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v0}, Lkd/a;->R(I)V

    .line 9
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v1}, Lkd/a;->L(Lcom/rd/draw/data/Orientation;)V

    .line 10
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v3}, Lkd/a;->M(I)V

    .line 11
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v4}, Lkd/a;->T(F)V

    .line 12
    iget-object p1, p0, Ljd/a;->a:Lkd/a;

    invoke-virtual {p1, v2}, Lkd/a;->X(I)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/rd/pageindicatorview/R$styleable;->PageIndicatorView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljd/a;->f(Landroid/content/res/TypedArray;)V

    .line 3
    invoke-direct {p0, p1}, Ljd/a;->e(Landroid/content/res/TypedArray;)V

    .line 4
    invoke-direct {p0, p1}, Ljd/a;->d(Landroid/content/res/TypedArray;)V

    .line 5
    invoke-direct {p0, p1}, Ljd/a;->g(Landroid/content/res/TypedArray;)V

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
