.class public Lqb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpb/f<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()F
    .locals 1

    invoke-static {p0}, Lpb/e;->b(Lpb/f;)F

    move-result v0

    return v0
.end method

.method public bridge synthetic b(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lqb/a;->g(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c()F
    .locals 1

    invoke-static {p0}, Lpb/e;->c(Lpb/f;)F

    move-result v0

    return v0
.end method

.method public synthetic d()I
    .locals 1

    invoke-static {p0}, Lpb/e;->a(Lpb/f;)I

    move-result v0

    return v0
.end method

.method public synthetic e()I
    .locals 1

    invoke-static {p0}, Lpb/e;->d(Lpb/f;)I

    move-result v0

    return v0
.end method

.method public synthetic f()I
    .locals 1

    invoke-static {p0}, Lpb/e;->e(Lpb/f;)I

    move-result v0

    return v0
.end method

.method public g(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x102000b

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 3
    invoke-virtual {p0, p1}, Lqb/a;->k(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 4
    invoke-virtual {p0, p1}, Lqb/a;->j(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    invoke-virtual {p0, p1}, Lqb/a;->l(Landroid/content/Context;)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6
    invoke-virtual {p0, p1}, Lqb/a;->i(Landroid/content/Context;)I

    move-result v1

    .line 7
    invoke-virtual {p0, p1}, Lqb/a;->n(Landroid/content/Context;)I

    move-result v2

    .line 8
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 9
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {p0, p1}, Lqb/a;->h(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-virtual {p0, p1}, Lqb/a;->m(Landroid/content/Context;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setZ(F)V

    return-object v0
.end method

.method protected h(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, -0x78000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v1, 0x1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method protected i(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method protected j(Landroid/content/Context;)I
    .locals 0

    const p1, -0x11000001

    return p1
.end method

.method protected k(Landroid/content/Context;)I
    .locals 0

    const/16 p1, 0x11

    return p1
.end method

.method protected l(Landroid/content/Context;)F
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method protected m(Landroid/content/Context;)F
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method protected n(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
