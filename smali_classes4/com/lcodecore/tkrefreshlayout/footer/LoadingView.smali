.class public Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lkc/a;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field c:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    .line 5
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/guochao/twink/R$layout;->loading_view:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    sget p1, Lcom/guochao/twink/R$id;->loading_more_image:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->a:Landroid/widget/ImageView;

    .line 9
    sget p1, Lcom/guochao/twink/R$id;->loading_more_text:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->b:Landroid/widget/TextView;

    .line 10
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RotateDrawable;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 11
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x7d0

    .line 12
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->c:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->c:Landroid/animation/ValueAnimator;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 15
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->c:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView$a;

    invoke-direct {p3, p0, p1}, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView$a;-><init>(Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;Landroid/graphics/drawable/RotateDrawable;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 16
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 17
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/guochao/twink/R$string;->loading_more:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public b(FFF)V
    .locals 0

    return-void
.end method

.method public c(FFF)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/guochao/twink/R$string;->loading_more:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/guochao/twink/R$string;->no_more_data:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method
