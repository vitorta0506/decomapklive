.class public Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lla/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;,
        Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;
    }
.end annotation


# instance fields
.field private A:F

.field private B:Z

.field private B3:I

.field private C:Z

.field private C4:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;

.field private D:F

.field private D4:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;

.field private E:F

.field private E4:Landroid/graphics/Matrix;

.field private F:Landroid/graphics/Path;

.field private F4:Landroid/view/View$OnTouchListener;

.field private G:F

.field private G4:Landroid/view/View$OnClickListener;

.field private H:Landroid/graphics/Paint;

.field private H4:I

.field private I:Landroid/graphics/Paint;

.field private J:I

.field private K:Z

.field private L:F

.field private M:I

.field private N:Lla/h;

.field private O:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lla/e;",
            "Lla/h;",
            ">;"
        }
    .end annotation
.end field

.field private P:Landroid/graphics/RectF;

.field private Q:Landroid/graphics/PointF;

.field private R:Z

.field private V1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lla/c;",
            ">;"
        }
    .end annotation
.end field

.field private V2:Landroid/graphics/Bitmap;

.field private V3:Landroid/graphics/Canvas;

.field private final a:Landroid/graphics/Bitmap;

.field private a1:Z

.field private a2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lla/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z

.field private c:Lcom/guochao/faceshow/aaspring/views/doodle/j;

.field private d:F

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:Lla/b;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lla/c;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lla/c;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lla/e;

.field private y:Lla/g;

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;ZLcom/guochao/faceshow/aaspring/views/doodle/j;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;ZLcom/guochao/faceshow/aaspring/views/doodle/j;Lla/h;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;ZLcom/guochao/faceshow/aaspring/views/doodle/j;Lla/h;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->i:F

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l:F

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m:F

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->n:F

    const/high16 v2, 0x3e800000    # 0.25f

    .line 6
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->o:F

    const/high16 v2, 0x40a00000    # 5.0f

    .line 7
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->p:F

    const/4 v2, 0x0

    .line 8
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->t:Z

    .line 9
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->u:Z

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->w:Ljava/util/List;

    .line 12
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->B:Z

    const/4 v3, 0x1

    .line 13
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->C:Z

    .line 14
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->G:F

    .line 15
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->K:Z

    .line 16
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->L:F

    .line 17
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->M:I

    .line 18
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O:Ljava/util/Map;

    .line 19
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->P:Landroid/graphics/RectF;

    .line 20
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    .line 21
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->R:Z

    .line 22
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a1:Z

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->V1:Ljava/util/List;

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a2:Ljava/util/List;

    .line 25
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->B3:I

    .line 26
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->E4:Landroid/graphics/Matrix;

    .line 27
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H4:I

    .line 28
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 29
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    .line 30
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_0

    const-string v1, "DoodleView"

    const-string v2, "the bitmap may contain alpha, which will cause eraser don\'t work well."

    .line 31
    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c:Lcom/guochao/faceshow/aaspring/views/doodle/j;

    if-eqz p4, :cond_2

    if-eqz p2, :cond_1

    .line 33
    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->b:Z

    .line 34
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l:F

    .line 35
    new-instance p2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    const/high16 p3, -0x10000

    invoke-direct {p2, p3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;-><init>(I)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->r:Lla/b;

    .line 36
    sget-object p2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->BRUSH:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->x:Lla/e;

    .line 37
    sget-object p2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;->HAND_WRITE:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleShape;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->y:Lla/g;

    .line 38
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H:Landroid/graphics/Paint;

    const p3, -0x55000001

    .line 39
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 43
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 44
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 p4, 0x41200000    # 10.0f

    invoke-static {p3, p4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I:Landroid/graphics/Paint;

    .line 46
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 49
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 50
    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N:Lla/h;

    .line 51
    new-instance p2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;-><init>(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->C4:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;

    .line 52
    new-instance p2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;-><init>(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->D4:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;

    .line 53
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->C4:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Bitmap is null!!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "IDoodleListener is null!!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private E(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->z()V

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->V1:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lla/c;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->V3:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Lla/c;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private F()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->t(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->b:Z

    return p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->E(Z)V

    return-void
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Lla/h;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N:Lla/h;

    return-object p0
.end method

.method static synthetic i(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->V1:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->t:Z

    return p0
.end method

.method static synthetic k(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Lla/g;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->y:Lla/g;

    return-object p0
.end method

.method static synthetic l(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->V2:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic m(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic n(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    return-object p0
.end method

.method static synthetic o(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->M:I

    return p0
.end method

.method static synthetic p(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a1:Z

    return p1
.end method

.method static synthetic q(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Lcom/guochao/faceshow/aaspring/views/doodle/j;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c:Lcom/guochao/faceshow/aaspring/views/doodle/j;

    return-object p0
.end method

.method static synthetic r(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->s:Z

    return p0
.end method

.method static synthetic s(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Lla/e;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->x:Lla/e;

    return-object p0
.end method

.method private t(I)V
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->B3:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->B3:I

    return-void
.end method

.method private u(Lla/c;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Lla/c;->k()Lla/a;

    move-result-object v0

    if-ne p0, v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-interface {p1}, Lla/c;->getPen()Lla/e;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->MOSAIC:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    invoke-interface {p1}, Lla/c;->e()V

    .line 7
    invoke-interface {p1}, Lla/c;->getPen()Lla/e;

    move-result-object v0

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a2:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a2:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x4

    .line 10
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->t(I)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "the item has been added"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "the object Doodle is illegal"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "item is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private v(I)V
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->B3:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->B3:I

    return-void
.end method

.method private w(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lla/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lla/c;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->V3:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Lla/c;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private x(I)Z
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->B3:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private y()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v0, v2

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v1, v1

    mul-float v4, v1, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    div-float v0, v2, v3

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->d:F

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->f:I

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->d:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->e:I

    goto :goto_0

    :cond_0
    div-float v1, v2, v4

    .line 8
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->d:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 9
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->f:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->e:I

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->f:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->g:F

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->e:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->h:F

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->E:F

    .line 14
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->F:Landroid/graphics/Path;

    .line 15
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->E:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->E:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->J:I

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->d:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->L:F

    .line 18
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->u:Z

    if-nez v1, :cond_1

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v0, v0, v1

    .line 19
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->q:F

    :cond_1
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->n:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m:F

    .line 21
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l:F

    .line 22
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->z()V

    .line 23
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->F()V

    return-void
.end method

.method private z()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->V2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->V2:Landroid/graphics/Bitmap;

    .line 5
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->V2:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->V3:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->R:Z

    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->b:Z

    return v0
.end method

.method public C(Lla/c;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->V1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->t(I)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void
.end method

.method public D(Lla/c;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->V1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->t(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->d(Lla/c;)V

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void
.end method

.method public G(Lla/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->V1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lla/c;

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a2:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lla/c;

    .line 8
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H4:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H4:I

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->V1:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v0}, Lla/c;->l()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->t(I)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void
.end method

.method public H(FFF)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->o:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->p:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->J(F)F

    move-result v0

    .line 4
    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->K(F)F

    move-result v1

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l:F

    .line 6
    invoke-virtual {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->L(FF)F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m:F

    .line 7
    invoke-virtual {p0, v1, p3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->M(FF)F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->n:F

    const/16 p1, 0x8

    .line 8
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->t(I)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void
.end method

.method public I(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m:F

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->n:F

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->F()V

    return-void
.end method

.method public final J(F)F
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllScale()F

    move-result v0

    mul-float p1, p1, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllTranX()F

    move-result v0

    add-float/2addr p1, v0

    return p1
.end method

.method public final K(F)F
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllScale()F

    move-result v0

    mul-float p1, p1, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllTranY()F

    move-result v0

    add-float/2addr p1, v0

    return p1
.end method

.method public final L(FF)F
    .locals 1

    neg-float p2, p2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllScale()F

    move-result v0

    mul-float p2, p2, v0

    add-float/2addr p2, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->g:F

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->j:F

    sub-float/2addr p2, p1

    return p2
.end method

.method public final M(FF)F
    .locals 1

    neg-float p2, p2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllScale()F

    move-result v0

    mul-float p2, p2, v0

    add-float/2addr p2, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->h:F

    sub-float/2addr p2, p1

    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->k:F

    sub-float/2addr p2, p1

    return p2
.end method

.method public final N(F)F
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllTranX()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllScale()F

    move-result v0

    div-float/2addr p1, v0

    return p1
.end method

.method public final O(F)F
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllTranY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllScale()F

    move-result v0

    div-float/2addr p1, v0

    return p1
.end method

.method public P()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q(I)Z

    move-result v0

    return v0
.end method

.method public Q(I)Z
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_4

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lla/c;

    .line 4
    invoke-interface {v2}, Lla/c;->getPosition()I

    move-result v4

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H4:I

    sub-int/2addr v5, v3

    if-ne v4, v5, :cond_0

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lla/c;

    .line 7
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->G(Lla/c;)V

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->w:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    return v0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->t:Z

    return v0
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a1:Z

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;Z)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->C4:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->C4:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->V1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lla/c;

    .line 8
    invoke-interface {v2}, Lla/c;->l()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 9
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->t(I)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void
.end method

.method public d(Lla/c;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H4:I

    invoke-interface {p1, v0}, Lla/c;->b(I)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H4:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H4:I

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->u(Lla/c;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->w:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->x(I)Z

    move-result v1

    const-string v2, "DoodleView"

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    const-string v1, "FLAG_RESET_BACKGROUND"

    .line 3
    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v(I)V

    .line 5
    invoke-direct {p0, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v(I)V

    .line 6
    invoke-direct {p0, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v(I)V

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->E(Z)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->D4:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->x(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FLAG_DRAW_PENDINGS_TO_BACKGROUND"

    .line 11
    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v(I)V

    .line 13
    invoke-direct {p0, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a2:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->w(Ljava/util/List;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->D4:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 17
    :cond_2
    invoke-direct {p0, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->x(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "FLAG_REFRESH_BACKGROUND"

    .line 18
    invoke-static {v2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v(I)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->D4:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$b;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 21
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 22
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 24
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->K:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->B:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->G:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 26
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getUnitSize()F

    move-result v0

    .line 27
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->E:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_4

    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->E:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->D:F

    goto :goto_1

    .line 29
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->E:F

    mul-float v5, v5, v4

    sub-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 30
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->D:F

    .line 31
    :cond_5
    :goto_1
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->J:I

    int-to-float v2, v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->D:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->F:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/high16 v2, -0x1000000

    .line 33
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 35
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->G:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l:F

    div-float/2addr v2, v3

    .line 36
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 37
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->z:F

    neg-float v3, v3

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->E:F

    div-float v6, v5, v2

    add-float/2addr v3, v6

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A:F

    neg-float v6, v6

    div-float/2addr v5, v2

    add-float/2addr v6, v5

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 39
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllTranX()F

    move-result v2

    .line 40
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllTranY()F

    move-result v3

    .line 41
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllScale()F

    move-result v2

    .line 43
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 44
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I:Landroid/graphics/Paint;

    div-float/2addr v0, v4

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->q:F

    div-float v3, v2, v4

    sub-float/2addr v3, v0

    sub-float v0, v3, v0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v3, v5

    if-gtz v6, :cond_6

    const/high16 v0, 0x3f000000    # 0.5f

    .line 46
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 47
    :cond_6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I:Landroid/graphics/Paint;

    const/high16 v6, -0x56000000

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->z:F

    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v2

    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A:F

    invoke-virtual {p0, v7}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v7

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I:Landroid/graphics/Paint;

    invoke-static {p1, v2, v7, v3, v8}, Lma/a;->b(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 49
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I:Landroid/graphics/Paint;

    const v7, -0x55000001

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->z:F

    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N(F)F

    move-result v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A:F

    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->O(F)F

    move-result v3

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I:Landroid/graphics/Paint;

    invoke-static {p1, v2, v3, v0, v8}, Lma/a;->b(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 52
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->E:F

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H:Landroid/graphics/Paint;

    invoke-static {p1, v0, v0, v0, v2}, Lma/a;->b(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 55
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->J:I

    int-to-float v0, v0

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->D:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 56
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->E:F

    div-float/2addr v0, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 57
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    div-float v8, v5, v0

    neg-float v0, v8

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v8

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const v0, -0x77777778

    .line 59
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 61
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l:F

    .line 62
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m:F

    .line 63
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->n:F

    .line 64
    iput v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l:F

    .line 65
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->n:F

    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m:F

    .line 66
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 67
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l:F

    .line 68
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m:F

    .line 69
    iput v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->n:F

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 71
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lma/a;->c(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 74
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v4, v0, v8

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->I:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    move v2, v8

    invoke-static/range {v0 .. v5}, Lma/a;->c(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->F4:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->z:F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->A:F

    .line 5
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->E4:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->E4:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->M:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->E4:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->C4:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v0
.end method

.method public getAllItem()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lla/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllRedoItem()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lla/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->w:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllScale()F
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->d:F

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->i:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l:F

    mul-float v0, v0, v1

    return v0
.end method

.method public getAllTranX()F
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->g:F

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->j:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getAllTranY()F
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->h:F

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->k:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->n:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCenterHeight()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->e:I

    return v0
.end method

.method public getCenterScale()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->d:F

    return v0
.end method

.method public getCenterWidth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->f:I

    return v0
.end method

.method public getCentreTranX()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->g:F

    return v0
.end method

.method public getCentreTranY()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->h:F

    return v0
.end method

.method public getColor()Lla/b;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->r:Lla/b;

    return-object v0
.end method

.method public getDefaultTouchDetector()Lla/h;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N:Lla/h;

    return-object v0
.end method

.method public getDoodleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDoodleBound()Landroid/graphics/RectF;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->f:I

    int-to-float v1, v1

    iget v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->i:F

    mul-float v1, v1, v2

    iget v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l:F

    mul-float v1, v1, v3

    .line 2
    iget v4, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->e:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    mul-float v4, v4, v3

    .line 3
    iget v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->M:I

    rem-int/lit8 v3, v2, 0x5a

    const/4 v5, 0x0

    if-nez v3, :cond_4

    if-nez v2, :cond_0

    .line 4
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->J(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 5
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->K(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_0
    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1

    .line 6
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->J(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 7
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->K(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    const/16 v3, 0xb4

    if-ne v2, v3, :cond_2

    .line 8
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->J(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 9
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->K(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_2
    const/16 v3, 0x10e

    if-ne v2, v3, :cond_3

    .line 10
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->J(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 11
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->K(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    :goto_0
    move/from16 v24, v4

    move v4, v1

    move/from16 v1, v24

    .line 12
    :cond_3
    :goto_1
    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    iget v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->M:I

    int-to-float v6, v2

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v9, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v10, v2

    invoke-static/range {v5 .. v10}, Lma/a;->d(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    .line 13
    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->P:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v5

    add-float/2addr v4, v3

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_2

    .line 14
    :cond_4
    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->J(F)F

    move-result v8

    .line 15
    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->K(F)F

    move-result v9

    .line 16
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->J(F)F

    move-result v12

    .line 17
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->K(F)F

    move-result v13

    .line 18
    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->J(F)F

    move-result v16

    .line 19
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->K(F)F

    move-result v17

    .line 20
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->J(F)F

    move-result v20

    .line 21
    invoke-virtual {v0, v5}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->K(F)F

    move-result v21

    .line 22
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->M:I

    int-to-float v7, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v10, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v11, v1

    invoke-static/range {v6 .. v11}, Lma/a;->d(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    .line 23
    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    iget v1, v10, Landroid/graphics/PointF;->x:F

    .line 24
    iget v2, v10, Landroid/graphics/PointF;->y:F

    .line 25
    iget v3, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->M:I

    int-to-float v11, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v14, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v15, v3

    invoke-static/range {v10 .. v15}, Lma/a;->d(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    .line 26
    iget-object v14, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    iget v3, v14, Landroid/graphics/PointF;->x:F

    .line 27
    iget v4, v14, Landroid/graphics/PointF;->y:F

    .line 28
    iget v5, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->M:I

    int-to-float v15, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move/from16 v18, v5

    move/from16 v19, v6

    invoke-static/range {v14 .. v19}, Lma/a;->d(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    .line 29
    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 30
    iget v7, v5, Landroid/graphics/PointF;->y:F

    .line 31
    iget v8, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->M:I

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    move-object/from16 v18, v5

    move/from16 v19, v8

    move/from16 v22, v9

    move/from16 v23, v10

    invoke-static/range {v18 .. v23}, Lma/a;->d(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    .line 32
    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->Q:Landroid/graphics/PointF;

    iget v8, v5, Landroid/graphics/PointF;->x:F

    .line 33
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 34
    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->P:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v9, Landroid/graphics/RectF;->left:F

    .line 35
    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->P:Landroid/graphics/RectF;

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v9, Landroid/graphics/RectF;->top:F

    .line 36
    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->P:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v9, Landroid/graphics/RectF;->right:F

    .line 37
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->P:Landroid/graphics/RectF;

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 38
    :goto_2
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->P:Landroid/graphics/RectF;

    return-object v1
.end method

.method public getDoodleMaxScale()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->p:F

    return v0
.end method

.method public getDoodleMinScale()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->o:F

    return v0
.end method

.method public getDoodleRotation()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->M:I

    return v0
.end method

.method public getDoodleScale()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l:F

    return v0
.end method

.method public getDoodleTranslationX()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m:F

    return v0
.end method

.method public getDoodleTranslationY()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->n:F

    return v0
.end method

.method public getEditItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lla/c;

    .line 2
    instance-of v2, v2, Lcom/guochao/faceshow/aaspring/views/doodle/e;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPen()Lla/e;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->x:Lla/e;

    return-object v0
.end method

.method public getRedoItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRotateScale()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->i:F

    return v0
.end method

.method public getRotateTranX()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->j:F

    return v0
.end method

.method public getRotateTranY()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->k:F

    return v0
.end method

.method public getShape()Lla/g;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->y:Lla/g;

    return-object v0
.end method

.method public getSize()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->q:F

    return v0
.end method

.method public getUnitSize()F
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->L:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDoodleSizeUnit"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->L:F

    return v0
.end method

.method public getZoomerScale()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->G:F

    return v0
.end method

.method public invalidate()V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->y()V

    .line 3
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->u:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c:Lcom/guochao/faceshow/aaspring/views/doodle/j;

    invoke-interface {p1, p0}, Lcom/guochao/faceshow/aaspring/views/doodle/j;->a(Lla/a;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->u:Z

    :cond_0
    return-void
.end method

.method public setColor(Lla/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->r:Lla/b;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void
.end method

.method public setDefaultTouchDetector(Lla/h;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->N:Lla/h;

    return-void
.end method

.method public setDoodleMaxScale(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->p:F

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H(FFF)V

    return-void
.end method

.method public setDoodleMinScale(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->o:F

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->H(FFF)V

    return-void
.end method

.method public setDoodleRotation(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->M:I

    .line 2
    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->M:I

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->M:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getDoodleBound()Landroid/graphics/RectF;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllScale()F

    move-result v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float p1, p1

    mul-float p1, p1, v1

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    cmpl-float v2, v0, p1

    if-lez v2, :cond_1

    div-float p1, v1, v0

    goto :goto_0

    :cond_1
    div-float p1, v1, p1

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    .line 11
    iput v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->n:F

    iput v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m:F

    .line 12
    iput v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->k:F

    iput v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->j:F

    .line 13
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l:F

    .line 14
    iput v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->i:F

    int-to-float v0, v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->J(F)F

    move-result v1

    int-to-float v2, v2

    .line 16
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->K(F)F

    move-result v3

    .line 17
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->d:F

    div-float/2addr p1, v4

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->i:F

    .line 18
    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->L(FF)F

    move-result p1

    .line 19
    invoke-virtual {p0, v3, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->M(FF)F

    move-result v0

    .line 20
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->j:F

    .line 21
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->k:F

    .line 22
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->F()V

    return-void
.end method

.method public setDoodleTranslationX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m:F

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->F()V

    return-void
.end method

.method public setDoodleTranslationY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->n:F

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->F()V

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->R:Z

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void
.end method

.method public setIsDrawableOutside(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->t:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->G4:Landroid/view/View$OnClickListener;

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->F4:Landroid/view/View$OnTouchListener;

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setPen(Lla/e;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->x:Lla/e;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Pen can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScrollingDoodle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->K:Z

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void
.end method

.method public setShape(Lla/g;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->y:Lla/g;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Shape can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowOriginal(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->s:Z

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->F()V

    return-void
.end method

.method public setSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->q:F

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void
.end method

.method public setZoomerScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->G:F

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void
.end method
