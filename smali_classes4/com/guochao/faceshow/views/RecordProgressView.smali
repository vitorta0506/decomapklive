.class public Lcom/guochao/faceshow/views/RecordProgressView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/RecordProgressView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Landroid/os/Handler;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/views/RecordProgressView$b;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/guochao/faceshow/views/RecordProgressView$b;

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->h:Z

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->i:Z

    .line 4
    new-instance p1, Lcom/guochao/faceshow/views/RecordProgressView$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/views/RecordProgressView$a;-><init>(Lcom/guochao/faceshow/views/RecordProgressView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->q:Ljava/lang/Runnable;

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/views/RecordProgressView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->h:Z

    .line 8
    iput-boolean p1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->i:Z

    .line 9
    new-instance p1, Lcom/guochao/faceshow/views/RecordProgressView$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/views/RecordProgressView$a;-><init>(Lcom/guochao/faceshow/views/RecordProgressView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->q:Ljava/lang/Runnable;

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/views/RecordProgressView;->h()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->h:Z

    .line 13
    iput-boolean p1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->i:Z

    .line 14
    new-instance p1, Lcom/guochao/faceshow/views/RecordProgressView$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/views/RecordProgressView$a;-><init>(Lcom/guochao/faceshow/views/RecordProgressView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->q:Ljava/lang/Runnable;

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/views/RecordProgressView;->h()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/views/RecordProgressView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->h:Z

    return p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/views/RecordProgressView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/guochao/faceshow/views/RecordProgressView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->q:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/views/RecordProgressView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->j:Landroid/os/Handler;

    return-object p0
.end method

.method private h()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->a:Landroid/graphics/Paint;

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->b:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->b:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06038c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->d:I

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f060093

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->e:I

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f060094

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->f:I

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->g:I

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Lcom/guochao/faceshow/views/RecordProgressView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/views/RecordProgressView$b;-><init>(Lcom/guochao/faceshow/views/RecordProgressView;Lcom/guochao/faceshow/views/RecordProgressView$a;)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->l:Lcom/guochao/faceshow/views/RecordProgressView$b;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->m:Z

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->j:Landroid/os/Handler;

    .line 24
    invoke-direct {p0}, Lcom/guochao/faceshow/views/RecordProgressView;->k()V

    return-void
.end method

.method private k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->q:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public e()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->i:Z

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->p:I

    iget-object v2, p0, Lcom/guochao/faceshow/views/RecordProgressView;->l:Lcom/guochao/faceshow/views/RecordProgressView$b;

    iget v3, v2, Lcom/guochao/faceshow/views/RecordProgressView$b;->a:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->p:I

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/guochao/faceshow/views/RecordProgressView$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/views/RecordProgressView$b;-><init>(Lcom/guochao/faceshow/views/RecordProgressView;Lcom/guochao/faceshow/views/RecordProgressView$a;)V

    const/4 v3, 0x3

    .line 5
    iput v3, v1, Lcom/guochao/faceshow/views/RecordProgressView$b;->b:I

    .line 6
    iput v0, v1, Lcom/guochao/faceshow/views/RecordProgressView$b;->a:I

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v0, Lcom/guochao/faceshow/views/RecordProgressView$b;

    invoke-direct {v0, p0, v2}, Lcom/guochao/faceshow/views/RecordProgressView$b;-><init>(Lcom/guochao/faceshow/views/RecordProgressView;Lcom/guochao/faceshow/views/RecordProgressView$a;)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->l:Lcom/guochao/faceshow/views/RecordProgressView$b;

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/views/RecordProgressView;->k()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 3
    iget-object v3, p0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/views/RecordProgressView$b;

    .line 4
    iput v1, v3, Lcom/guochao/faceshow/views/RecordProgressView$b;->b:I

    .line 5
    iput-boolean v2, p0, Lcom/guochao/faceshow/views/RecordProgressView;->m:Z

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/views/RecordProgressView$b;

    .line 8
    iget v3, p0, Lcom/guochao/faceshow/views/RecordProgressView;->p:I

    iget v2, v2, Lcom/guochao/faceshow/views/RecordProgressView$b;->a:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/guochao/faceshow/views/RecordProgressView;->p:I

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/RecordProgressView$b;

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->p:I

    iget v0, v0, Lcom/guochao/faceshow/views/RecordProgressView$b;->a:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->p:I

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iput-object v1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->j:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/RecordProgressView$b;

    .line 3
    iput v1, v0, Lcom/guochao/faceshow/views/RecordProgressView$b;->b:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->m:Z

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x3

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v9, 0x43b40000    # 360.0f

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/views/RecordProgressView$b;

    .line 3
    iget v11, v6, Lcom/guochao/faceshow/views/RecordProgressView$b;->a:I

    add-int/2addr v11, v4

    int-to-float v11, v11

    iget v12, v0, Lcom/guochao/faceshow/views/RecordProgressView;->n:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    mul-float v11, v11, v9

    .line 4
    iget v12, v6, Lcom/guochao/faceshow/views/RecordProgressView$b;->b:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_2

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    if-eq v12, v7, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-object v7, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    div-float v13, v7, v10

    iget-object v7, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    div-float v14, v7, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v9, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v9

    div-float/2addr v9, v10

    sub-float v15, v7, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v9, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v9

    div-float/2addr v9, v10

    sub-float v16, v7, v9

    sub-float/2addr v5, v8

    sub-float v17, v5, v10

    const/high16 v18, 0x40000000    # 2.0f

    const/16 v19, 0x0

    iget-object v5, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v20, v5

    invoke-virtual/range {v12 .. v20}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 6
    :cond_1
    iget-object v7, v0, Lcom/guochao/faceshow/views/RecordProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    div-float v13, v7, v10

    iget-object v7, v0, Lcom/guochao/faceshow/views/RecordProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    div-float v14, v7, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v12, v0, Lcom/guochao/faceshow/views/RecordProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v12

    div-float/2addr v12, v10

    sub-float v15, v7, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v12, v0, Lcom/guochao/faceshow/views/RecordProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v12

    div-float/2addr v12, v10

    sub-float v16, v7, v12

    sub-float v17, v5, v8

    int-to-float v5, v4

    iget v7, v0, Lcom/guochao/faceshow/views/RecordProgressView;->n:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    mul-float v5, v5, v9

    sub-float v18, v11, v5

    const/16 v19, 0x0

    iget-object v5, v0, Lcom/guochao/faceshow/views/RecordProgressView;->b:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v20, v5

    invoke-virtual/range {v12 .. v20}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v5, v0, Lcom/guochao/faceshow/views/RecordProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    div-float v13, v5, v10

    iget-object v5, v0, Lcom/guochao/faceshow/views/RecordProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    div-float v14, v5, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, v0, Lcom/guochao/faceshow/views/RecordProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    div-float/2addr v7, v10

    sub-float v15, v5, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v7, v0, Lcom/guochao/faceshow/views/RecordProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    div-float/2addr v7, v10

    sub-float v16, v5, v7

    const/high16 v17, -0x3d4c0000    # -90.0f

    const/16 v19, 0x0

    iget-object v5, v0, Lcom/guochao/faceshow/views/RecordProgressView;->a:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v18, v11

    move-object/from16 v20, v5

    invoke-virtual/range {v12 .. v20}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 8
    :goto_1
    iget v5, v6, Lcom/guochao/faceshow/views/RecordProgressView$b;->a:I

    add-int/2addr v4, v5

    move v5, v11

    goto/16 :goto_0

    .line 9
    :cond_3
    iget-object v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->l:Lcom/guochao/faceshow/views/RecordProgressView$b;

    if-eqz v1, :cond_4

    iget v1, v1, Lcom/guochao/faceshow/views/RecordProgressView$b;->a:I

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float v12, v1, v10

    iget-object v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float v13, v1, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v6, v0, Lcom/guochao/faceshow/views/RecordProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    div-float/2addr v6, v10

    sub-float v14, v1, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v6, v0, Lcom/guochao/faceshow/views/RecordProgressView;->a:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    div-float/2addr v6, v10

    sub-float v15, v1, v6

    const/high16 v16, -0x3d4c0000    # -90.0f

    iget-object v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->l:Lcom/guochao/faceshow/views/RecordProgressView$b;

    iget v1, v1, Lcom/guochao/faceshow/views/RecordProgressView$b;->a:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v6, v0, Lcom/guochao/faceshow/views/RecordProgressView;->n:I

    int-to-float v6, v6

    div-float/2addr v1, v6

    mul-float v17, v1, v9

    const/16 v18, 0x0

    iget-object v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->a:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v19, v1

    invoke-virtual/range {v11 .. v19}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 11
    iget-object v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->l:Lcom/guochao/faceshow/views/RecordProgressView$b;

    iget v1, v1, Lcom/guochao/faceshow/views/RecordProgressView$b;->a:I

    int-to-float v1, v1

    iget v6, v0, Lcom/guochao/faceshow/views/RecordProgressView;->n:I

    int-to-float v6, v6

    div-float/2addr v1, v6

    mul-float v1, v1, v9

    add-float/2addr v5, v1

    .line 12
    :cond_4
    iget-object v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->l:Lcom/guochao/faceshow/views/RecordProgressView$b;

    iget v1, v1, Lcom/guochao/faceshow/views/RecordProgressView$b;->a:I

    add-int/2addr v4, v1

    iget v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->o:I

    if-ge v4, v1, :cond_5

    .line 13
    iget-object v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float v12, v1, v10

    iget-object v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float v13, v1, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v14, v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v15, v1, v4

    iget v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->o:I

    int-to-float v1, v1

    iget v4, v0, Lcom/guochao/faceshow/views/RecordProgressView;->n:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    mul-float v1, v1, v9

    sub-float v16, v1, v8

    const/high16 v17, 0x40000000    # 2.0f

    const/16 v18, 0x0

    iget-object v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v19, v1

    invoke-virtual/range {v11 .. v19}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 14
    :cond_5
    iget-boolean v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->h:Z

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->i:Z

    if-eqz v1, :cond_7

    .line 15
    :cond_6
    iget-object v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float v12, v1, v10

    iget-object v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float v13, v1, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v14, v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v10

    sub-float v15, v1, v4

    sub-float v16, v5, v8

    const/high16 v17, 0x40000000    # 2.0f

    const/16 v18, 0x0

    iget-object v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v19, v1

    invoke-virtual/range {v11 .. v19}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 16
    :cond_7
    iget-object v1, v0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/views/RecordProgressView$b;

    .line 17
    iget v5, v4, Lcom/guochao/faceshow/views/RecordProgressView$b;->a:I

    add-int/2addr v5, v3

    int-to-float v5, v5

    iget v6, v0, Lcom/guochao/faceshow/views/RecordProgressView;->n:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v5, v5, v9

    .line 18
    iget v6, v4, Lcom/guochao/faceshow/views/RecordProgressView$b;->b:I

    if-eq v6, v7, :cond_8

    goto :goto_3

    .line 19
    :cond_8
    iget-object v6, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    div-float v12, v6, v10

    iget-object v6, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    div-float v13, v6, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v11, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v11

    div-float/2addr v11, v10

    sub-float v14, v6, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v11, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v11

    div-float/2addr v11, v10

    sub-float v15, v6, v11

    sub-float/2addr v2, v8

    sub-float v16, v2, v10

    const/high16 v17, 0x40000000    # 2.0f

    const/16 v18, 0x0

    iget-object v2, v0, Lcom/guochao/faceshow/views/RecordProgressView;->c:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v19, v2

    invoke-virtual/range {v11 .. v19}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 20
    :goto_3
    iget v2, v4, Lcom/guochao/faceshow/views/RecordProgressView$b;->a:I

    add-int/2addr v3, v2

    move v2, v5

    goto :goto_2

    :cond_9
    return-void
.end method

.method public setMaxDuration(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->n:I

    return-void
.end method

.method public setMinDuration(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->o:I

    return-void
.end method

.method public setProgress(I)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->i:Z

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/RecordProgressView;->l()V

    .line 3
    iget-boolean v1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->m:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/views/RecordProgressView$b;

    .line 5
    iget v3, v2, Lcom/guochao/faceshow/views/RecordProgressView$b;->b:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 6
    iput v0, v2, Lcom/guochao/faceshow/views/RecordProgressView$b;->b:I

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->m:Z

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/views/RecordProgressView;->l:Lcom/guochao/faceshow/views/RecordProgressView$b;

    iput v0, v1, Lcom/guochao/faceshow/views/RecordProgressView$b;->b:I

    .line 9
    iget v0, p0, Lcom/guochao/faceshow/views/RecordProgressView;->p:I

    sub-int/2addr p1, v0

    iput p1, v1, Lcom/guochao/faceshow/views/RecordProgressView$b;->a:I

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
