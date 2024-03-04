.class public abstract Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lk1/a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/gzuliyujiang/wheelview/widget/WheelView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/AttributeSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->i()[I

    move-result-object v0

    sget v1, Lcom/github/gzuliyujiang/wheelpicker/R$attr;->WheelStyle:I

    sget v2, Lcom/github/gzuliyujiang/wheelpicker/R$style;->WheelDefault:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->f(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->i()[I

    move-result-object v0

    sget v1, Lcom/github/gzuliyujiang/wheelpicker/R$style;->WheelDefault:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->f(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 15
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->b:Landroid/util/AttributeSet;

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->h()I

    move-result p2

    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-virtual {p0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->g(Landroid/content/Context;)V

    .line 5
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->j()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 7
    invoke-virtual {p2, p0}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setOnWheelChangedListener(Lk1/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/github/gzuliyujiang/wheelview/widget/WheelView;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/github/gzuliyujiang/wheelview/widget/WheelView;I)V
    .locals 0

    return-void
.end method

.method public c(Lcom/github/gzuliyujiang/wheelview/widget/WheelView;I)V
    .locals 0

    return-void
.end method

.method protected f(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected g(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected abstract h()I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end method

.method protected abstract i()[I
    .annotation build Landroidx/annotation/StyleableRes;
    .end annotation
.end method

.method protected abstract j()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/gzuliyujiang/wheelview/widget/WheelView;",
            ">;"
        }
    .end annotation
.end method

.method public setAtmosphericEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setAtmosphericEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurtainColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setCurtainColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurtainEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setCurtainEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurvedEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setCurvedEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurvedMaxAngle(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setCurvedMaxAngle(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCyclicEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setCyclicEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDefaultItemPosition(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setDefaultPosition(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 3
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setIndicatorColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIndicatorEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setIndicatorEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIndicatorSize(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setIndicatorSize(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemSpace(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setItemSpace(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaxWidthText(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 3
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setMaxWidthText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSameWidthEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setSameWidthEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setSelectedTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStyle(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->b:Landroid/util/AttributeSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->b:Landroid/util/AttributeSet;

    invoke-virtual {p0}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->i()[I

    move-result-object v2

    sget v3, Lcom/github/gzuliyujiang/wheelpicker/R$attr;->WheelStyle:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->f(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Please use "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTextAlign(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setTextAlign(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setTextSize(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVisibleItemCount(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/gzuliyujiang/wheelpicker/widget/BaseWheelLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;

    .line 2
    invoke-virtual {v1, p1}, Lcom/github/gzuliyujiang/wheelview/widget/WheelView;->setVisibleItemCount(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
