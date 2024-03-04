.class public Lcom/guochao/faceshow/aaspring/views/AvatarView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field a:I

.field private b:Z

.field private c:F

.field private d:F

.field private e:F

.field private f:Z

.field private g:I

.field mAvatarImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mAvatarPendantImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f008a

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->g:I

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0f008a

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->g:I

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x7f0f008a

    .line 8
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->g:I

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {v2}, Lcom/guochao/faceshow/views/NormalCircleImageView;->getBorderWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {v2}, Lcom/guochao/faceshow/views/NormalCircleImageView;->getBorderWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d034b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2
    invoke-static {p0}, Lbutterknife/ButterKnife;->b(Landroid/view/View;)Lbutterknife/Unbinder;

    if-eqz p2, :cond_a

    .line 3
    sget-object v0, Lcom/guochao/faceshow/R$styleable;->AvatarView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x2

    const/high16 v1, 0x42400000    # 48.0f

    .line 4
    :try_start_0
    invoke-static {p1, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->e:F

    const/16 p1, 0x8

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->f:Z

    const/4 v1, 0x6

    .line 6
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 7
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 8
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->e:F

    div-float/2addr v3, v1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->c:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 9
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->e:F

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->c:F

    .line 10
    :goto_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->e:F

    const/high16 v3, 0x3fa00000    # 1.25f

    mul-float v1, v1, v3

    add-float/2addr v1, v4

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->d:F

    const/4 v1, 0x7

    const/4 v3, -0x1

    .line 11
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->a:I

    and-int/lit8 v4, v1, 0x1

    if-ne v4, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 12
    :goto_1
    iput-boolean v4, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->b:Z

    if-eq v1, v3, :cond_8

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 13
    :goto_2
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->b:Z

    if-eqz v2, :cond_3

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarPendantImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 15
    :cond_3
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->f:Z

    if-eqz v1, :cond_4

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarPendantImageView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarPendantImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    if-eqz v4, :cond_7

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v2, :cond_6

    .line 19
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->f:Z

    if-eqz p1, :cond_5

    goto :goto_4

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 21
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_5

    .line 23
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->d:F

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->e:F

    sub-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_5

    .line 26
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->e:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->f(Landroid/view/View;F)V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarPendantImageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->d:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->f(Landroid/view/View;F)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->c:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->f(Landroid/view/View;F)V

    .line 30
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->d(Landroid/content/res/TypedArray;)V

    if-eqz v4, :cond_9

    .line 31
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_6

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    throw p1

    :cond_a
    :goto_6
    return-void
.end method

.method private d(Landroid/content/res/TypedArray;)V
    .locals 4

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderColor(I)V

    :cond_0
    const/4 v0, 0x4

    .line 4
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
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderWidth(I)V

    .line 7
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderColor(I)V

    :cond_2
    const/4 v0, 0x1

    .line 10
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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setBorderWidth(I)V

    :cond_3
    return-void
.end method

.method private f(Landroid/view/View;F)V
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


# virtual methods
.method public b(Lp7/h;I)V
    .locals 4
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

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lp7/h;->getCountryFlag()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->g:I

    if-lez v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->g:I

    invoke-static {v1, v0, v3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 8
    :goto_1
    invoke-static {p0}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarPendantImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->f(Landroid/view/View;)V

    .line 9
    invoke-static {p0}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lic/d;->K(Ljava/lang/Integer;)Lic/c;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarPendantImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    const v0, 0x7f0f0122

    invoke-static {p2, p1, v0}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public e(FF)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->e:F

    const/high16 v0, 0x40400000    # 3.0f

    div-float v0, p1, v0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->c:F

    mul-float p1, p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->d:F

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/views/NormalCircleImageView;->getBorderWidth()I

    move-result p2

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->d:F

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->e:F

    sub-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v0, p2

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->e:F

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->f(Landroid/view/View;F)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarPendantImageView:Landroid/widget/ImageView;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->d:F

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->f(Landroid/view/View;F)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->c:F

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->f(Landroid/view/View;F)V

    return-void
.end method

.method public setAvatarRatio(F)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->e:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float v1, v0, v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->c:F

    mul-float v0, v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->d:F

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/NormalCircleImageView;->getBorderWidth()I

    move-result v0

    .line 5
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->d:F

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->e:F

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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->e:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->f(Landroid/view/View;F)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarPendantImageView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->d:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->f(Landroid/view/View;F)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mCountryFlagImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->c:F

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->f(Landroid/view/View;F)V

    return-void
.end method

.method public setAvatarSize(F)V
    .locals 1

    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/AvatarView;->e(FF)V

    return-void
.end method

.method public setAvatarWithClip(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->mAvatarImageView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/NormalCircleImageView;->setWithClip(Z)V

    :cond_0
    return-void
.end method

.method public setDefaultAvatarRes(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/AvatarView;->g:I

    return-void
.end method
