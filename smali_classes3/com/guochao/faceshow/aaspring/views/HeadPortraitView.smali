.class public Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/ImageView;

.field d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

.field e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/FrameLayout;

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:I

.field private q:F

.field private r:F

.field private s:I

.field private t:I

.field private u:Landroid/content/Context;

.field v:Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p:I

    .line 3
    sget v0, Lcom/guochao/lib_core/R$mipmap;->default_head_space:I

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s:I

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->l(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p:I

    .line 7
    sget v0, Lcom/guochao/lib_core/R$mipmap;->default_head_space:I

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s:I

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->l(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 10
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p:I

    .line 11
    sget p3, Lcom/guochao/lib_core/R$mipmap;->default_head_space:I

    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s:I

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->l(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j:F

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int v0, v0

    .line 4
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j:F

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int v0, v0

    .line 4
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->v:Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;

    iget-object p1, p1, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->onlineState:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 11
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method private c(Lp7/h;)V
    .locals 2
    .param p1    # Lp7/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object v0

    invoke-interface {v0}, Lb8/g;->getVipAvatarPendentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object v0

    invoke-interface {v0}, Lb8/g;->getVipAvatarPendentType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object p1

    invoke-interface {p1}, Lb8/g;->getVipAvatarPendentType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->u:Landroid/content/Context;

    sget v1, Lcom/guochao/lib_base/R$color;->white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->setStrokeColor(I)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->u:Landroid/content/Context;

    sget v1, Lcom/guochao/lib_base/R$color;->color_vip_flag_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->setStrokeColor(I)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->u:Landroid/content/Context;

    sget v1, Lcom/guochao/lib_base/R$color;->white:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->setStrokeColor(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private l(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->u:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->v:Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;

    .line 3
    iget-object v1, v0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->avatar:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    .line 4
    iget-object v1, v0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->flag:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    .line 5
    iget-object v1, v0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->avatarBg:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->a:Landroid/widget/ImageView;

    .line 6
    iget-object v1, v0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->avatarPedant:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    .line 7
    iget-object v1, v0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->avatarVipPedant:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    .line 8
    iget-object v1, v0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->ivAnim:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f:Landroid/widget/ImageView;

    .line 9
    iget-object v0, v0, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->flAnim:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_4

    .line 10
    sget-object v0, Lcom/guochao/lib_core/R$styleable;->HeadPortraitView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    :try_start_0
    sget v0, Lcom/guochao/lib_core/R$styleable;->HeadPortraitView_showStyle:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->h:I

    .line 12
    sget v0, Lcom/guochao/lib_core/R$styleable;->HeadPortraitView_headPortraitSize:I

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {p1, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m:F

    .line 13
    sget p1, Lcom/guochao/lib_core/R$styleable;->HeadPortraitView_flagSizeHeadPortrait:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 15
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m:F

    div-float/2addr v0, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->i:F

    goto :goto_0

    .line 16
    :cond_0
    sget p1, Lcom/guochao/lib_core/R$styleable;->HeadPortraitView_flagSize:I

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->i:F

    .line 17
    :goto_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m:F

    const v0, 0x3e91745d

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->n:F

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    .line 18
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->o:F

    const v0, 0x3e2e8ba3

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->r:F

    const v0, 0x3fa2e8ba

    mul-float v2, p1, v0

    add-float/2addr v2, v1

    .line 20
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j:F

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->k:F

    const v0, 0x3f92e8ba

    mul-float p1, p1, v0

    add-float/2addr p1, v1

    .line 22
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->l:F

    .line 23
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s()V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f:Landroid/widget/ImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->r:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->i:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->a:Landroid/widget/ImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->l:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->k:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->i:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 31
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->h:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 32
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m:F

    const v0, 0x3d0ba2e9

    mul-float p1, p1, v0

    add-float/2addr p1, v1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->q:F

    goto :goto_1

    .line 33
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m:F

    const v0, 0x3e0ba2e9

    mul-float p1, p1, v0

    add-float/2addr p1, v1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->q:F

    .line 34
    :goto_1
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->n(Landroid/content/res/TypedArray;)V

    .line 35
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b(Landroid/view/View;)V

    .line 36
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->h:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method private m(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    const-string v0, "https://fsveg.buzzcast.info/app_static/resource/vip.gif"

    invoke-static {p1, v0}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    const-string v0, "https://fsveg.buzzcast.info/app_static/resource/vvip.gif"

    invoke-static {p1, v0}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private n(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 1
    sget v0, Lcom/guochao/lib_core/R$styleable;->HeadPortraitView_headCountryFlagBorderColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->setStrokeColor(I)V

    .line 4
    :cond_0
    sget v0, Lcom/guochao/lib_core/R$styleable;->HeadPortraitView_headCountryFlagBorderWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->setStrokeWidth(F)V

    .line 7
    :cond_1
    sget v0, Lcom/guochao/lib_core/R$styleable;->HeadPortraitView_headPortraitBorderColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->setStrokeColor(I)V

    .line 10
    :cond_2
    sget v0, Lcom/guochao/lib_core/R$styleable;->HeadPortraitView_headPortraitBorderWidth:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->setStrokeWidth(F)V

    :cond_3
    return-void
.end method

.method private p(Landroid/view/View;F)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int p2, p2

    .line 2
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private q(Landroid/view/View;FF)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    float-to-int p2, p2

    .line 2
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public d(Lp7/h;)V
    .locals 5

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-interface {p1}, Lp7/h;->getCountryFlag()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v1, v0

    move-object v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s:I

    invoke-static {v3, v1, v4}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object v3

    invoke-interface {v3}, Lb8/g;->getVipAvatarPendentUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c(Lp7/h;)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object p1

    invoke-interface {p1}, Lb8/g;->getHostCertificationUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    sget v1, Lcom/guochao/lib_core/R$mipmap;->ic_earth_space:I

    invoke-static {p1, v0, v1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    :cond_3
    return-void
.end method

.method public e(Lp7/h;I)V
    .locals 5
    .param p1    # Lp7/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-interface {p1}, Lp7/h;->getCountryFlag()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v1, v0

    move-object v2, v1

    .line 3
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s:I

    if-lez v1, :cond_1

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s:I

    invoke-static {v3, v1, v4}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 8
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c(Lp7/h;)V

    .line 10
    :cond_3
    invoke-static {p0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/h;->f(Landroid/view/View;)V

    .line 11
    invoke-static {p0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->p(Ljava/lang/Integer;)Lcom/bumptech/glide/g;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-nez p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    sget p2, Lcom/guochao/lib_core/R$mipmap;->ic_earth_space:I

    invoke-static {p1, v0, p2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    :cond_5
    return-void
.end method

.method public f(Lp7/h;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s:I

    invoke-static {v0, v1, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 2
    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object v1

    invoke-interface {v1}, Lb8/g;->getVipAvatarPendentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c(Lp7/h;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object v1

    invoke-interface {v1}, Lb8/g;->getHostCertificationUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_3

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p2

    if-nez p2, :cond_3

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-interface {p1}, Lp7/h;->getCountryFlag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, ""

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lp7/h;->getCountryFlag()Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget v0, Lcom/guochao/lib_core/R$mipmap;->ic_earth_space:I

    invoke-static {p2, p1, v0}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public g(Lp7/h;ZZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/guochao/lib_core/R$mipmap;->ic_default_mvp:I

    invoke-static {p3, v0, v1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 2
    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object v0

    invoke-interface {v0}, Lb8/g;->getVipAvatarPendentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c(Lp7/h;)V

    .line 5
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object v0

    invoke-interface {v0}, Lb8/g;->getHostCertificationUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_3

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p2

    if-nez p2, :cond_3

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-interface {p1}, Lp7/h;->getCountryFlag()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p1, ""

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lp7/h;->getCountryFlag()Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget p3, Lcom/guochao/lib_core/R$mipmap;->ic_earth_space:I

    invoke-static {p2, p1, p3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public getDefaultAvatarRes()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s:I

    return v0
.end method

.method public getVipLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->t:I

    return v0
.end method

.method public h(Lcom/guochao/faceshow/aaspring/base/model/GCUser;)V
    .locals 6

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;->getCountryLogo()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUserVipInfo;->getVipLevel()I

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->u:Landroid/content/Context;

    sget v5, Lcom/guochao/lib_base/R$color;->color_vip_flag_color:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->setStrokeColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->u:Landroid/content/Context;

    sget v5, Lcom/guochao/lib_base/R$color;->white:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->setStrokeColor(I)V

    .line 6
    :goto_0
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;->getDressHead()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;->getDressHead()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    move-object v2, v1

    .line 10
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s:I

    if-lez p1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_2

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s:I

    invoke-static {p1, v1, v3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 15
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, v2

    :goto_3
    sget v1, Lcom/guochao/lib_core/R$mipmap;->ic_earth_space:I

    invoke-static {p1, v0, v1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    return-void
.end method

.method public i(Lp7/h;I)V
    .locals 4
    .param p1    # Lp7/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p:I

    const-string p2, ""

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lp7/h;->getCountryFlag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    move-object v1, v0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s:I

    invoke-static {v2, v0, v3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object v2

    invoke-interface {v2}, Lb8/g;->getVipAvatarPendentUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c(Lp7/h;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object p1

    invoke-interface {p1}, Lb8/g;->getHostCertificationUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    sget v0, Lcom/guochao/lib_core/R$mipmap;->ic_earth_space:I

    invoke-static {p1, p2, v0}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    :cond_3
    return-void
.end method

.method public j(Lp7/h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s:I

    invoke-static {v1, v0, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 6
    invoke-interface {p1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object p1

    invoke-interface {p1}, Lb8/g;->getVipAvatarPendentUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    sget v0, Lcom/guochao/lib_core/R$mipmap;->f_dress_empty:I

    .line 7
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    new-instance v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->x0(Lcom/bumptech/glide/request/g;)Lcom/bumptech/glide/g;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    :cond_1
    return-void
.end method

.method public k(Lp7/h;IZ)V
    .locals 4
    .param p1    # Lp7/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p:I

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {p1}, Lp7/h;->getCountryFlag()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    goto :goto_0

    :cond_1
    move-object p3, v0

    move-object v1, p3

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s:I

    invoke-static {v2, v1, v3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c(Lp7/h;)V

    .line 7
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m(I)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p3

    :goto_1
    sget p2, Lcom/guochao/lib_core/R$mipmap;->ic_earth_space:I

    invoke-static {p1, v0, p2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    :cond_3
    return-void
.end method

.method public o(FFI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m:F

    const/high16 v0, 0x40400000    # 3.0f

    div-float v0, p1, v0

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->i:F

    const/high16 v0, 0x3f000000    # 0.5f

    const/16 v1, 0x8

    if-ne p3, v1, :cond_0

    mul-float p1, p1, p2

    add-float/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j:F

    goto :goto_0

    :cond_0
    const p2, 0x3fa2e8ba

    mul-float p1, p1, p2

    add-float/2addr p1, v0

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j:F

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {p2}, Lcom/google/android/material/imageview/ShapeableImageView;->getStrokeWidth()F

    move-result p2

    float-to-int p2, p2

    .line 8
    iget p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j:F

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m:F

    sub-float v1, p3, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v1, p2

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-float/2addr p3, v0

    div-float/2addr p3, v2

    float-to-int p3, p3

    add-int/2addr p3, p2

    .line 9
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m:F

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f:Landroid/widget/ImageView;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->n:F

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->n:F

    iget p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->o:F

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->q(Landroid/view/View;FF)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->a:Landroid/widget/ImageView;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->l:F

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j:F

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j:F

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->i:F

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->v:Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;

    iget-object p1, p1, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->avatar:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->v:Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;

    iget-object p1, p1, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->avatar:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->v:Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;

    iget-object p2, p2, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->avatar:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getRight()I

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    .line 5
    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p3

    .line 6
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->v:Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;

    iget-object p4, p4, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->onlineState:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getWidth()I

    move-result p5

    sub-int p5, p2, p5

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->v:Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;

    iget-object p3, p3, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->onlineState:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getHeight()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p4, p5, p1, p2, p3}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method public r(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public s()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->h:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 13
    :pswitch_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 21
    :pswitch_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 27
    :pswitch_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 33
    :pswitch_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 41
    :pswitch_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 47
    :pswitch_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    :goto_2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p:I

    if-nez v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 57
    :goto_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 58
    :pswitch_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :goto_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 65
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    :goto_5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 67
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_6

    .line 68
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 69
    :goto_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public setAvatarOnly(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setAvatarRatio(F)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float v1, v0, v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->i:F

    mul-float v0, v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j:F

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {v0}, Lcom/google/android/material/imageview/ShapeableImageView;->getStrokeWidth()F

    move-result v0

    float-to-int v0, v0

    .line 5
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j:F

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m:F

    sub-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v0

    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr v1, v0

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->m:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f:Landroid/widget/ImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->n:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->n:F

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->o:F

    invoke-direct {p0, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->q(Landroid/view/View;FF)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->a:Landroid/widget/ImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->l:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->b:Landroid/widget/ImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->j:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->e:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->i:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p(Landroid/view/View;F)V

    return-void
.end method

.method public setAvatarSize(F)V
    .locals 2

    const v0, 0x3fa2e8ba

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->o(FFI)V

    return-void
.end method

.method public setAvatarStrokeWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->setStrokeWidth(F)V

    return-void
.end method

.method public setDefaultAvatarRes(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s:I

    return-void
.end method

.method public setLivingStatus(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p:I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f:Landroid/widget/ImageView;

    sget v0, Lcom/guochao/lib_core/R$drawable;->living_status:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 6
    :cond_0
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->p:I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->g:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOnline(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->v:Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;

    iget-object p1, p1, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->onlineState:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->v:Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;

    iget-object p1, p1, Lcom/guochao/lib_core/databinding/LayoutHeadPortraitBinding;->onlineState:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setPendantRes(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->c:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lhc/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;)V

    return-void
.end method

.method public setVipLevel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->t:I

    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->h:I

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->s()V

    return-void
.end method
