.class public Lcom/guochao/faceshow/aaspring/views/UgcFooter;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lwd/f;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/View;

.field c:Landroid/graphics/drawable/AnimationDrawable;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->r(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->r(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->r(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private r(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/guochao/lib_core/R$layout;->layout_loadmore_footer:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p2, v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42040000    # 33.0f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 3
    sget p1, Lcom/guochao/lib_core/R$id;->loading:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->a:Landroid/widget/ImageView;

    .line 4
    sget p1, Lcom/guochao/lib_core/R$id;->load_done:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->b:Landroid/view/View;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->c:Landroid/graphics/drawable/AnimationDrawable;

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method private s()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->e:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(Lwd/j;II)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public b(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c(Lwd/j;Z)I
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->a:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->b:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return p2
.end method

.method public e(Lwd/j;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 0
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
    sget-object p1, Lcom/guochao/faceshow/aaspring/views/UgcFooter$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->d:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->e:Z

    if-nez p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->s()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->d:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->e:Z

    if-nez p1, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->s()V

    goto :goto_0

    .line 7
    :cond_3
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->e:Z

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->b:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public g(Lwd/i;II)V
    .locals 0
    .param p1    # Lwd/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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
    .locals 0

    return-void
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k(Lwd/j;II)V
    .locals 0
    .param p1    # Lwd/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public o(ZFIII)V
    .locals 0

    return-void
.end method

.method public setLoading(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 0

    return-void
.end method

.method public t(ZZ)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->d:Z

    .line 2
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->e:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    :goto_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->d:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->s()V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->b:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->a:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method
