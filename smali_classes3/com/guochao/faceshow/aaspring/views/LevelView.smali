.class public Lcom/guochao/faceshow/aaspring/views/LevelView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/LevelView$SavedState;
    }
.end annotation


# static fields
.field private static final d:[[I


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xf

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    sget v3, Lcom/guochao/lib_core/R$drawable;->shape_level1:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/guochao/lib_core/R$mipmap;->lv01:I

    const/4 v5, 0x1

    aput v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    sget v3, Lcom/guochao/lib_core/R$drawable;->shape_level2:I

    aput v3, v2, v4

    sget v3, Lcom/guochao/lib_core/R$mipmap;->lv02:I

    aput v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [I

    sget v3, Lcom/guochao/lib_core/R$drawable;->shape_level3:I

    aput v3, v2, v4

    sget v3, Lcom/guochao/lib_core/R$mipmap;->lv03:I

    aput v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [I

    sget v3, Lcom/guochao/lib_core/R$drawable;->shape_level4:I

    aput v3, v2, v4

    sget v3, Lcom/guochao/lib_core/R$mipmap;->lv04:I

    aput v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    sget v3, Lcom/guochao/lib_core/R$drawable;->shape_level5:I

    aput v3, v2, v4

    sget v3, Lcom/guochao/lib_core/R$mipmap;->lv05:I

    aput v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    sget v3, Lcom/guochao/lib_core/R$drawable;->shape_level6:I

    aput v3, v2, v4

    sget v3, Lcom/guochao/lib_core/R$mipmap;->lv06:I

    aput v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    sget v3, Lcom/guochao/lib_core/R$drawable;->shape_level7:I

    aput v3, v2, v4

    sget v3, Lcom/guochao/lib_core/R$mipmap;->lv07:I

    aput v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    sget v3, Lcom/guochao/lib_core/R$drawable;->shape_level8:I

    aput v3, v2, v4

    sget v3, Lcom/guochao/lib_core/R$mipmap;->lv08:I

    aput v3, v2, v5

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    sget v3, Lcom/guochao/lib_core/R$drawable;->shape_level9:I

    aput v3, v2, v4

    sget v3, Lcom/guochao/lib_core/R$mipmap;->lv09:I

    aput v3, v2, v5

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    sget v3, Lcom/guochao/lib_core/R$drawable;->shape_level10:I

    aput v3, v2, v4

    sget v3, Lcom/guochao/lib_core/R$mipmap;->lv10:I

    aput v3, v2, v5

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    sget v3, Lcom/guochao/lib_core/R$drawable;->shape_level11:I

    aput v3, v2, v4

    sget v3, Lcom/guochao/lib_core/R$mipmap;->lv11:I

    aput v3, v2, v5

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    sget v3, Lcom/guochao/lib_core/R$drawable;->shape_level12:I

    aput v3, v2, v4

    sget v3, Lcom/guochao/lib_core/R$mipmap;->lv12:I

    aput v3, v2, v5

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    sget v3, Lcom/guochao/lib_core/R$drawable;->shape_level13:I

    aput v3, v2, v4

    sget v3, Lcom/guochao/lib_core/R$mipmap;->lv13:I

    aput v3, v2, v5

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    sget v3, Lcom/guochao/lib_core/R$drawable;->shape_level14:I

    aput v3, v2, v4

    sget v3, Lcom/guochao/lib_core/R$mipmap;->lv14:I

    aput v3, v2, v5

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v1, v1, [I

    sget v2, Lcom/guochao/lib_core/R$drawable;->shape_level15:I

    aput v2, v1, v4

    sget v2, Lcom/guochao/lib_core/R$mipmap;->lv15:I

    aput v2, v1, v5

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/guochao/faceshow/aaspring/views/LevelView;->d:[[I

    return-void
.end method

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
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->c:I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/LevelView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->c:I

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/LevelView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 p3, 0x1

    .line 8
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->c:I

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/LevelView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(I)I
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 v0, 0x95

    if-le p1, v0, :cond_1

    return v0

    :cond_1
    return p1
.end method


# virtual methods
.method b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 3
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 4
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 5
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 8
    invoke-static {p1, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 9
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->a:Landroid/widget/ImageView;

    .line 10
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->b:Landroid/widget/TextView;

    .line 11
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    const/16 v2, 0x8c

    if-eqz p2, :cond_1

    .line 13
    sget-object v3, Lcom/guochao/lib_core/R$styleable;->LevelView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 14
    sget p2, Lcom/guochao/lib_core/R$styleable;->LevelView_level:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    move v2, p2

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    :cond_1
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(I)V

    .line 18
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/guochao/lib_base/R$color;->white:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->b:Landroid/widget/TextView;

    const/4 p2, 0x2

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, p2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->b:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42100000    # 36.0f

    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41700000    # 15.0f

    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public c(IZ)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x95L
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/views/LevelView;->d(IZZ)V

    return-void
.end method

.method public d(IZZ)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x95L
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LevelView;->a(I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->c:I

    .line 2
    div-int/lit8 p1, p1, 0xa

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->a:Landroid/widget/ImageView;

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/LevelView;->d:[[I

    aget-object v2, v1, p1

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lv."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->b:Landroid/widget/TextView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    aget-object p1, v1, p1

    const/4 p2, 0x0

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p2}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/guochao/lib_base/R$color;->white:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->b:Landroid/widget/TextView;

    const/4 p2, 0x2

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11
    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/views/LevelView;->f(Z)V

    return-void
.end method

.method public e(IZZ)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x95L
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LevelView;->a(I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->c:I

    .line 2
    div-int/lit8 p1, p1, 0xa

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->a:Landroid/widget/ImageView;

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/LevelView;->d:[[I

    aget-object v2, v1, p1

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->a:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lv."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->b:Landroid/widget/TextView;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    aget-object p1, v1, p1

    const/4 p2, 0x0

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p2, v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, p2, p1, v0, p1}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/guochao/lib_base/R$color;->white:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->b:Landroid/widget/TextView;

    const/4 p2, 0x2

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12
    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/views/LevelView;->f(Z)V

    return-void
.end method

.method public f(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2
    sget v2, Lcom/guochao/lib_core/R$id;->arrow_indicator:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 5
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    .line 6
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x40400000    # 3.0f

    .line 7
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 8
    invoke-virtual {v1, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :cond_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    sget p1, Lcom/guochao/lib_core/R$drawable;->bitmap_level_arrow_new:I

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return-void

    :cond_2
    const/16 p1, 0x8

    .line 11
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42100000    # 36.0f

    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/views/LevelView$SavedState;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/views/LevelView$SavedState;

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/LevelView$SavedState;->a(Lcom/guochao/faceshow/aaspring/views/LevelView$SavedState;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(I)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/LevelView$SavedState;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/views/LevelView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LevelView;->c:I

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/views/LevelView$SavedState;->b(Lcom/guochao/faceshow/aaspring/views/LevelView$SavedState;I)I

    return-object v1
.end method

.method public setLevel(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x95L
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/LevelView;->c(IZ)V

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 3

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LevelView"

    invoke-static {v1, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(I)V

    :goto_0
    return-void
.end method
