.class public Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lkc/b;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo p1, "\u4e0b\u62c9\u5237\u65b0"

    .line 4
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->d:Ljava/lang/String;

    const-string/jumbo p1, "\u91ca\u653e\u5237\u65b0"

    .line 5
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->e:Ljava/lang/String;

    const-string/jumbo p1, "\u6b63\u5728\u5237\u65b0"

    .line 6
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->f:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/guochao/twink/R$layout;->view_sinaheader:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcom/guochao/twink/R$id;->iv_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    .line 3
    sget v1, Lcom/guochao/twink/R$id;->tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->c:Landroid/widget/TextView;

    .line 4
    sget v1, Lcom/guochao/twink/R$id;->iv_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->b:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->b:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public b(FFF)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    mul-float p1, p1, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x43340000    # 180.0f

    mul-float p1, p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 3
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public c(FFF)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    mul-float p1, p1, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x43340000    # 180.0f

    mul-float p1, p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onFinish(Lkc/c;)V
    .locals 0

    invoke-interface {p1}, Lkc/c;->a()V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setArrowResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setPullDownStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->d:Ljava/lang/String;

    return-void
.end method

.method public setRefreshingStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->f:Ljava/lang/String;

    return-void
.end method

.method public setReleaseRefreshStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->e:Ljava/lang/String;

    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
