.class public Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;,
        Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;
    }
.end annotation


# static fields
.field private static final R:I

.field private static final a1:I


# instance fields
.field A:I

.field B:I

.field C:J

.field private D:F

.field private E:Landroid/content/Context;

.field private F:Landroid/view/GestureDetector;

.field private G:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private H:Landroid/graphics/Paint;

.field private I:Landroid/graphics/Paint;

.field private J:Landroid/graphics/Paint;

.field private K:I

.field private L:F

.field private M:Landroid/graphics/Rect;

.field private N:I

.field private O:I

.field private P:Landroid/graphics/Typeface;

.field private Q:Z

.field a:I

.field b:I

.field c:Landroid/os/Handler;

.field d:Lna/b;

.field e:Lna/a;

.field f:Ljava/util/concurrent/ScheduledExecutorService;

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;",
            ">;"
        }
    .end annotation
.end field

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:F

.field p:Z

.field q:I

.field r:I

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;",
            ">;"
        }
    .end annotation
.end field

.field y:I

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->R:I

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->a1:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->a:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->b:I

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->f:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->C:J

    const v1, 0x3f866666    # 1.05f

    .line 6
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->D:F

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->K:I

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->M:Landroid/graphics/Rect;

    .line 9
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->P:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->a:I

    const/4 v1, 0x1

    .line 13
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->b:I

    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->f:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v1, 0x0

    .line 15
    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->C:J

    const v1, 0x3f866666    # 1.05f

    .line 16
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->D:F

    .line 17
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->K:I

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->M:Landroid/graphics/Rect;

    .line 19
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->P:Landroid/graphics/Typeface;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 22
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->a:I

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->b:I

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->f:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->C:J

    const v0, 0x3f866666    # 1.05f

    .line 26
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->D:F

    .line 27
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->K:I

    .line 28
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->M:Landroid/graphics/Rect;

    .line 29
    sget-object p3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->P:Landroid/graphics/Typeface;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->b:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->c:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->b:I

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->a:I

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->b:I

    :cond_0
    return-void
.end method

.method private d(Landroid/graphics/Canvas;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->x:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;->a(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->x:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;->a(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->H:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->M:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v1, v2}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->f(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result p2

    int-to-float p2, p2

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->getDrawingY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->I:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private e(Landroid/graphics/Canvas;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->x:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;->a(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->x:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;->a(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->H:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->M:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v1, v2}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->f(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result p2

    int-to-float p2, p2

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->getDrawingY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->H:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private f(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->D:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->z:I

    iget p3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->N:I

    sub-int/2addr p2, p3

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p3

    return p2
.end method

.method private g(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->E:Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/loopView/c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/loopView/c;-><init>(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->c:Landroid/os/Handler;

    .line 3
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/loopView/b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/loopView/b;-><init>(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->F:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 5
    sget-object v0, Lcom/guochao/faceshow/R$styleable;->LoopView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p2, 0xa

    .line 6
    sget v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->R:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->h:I

    .line 7
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->h:I

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->h:I

    const/4 p2, 0x6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->o:F

    const p2, -0xcececf

    .line 9
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->m:I

    const/4 p2, 0x7

    const v0, -0x505051

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->l:I

    const p2, -0x3a3a3b

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->n:I

    const/16 p2, 0x9

    .line 12
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->Q:Z

    .line 13
    sget v2, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->a1:I

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->i:I

    const/4 v2, 0x5

    .line 14
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->w:I

    .line 15
    rem-int/2addr v2, v0

    if-nez v2, :cond_0

    .line 16
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->w:I

    :cond_0
    const/4 p2, 0x4

    .line 17
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->p:Z

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->x:Ljava/util/HashMap;

    .line 20
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->t:I

    return-void
.end method

.method private getDrawingY()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->j:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->k:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    .line 2
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->H:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->H:Landroid/graphics/Paint;

    .line 3
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->l:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->H:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->P:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->H:Landroid/graphics/Paint;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->h:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->I:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->I:Landroid/graphics/Paint;

    .line 9
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->m:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->I:Landroid/graphics/Paint;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->D:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->I:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->P:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->I:Landroid/graphics/Paint;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->i:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->J:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->J:Landroid/graphics/Paint;

    .line 16
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->n:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->J:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_2
    return-void
.end method

.method private j()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->z:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->y:I

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->z:I

    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->N:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->O:I

    .line 7
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->z:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->z:I

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->I:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->M:Landroid/graphics/Rect;

    const-string v2, "\u661f\u671f"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->M:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->k:I

    .line 10
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->y:I

    int-to-double v1, v0

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->A:I

    int-to-float v1, v1

    .line 11
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->o:F

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->w:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float v5, v5, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->j:I

    .line 12
    div-int/lit8 v5, v0, 0x2

    iput v5, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->B:I

    int-to-float v5, v0

    int-to-float v6, v1

    mul-float v6, v6, v2

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 13
    iput v5, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->q:I

    int-to-float v0, v0

    int-to-float v1, v1

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    div-float/2addr v0, v6

    float-to-int v0, v0

    .line 14
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->r:I

    .line 15
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 16
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->p:Z

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/2addr v0, v4

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->t:I

    goto :goto_0

    .line 18
    :cond_2
    iput v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->t:I

    .line 19
    :cond_3
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->t:I

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->u:I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->G:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->G:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->G:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->b(I)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, p0, v1, v3}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getSelectedItem()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->u:I

    return v0
.end method

.method protected final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->d:Lna/b;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/loopView/d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/loopView/d;-><init>(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected final k(F)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->a()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/loopView/a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/views/loopView/a;-><init>(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;F)V

    const/16 p1, 0xa

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->G:Ljava/util/concurrent/ScheduledFuture;

    const/4 p1, 0x2

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->b(I)V

    return-void
.end method

.method l(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->a()V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;->FLING:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;->DRAG:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    if-ne p1, v0, :cond_2

    .line 3
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->o:F

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->j:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    int-to-float v0, v0

    rem-float/2addr v0, p1

    add-float/2addr v0, p1

    rem-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->K:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->K:I

    goto :goto_0

    :cond_1
    neg-int p1, v0

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->K:I

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/loopView/e;

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->K:I

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/views/loopView/e;-><init>(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->G:Ljava/util/concurrent/ScheduledFuture;

    const/4 p1, 0x3

    .line 9
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->b(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_a

    .line 3
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    int-to-float v0, v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->o:F

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->j:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->v:I

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->t:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->u:I

    .line 5
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->p:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-gez v1, :cond_1

    .line 6
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->u:I

    .line 7
    :cond_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->u:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_4

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->u:I

    goto :goto_0

    :cond_2
    if-gez v1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->u:I

    .line 10
    :cond_3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->u:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_4

    .line 11
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->u:I

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->u:I

    .line 12
    :cond_4
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    int-to-float v0, v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->o:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->j:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    rem-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 13
    :goto_1
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->w:I

    if-ge v1, v3, :cond_a

    .line 14
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->u:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v1

    sub-int/2addr v4, v3

    .line 15
    iget-boolean v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->p:Z

    if-eqz v3, :cond_7

    :goto_2
    if-gez v4, :cond_5

    .line 16
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v4, v3

    goto :goto_2

    .line 17
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v4, v3, :cond_6

    .line 18
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v4, v3

    goto :goto_3

    .line 19
    :cond_6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->x:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    if-gez v4, :cond_8

    .line 20
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->x:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;

    invoke-direct {v5, p0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 21
    :cond_8
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v4, v3, :cond_9

    .line 22
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->x:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;

    invoke-direct {v5, p0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 23
    :cond_9
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->x:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$a;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 24
    :cond_a
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->Q:Z

    if-eqz v1, :cond_b

    .line 25
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->N:I

    int-to-float v3, v3

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->q:I

    int-to-float v4, v4

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->z:I

    int-to-float v5, v5

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->r:I

    int-to-float v6, v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 26
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->J:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 27
    :cond_b
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->N:I

    int-to-float v4, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->q:I

    int-to-float v5, v1

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->z:I

    int-to-float v6, v3

    int-to-float v7, v1

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->J:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 28
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->N:I

    int-to-float v4, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->r:I

    int-to-float v5, v1

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->z:I

    int-to-float v6, v3

    int-to-float v7, v1

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->J:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_5
    const/4 v1, 0x0

    .line 29
    :goto_6
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->w:I

    if-ge v1, v3, :cond_11

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->j:I

    int-to-float v3, v3

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->o:F

    mul-float v3, v3, v4

    int-to-float v4, v1

    mul-float v4, v4, v3

    int-to-float v5, v0

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v4, v6

    .line 32
    iget v8, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->A:I

    int-to-double v8, v8

    div-double/2addr v4, v8

    cmpl-double v8, v4, v6

    if-gez v8, :cond_10

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_c

    goto/16 :goto_8

    .line 33
    :cond_c
    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->B:I

    int-to-double v6, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    iget v10, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->B:I

    int-to-double v10, v10

    mul-double v8, v8, v10

    sub-double/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    iget v10, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->j:I

    int-to-double v10, v10

    mul-double v8, v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v6, v6

    const/4 v7, 0x0

    int-to-float v8, v6

    .line 34
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v7, 0x3f800000    # 1.0f

    .line 35
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 36
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->q:I

    if-gt v6, v4, :cond_d

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->j:I

    add-int/2addr v5, v6

    if-lt v5, v4, :cond_d

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->z:I

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->q:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 39
    invoke-direct {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->e(Landroid/graphics/Canvas;I)V

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 42
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->q:I

    sub-int/2addr v4, v6

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->z:I

    float-to-int v3, v3

    invoke-virtual {p1, v2, v4, v5, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 43
    invoke-direct {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->d(Landroid/graphics/Canvas;I)V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    .line 45
    :cond_d
    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->r:I

    if-gt v6, v5, :cond_e

    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->j:I

    add-int/2addr v7, v6

    if-lt v7, v5, :cond_e

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 47
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->z:I

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->r:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 48
    invoke-direct {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->d(Landroid/graphics/Canvas;I)V

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 51
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->r:I

    sub-int/2addr v4, v6

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->z:I

    float-to-int v3, v3

    invoke-virtual {p1, v2, v4, v5, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 52
    invoke-direct {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->e(Landroid/graphics/Canvas;I)V

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    :cond_e
    if-lt v6, v4, :cond_f

    .line 54
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->j:I

    add-int/2addr v4, v6

    if-gt v4, v5, :cond_f

    .line 55
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->z:I

    float-to-int v3, v3

    invoke-virtual {p1, v2, v2, v4, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 56
    invoke-direct {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->d(Landroid/graphics/Canvas;I)V

    goto :goto_7

    .line 57
    :cond_f
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->z:I

    float-to-int v3, v3

    invoke-virtual {p1, v2, v2, v4, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 58
    invoke-direct {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->e(Landroid/graphics/Canvas;I)V

    .line 59
    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_9

    .line 60
    :cond_10
    :goto_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 61
    :cond_11
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->b:I

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->a:I

    if-eq p1, v3, :cond_12

    .line 62
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->a:I

    .line 63
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->e:Lna/a;

    if-eqz v0, :cond_12

    .line 64
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->getSelectedItem()I

    move-result v2

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->b:I

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lna/a;->a(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;IIII)V

    .line 65
    :cond_12
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->b:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_13

    const/4 v0, 0x3

    if-ne p1, v0, :cond_14

    .line 66
    :cond_13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->e:Lna/a;

    if-eqz p1, :cond_14

    .line 67
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->getSelectedItem()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->b:I

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    invoke-interface {p1, p0, v0, v1, v2}, Lna/a;->b(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;III)V

    :cond_14
    :goto_a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->h()V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->j()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->F:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->o:F

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->j:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->B:I

    int-to-float v2, v0

    sub-float/2addr v2, p1

    int-to-float p1, v0

    div-float/2addr v2, p1

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->B:I

    int-to-double v7, p1

    mul-double v5, v5, v7

    const/high16 p1, 0x40000000    # 2.0f

    div-float p1, v1, p1

    float-to-double v7, p1

    add-double/2addr v5, v7

    float-to-double v7, v1

    div-double/2addr v5, v7

    double-to-int p1, v5

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    int-to-float v0, v0

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 7
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->w:I

    div-int/2addr v2, v4

    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float p1, p1, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->K:I

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->C:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x78

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    .line 9
    sget-object p1, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;->DRAG:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->l(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object p1, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;->CLICK:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->l(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView$ACTION;)V

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 13
    :cond_2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->L:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v0, v2

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->L:F

    .line 15
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    .line 16
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->p:Z

    if-nez p1, :cond_4

    .line 17
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->t:I

    neg-int p1, p1

    int-to-float p1, p1

    mul-float p1, p1, v1

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->t:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v1

    .line 19
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    int-to-float v2, v1

    cmpg-float v2, v2, p1

    if-gez v2, :cond_3

    float-to-int p1, p1

    .line 20
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    goto :goto_1

    :cond_3
    int-to-float p1, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    float-to-int p1, v0

    .line 21
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    .line 22
    :cond_4
    :goto_1
    invoke-direct {p0, v4}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->b(I)V

    goto :goto_2

    .line 23
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->C:J

    .line 24
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->a()V

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->L:F

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 28
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3
.end method

.method public setCenterTextColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->m:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->I:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setCenterTextSizeTextSize(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->i:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->I:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->t:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->K:I

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->b(I)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->n:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->J:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public final setInitPosition(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->t:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->t:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->j()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setItemsVisibleCount(I)V
    .locals 1

    .line 1
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->w:I

    if-eq p1, v0, :cond_1

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->w:I

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->x:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->o:F

    :cond_0
    return-void
.end method

.method public final setListener(Lna/b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->d:Lna/b;

    return-void
.end method

.method public final setOnItemScrollListener(Lna/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->e:Lna/a;

    return-void
.end method

.method public setOuterTextColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->l:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->H:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->D:F

    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->E:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->h:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->H:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->I:Landroid/graphics/Paint;

    if-eqz p1, :cond_1

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->i:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->P:Landroid/graphics/Typeface;

    return-void
.end method
