.class Lcom/guochao/faceshow/aaspring/views/TabLayout$f;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

.field private final b:Z

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroidx/appcompat/widget/AppCompatImageView;

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/views/TabLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 3
    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->b:Z

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->b()V

    return-void
.end method

.method private b()V
    .locals 6

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 3
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 8
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 9
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->x(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v3, v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 14
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->d:Landroid/widget/ImageView;

    .line 17
    sget v3, Lcom/guochao/lib_base/R$drawable;->shape_tab_badge:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x800035

    .line 19
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 22
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 24
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->e(Z)V

    .line 25
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->e:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x51

    .line 28
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->b(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->c(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 31
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->d(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 32
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->e:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->e:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 1
    sget v0, Lcom/guochao/lib_base/R$id;->icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->e:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->e:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public f(Ljava/lang/CharSequence;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c:Landroid/widget/TextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4
    instance-of v2, v0, Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 7
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v2, v5, v1, p1, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 9
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    float-to-int v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 5
    sget v2, Lcom/guochao/lib_base/R$id;->icon:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 6
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 8
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v4, 0x800035

    .line 9
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, -0x3f400000    # -6.0f

    invoke-static {v4, v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 11
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->t(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I

    move-result v4

    const/4 v5, 0x2

    const/high16 v6, -0x3f800000    # -4.0f

    if-ne v4, v5, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 14
    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    :cond_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->e:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    if-eqz p1, :cond_1

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->e(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->f(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F

    move-result v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v0, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->g(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I

    move-result v4

    if-ne v4, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->h(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->h(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->i(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I

    move-result v4

    if-ne v4, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {p1, v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->j(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->j(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->k(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->m(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->n(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->a:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->o(Lcom/guochao/faceshow/aaspring/views/TabLayout;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method
