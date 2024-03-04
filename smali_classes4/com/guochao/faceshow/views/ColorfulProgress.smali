.class public Lcom/guochao/faceshow/views/ColorfulProgress;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/ColorfulProgress$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/RectF;

.field private e:F

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/views/ColorfulProgress$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:F

.field private h:Lcom/guochao/faceshow/views/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/ColorfulProgress;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/views/ColorfulProgress;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/views/ColorfulProgress;->c()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/views/ColorfulProgress$a;

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->b:Landroid/graphics/Paint;

    iget v3, v1, Lcom/guochao/faceshow/views/ColorfulProgress$a;->a:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->d:Landroid/graphics/RectF;

    iget v3, v1, Lcom/guochao/faceshow/views/ColorfulProgress$a;->b:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    .line 4
    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 5
    iget v3, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->e:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 6
    invoke-static {v1}, Lcom/guochao/faceshow/views/ColorfulProgress$a;->a(Lcom/guochao/faceshow/views/ColorfulProgress$a;)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v1, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->g:F

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/guochao/faceshow/views/ColorfulProgress$a;->a(Lcom/guochao/faceshow/views/ColorfulProgress$a;)F

    move-result v1

    :goto_1
    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->d:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    .line 8
    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 9
    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->a:Landroid/graphics/Paint;

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->b:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->c:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->d:Landroid/graphics/RectF;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06038c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMarkListSize()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/ColorfulProgress;->b(Landroid/graphics/Canvas;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/ColorfulProgress;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setCurPosition(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->g:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVideoProgressController(Lcom/guochao/faceshow/views/s;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/ColorfulProgress;->h:Lcom/guochao/faceshow/views/s;

    return-void
.end method
