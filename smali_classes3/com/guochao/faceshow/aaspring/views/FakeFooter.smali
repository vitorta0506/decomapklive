.class public Lcom/guochao/faceshow/aaspring/views/FakeFooter;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lwd/f;


# instance fields
.field private a:Lwd/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Lwd/j;II)V
    .locals 1
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FakeFooter;->a:Lwd/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lwd/h;->a(Lwd/j;II)V

    :cond_0
    return-void
.end method

.method public b(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FakeFooter;->a:Lwd/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lwd/f;->b(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public c(Lwd/j;Z)I
    .locals 1
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FakeFooter;->a:Lwd/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lwd/h;->c(Lwd/j;Z)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e(Lwd/j;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 1
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FakeFooter;->a:Lwd/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lzd/f;->e(Lwd/j;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_0
    return-void
.end method

.method public g(Lwd/i;II)V
    .locals 1
    .param p1    # Lwd/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FakeFooter;->a:Lwd/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lwd/h;->g(Lwd/i;II)V

    :cond_0
    return-void
.end method

.method public getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public h(FII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FakeFooter;->a:Lwd/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lwd/h;->h(FII)V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FakeFooter;->a:Lwd/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lwd/h;->j()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k(Lwd/j;II)V
    .locals 1
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FakeFooter;->a:Lwd/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lwd/h;->k(Lwd/j;II)V

    :cond_0
    return-void
.end method

.method public o(ZFIII)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FakeFooter;->a:Lwd/f;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2
    invoke-interface/range {v0 .. v5}, Lwd/h;->o(ZFIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/4 p2, 0x5

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setDelegate(Lwd/f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/FakeFooter;->a:Lwd/f;

    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FakeFooter;->a:Lwd/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lwd/h;->setPrimaryColors([I)V

    :cond_0
    return-void
.end method
