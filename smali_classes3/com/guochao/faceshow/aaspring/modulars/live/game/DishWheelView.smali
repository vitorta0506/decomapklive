.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;
    }
.end annotation


# instance fields
.field public a:Z

.field private b:Landroid/animation/ObjectAnimator;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

.field private f:I

.field private g:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

.field private h:Ld9/g;

.field private i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

.field private j:Landroid/os/Handler;

.field private k:Landroid/text/Layout;

.field private final l:Ljava/lang/StringBuilder;

.field private m:Landroid/graphics/Paint;

.field private n:Z

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/graphics/Bitmap;

.field private q:F

.field private r:F

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->j:Landroid/os/Handler;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->l:Ljava/lang/StringBuilder;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->m:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->n:Z

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->p:Landroid/graphics/Bitmap;

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    .line 13
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->j:Landroid/os/Handler;

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->l:Ljava/lang/StringBuilder;

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->m:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->n:Z

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->p:Landroid/graphics/Bitmap;

    .line 20
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    .line 23
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->j:Landroid/os/Handler;

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->l:Ljava/lang/StringBuilder;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->m:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->n:Z

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->p:Landroid/graphics/Bitmap;

    .line 30
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->f()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->j()V

    return-void
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->u:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)Lcom/guochao/faceshow/aaspring/modulars/live/game/f;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->t:Z

    return p1
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)Ld9/g;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->h:Ld9/g;

    return-object p0
.end method

.method private f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    .line 5
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v3

    const/high16 v3, 0x45070000    # 2160.0f

    .line 6
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v0

    int-to-float v0, v5

    mul-float v0, v0, v2

    add-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    aput v0, v4, v1

    const-string v0, "rotation"

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->b:Landroid/animation/ObjectAnimator;

    .line 7
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->b:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->b:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private h(Z)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0041

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    goto/16 :goto_0

    .line 3
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f004a

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    goto/16 :goto_0

    .line 4
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0049

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0048

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0047

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0046

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 8
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0045

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 9
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0044

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 10
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0043

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 11
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0042

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    :goto_0
    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    if-lez v1, :cond_1

    .line 14
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 16
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v9

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v11

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    .line 21
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 v12, 0x40000000    # 2.0f

    if-ge v3, v4, :cond_0

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v13

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v14

    .line 24
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v4, v1

    mul-float v4, v4, v3

    .line 25
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v15, v4, v3

    .line 26
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v4, v3

    .line 27
    invoke-virtual {v7, v15, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 28
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/16 v16, 0x1

    move/from16 v17, v8

    move/from16 v8, v16

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    sub-int/2addr v13, v14

    int-to-float v3, v13

    const/high16 v4, 0x42aa0000    # 85.0f

    sub-float/2addr v3, v4

    .line 29
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v12

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 30
    iget-object v3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    if-eqz v3, :cond_0

    const v4, 0x7f0a0628

    .line 31
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {v3, v15}, Landroid/view/View;->setScaleX(F)V

    move/from16 v4, v17

    .line 33
    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    .line 34
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    sub-int/2addr v11, v9

    sub-int/2addr v11, v1

    int-to-float v4, v11

    div-float/2addr v4, v12

    float-to-int v4, v4

    sub-int/2addr v3, v10

    sub-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v1, v12

    float-to-int v1, v1

    .line 35
    iput-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->p:Landroid/graphics/Bitmap;

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    add-int/2addr v2, v4

    int-to-float v2, v2

    iput v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->q:F

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->r:F

    :cond_1
    if-eqz p1, :cond_2

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private j()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->pause()V

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 12
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 15
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;

    .line 18
    iget-object v5, v4, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;->b:Landroid/view/View;

    if-ne v5, v3, :cond_3

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->s:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const/4 v1, 0x1

    .line 20
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->h(Z)V

    .line 21
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    invoke-direct {p0, v1, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->k(Ljava/util/List;Ljava/util/List;Z)V

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_6

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 24
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->u:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;

    if-eqz v1, :cond_6

    .line 25
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;->b(ILcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V

    :cond_6
    return-void
.end method

.method private k(Ljava/util/List;Ljava/util/List;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    div-float v2, v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/high16 v5, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 4
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 5
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v10, 0x0

    cmpl-float v11, v5, v3

    if-lez v11, :cond_2

    sub-float/2addr v5, v3

    goto :goto_2

    :cond_2
    cmpg-float v11, v5, v10

    if-gez v11, :cond_3

    add-float/2addr v5, v3

    .line 6
    :cond_3
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    iget-object v12, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v12

    sub-int/2addr v11, v12

    if-eqz p3, :cond_6

    .line 7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-le v12, v11, :cond_6

    .line 8
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v11, :cond_5

    .line 9
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ge v14, v15, :cond_4

    add-int/lit8 v12, v12, -0x1

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 10
    :cond_5
    iget-object v11, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v6

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float v11, v11, v2

    add-float/2addr v11, v4

    add-float/2addr v11, v2

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    :goto_4
    const v12, 0x7f0a0528

    .line 11
    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz p3, :cond_7

    neg-float v10, v11

    :cond_7
    sub-float/2addr v10, v5

    add-float/2addr v10, v2

    invoke-virtual {v9, v10}, Landroid/view/View;->setRotation(F)V

    add-float/2addr v5, v2

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method private m()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->n:Z

    if-nez v0, :cond_1d

    iget-boolean v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->t:Z

    if-eqz v0, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->n:Z

    .line 3
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_18

    .line 4
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    .line 5
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    return-void

    .line 7
    :cond_1
    instance-of v0, v12, Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;

    if-eqz v0, :cond_2

    move-object v0, v12

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;->getIsWinner()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;->getAnchorDiamond()I

    move-result v4

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;->getDiamond()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 10
    :goto_0
    instance-of v5, v12, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;

    if-eqz v5, :cond_3

    .line 11
    move-object v0, v12

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getDiamond()I

    move-result v0

    :cond_3
    if-nez v0, :cond_6

    .line 12
    iget-object v5, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    .line 13
    instance-of v7, v6, Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;

    if-eqz v7, :cond_5

    move-object v7, v6

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;->getIsWinner()I

    move-result v8

    if-ne v8, v2, :cond_5

    .line 14
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;->getAnchorDiamond()I

    move-result v0

    .line 15
    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/LiveGameStartBean;->getDiamond()I

    move-result v4

    move v14, v0

    move v13, v4

    goto :goto_1

    .line 16
    :cond_5
    instance-of v7, v6, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;

    if-eqz v7, :cond_4

    .line 17
    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail$LiveGameRoundDetail;->getDiamond()I

    move-result v0

    :cond_6
    move v13, v0

    move v14, v4

    .line 18
    :goto_1
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->e:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->u:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 19
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->u:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;

    invoke-interface {v0, v12, v13, v14}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;->c(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;II)V

    .line 20
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 21
    :cond_7
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v4

    invoke-virtual {v4}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v4

    add-int/2addr v4, v14

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setTokenNum(I)V

    goto :goto_3

    .line 22
    :cond_8
    :goto_2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v4

    invoke-virtual {v4}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setDiamond(Ljava/lang/Integer;)V

    .line 23
    :cond_9
    :goto_3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 24
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    .line 25
    :cond_a
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v4

    invoke-virtual {v4}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v4

    add-int/2addr v4, v13

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setTokenNum(I)V

    goto :goto_5

    .line 26
    :cond_b
    :goto_4
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v4

    invoke-virtual {v4}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setDiamond(Ljava/lang/Integer;)V

    .line 27
    :cond_c
    :goto_5
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->e:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->g:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    if-nez v0, :cond_17

    .line 28
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    const-wide/16 v10, 0x1388

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->b:Landroid/view/View;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->e:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 29
    :cond_e
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->s:Z

    const v4, 0x1020002

    const v5, 0x7f0a0e4c

    if-eqz v0, :cond_f

    const v6, 0x1020002

    goto :goto_6

    :cond_f
    const v6, 0x7f0a0e4c

    .line 30
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 31
    instance-of v0, v7, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_15

    move-object v15, v7

    check-cast v15, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v15, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_10

    goto/16 :goto_9

    .line 32
    :cond_10
    :try_start_0
    const-class v0, Landroidx/fragment/app/FragmentManager;

    const-string v8, "mContainer"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 34
    move-object v8, v7

    check-cast v8, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    instance-of v8, v0, Landroidx/fragment/app/FragmentContainer;

    if-eqz v8, :cond_11

    .line 36
    check-cast v0, Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v0, v6}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_11

    return-void

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :cond_11
    invoke-virtual {v15, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_12

    const v5, 0x1020002

    goto :goto_7

    :cond_12
    move v5, v6

    .line 39
    :goto_7
    :try_start_1
    move-object v4, v7

    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->e:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 40
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v9

    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->h:Ld9/g;

    iget-object v6, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result v16

    move v6, v13

    move v7, v14

    move-object v8, v12

    move-object v10, v0

    move/from16 v11, v16

    .line 41
    invoke-static/range {v4 .. v11}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->Y1(Landroidx/fragment/app/FragmentActivity;IIILp7/h;ZLd9/g;I)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->g:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    const v5, 0x1020002

    .line 42
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->e:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 43
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v9

    iget-object v10, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->h:Ld9/g;

    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->j()I

    move-result v11

    move-object v4, v15

    move v6, v13

    move v7, v14

    move-object v8, v12

    .line 44
    invoke-static/range {v4 .. v11}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->Y1(Landroidx/fragment/app/FragmentActivity;IIILp7/h;ZLd9/g;I)Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->g:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    .line 45
    :goto_8
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->a:Landroid/view/ViewStub;

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 46
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->G:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/f;->I:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 48
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_13
    iput-boolean v2, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->t:Z

    .line 50
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->g:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$b;

    invoke-direct {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;->setOnContinueGameListener(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog$b;)V

    .line 51
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->e:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_14

    .line 52
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->j:Landroid/os/Handler;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$c;

    invoke-direct {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    :cond_14
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz v0, :cond_17

    const/4 v2, -0x1

    .line 54
    iput v2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->e:I

    goto :goto_a

    :cond_15
    :goto_9
    return-void

    :cond_16
    move-wide v4, v10

    .line 55
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->e:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-nez v0, :cond_17

    .line 56
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->j:Landroid/os/Handler;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$d;

    invoke-direct {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)V

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    :cond_17
    :goto_a
    iput-boolean v3, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->n:Z

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    return-void

    .line 59
    :cond_18
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    sub-int/2addr v0, v4

    .line 60
    iget-object v4, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v0, :cond_19

    .line 61
    iput-boolean v3, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->n:Z

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    return-void

    .line 63
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 64
    iget-object v4, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v0, :cond_1b

    .line 65
    iget-object v6, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1a

    iget-object v6, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v6, v7, :cond_1a

    add-int/lit8 v4, v4, -0x1

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_1b
    const/high16 v0, 0x43b40000    # 360.0f

    .line 66
    iget-object v5, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 67
    iget-object v5, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->b:Landroid/animation/ObjectAnimator;

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v8, v7, v3

    const/high16 v8, 0x45070000    # 2160.0f

    iget-object v9, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v2

    sub-int/2addr v9, v4

    int-to-float v4, v9

    mul-float v4, v4, v0

    add-float/2addr v4, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v0, v8

    add-float/2addr v4, v8

    add-float/2addr v4, v0

    aput v4, v7, v2

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 68
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1c

    .line 69
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->b:Landroid/animation/ObjectAnimator;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 70
    :cond_1c
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    iget-object v4, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    invoke-direct {v1, v0, v4, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->k(Ljava/util/List;Ljava/util/List;Z)V

    .line 71
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 72
    iput-boolean v3, v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->n:Z

    .line 73
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v2, "\u8f6c\u8d77\u6765\u4e86"

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 74
    :cond_1d
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    return-void

    :array_0
    .array-data 4
        0x0
        0x45124000    # 2340.0f
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->p:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->h(Z)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->p:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->q:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->r:F

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 6
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->k:Landroid/text/Layout;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->k:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v1, v3

    div-float/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->k:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->t:Z

    return v0
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->a:Z

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->g:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelWinDialog;

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->t:Z

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->p:Landroid/graphics/Bitmap;

    return-void
.end method

.method public l(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->e:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    .line 2
    iput p5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->f:I

    .line 3
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 p5, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "0"

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    .line 4
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 6
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 7
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 8
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->o:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p4, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p4, 0x1

    .line 11
    invoke-direct {p0, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->h(Z)V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 13
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d02ea

    invoke-virtual {v4, v5, p0, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 15
    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;

    invoke-direct {v5, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;-><init>(Landroid/view/View;)V

    .line 16
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp7/h;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->s:Ljava/util/List;

    invoke-virtual {v5, v4, v6}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->c(Lp7/h;Ljava/util/List;)V

    .line 17
    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$e;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;)V

    invoke-virtual {v5, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->setOnJoinListener(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder$a;)V

    .line 18
    iget-object v4, v5, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelItemHolder;->a:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eq v0, v3, :cond_4

    if-le v3, p4, :cond_4

    .line 20
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    if-eqz p2, :cond_4

    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->a:Z

    if-nez p4, :cond_4

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->k()Lcom/guochao/faceshow/aaspring/beans/LiveGameCreateResponse;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 21
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->d()V

    .line 22
    :cond_4
    invoke-direct {p0, p1, p3, p5}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->k(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->a:Z

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->m()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    sub-int v1, p4, p2

    sub-int v2, p5, p3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    int-to-float v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    div-float v6, v4, v5

    float-to-int v7, v6

    float-to-int v4, v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x43b40000    # 360.0f

    div-float v8, v9, v8

    div-float v5, v8, v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/high16 v5, 0x43340000    # 180.0f

    :cond_2
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v3, :cond_6

    .line 5
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 6
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_3

    move/from16 p4, v1

    move/from16 p3, v2

    move/from16 p5, v3

    goto :goto_2

    :cond_3
    cmpl-float v13, v5, v9

    if-lez v13, :cond_4

    sub-float/2addr v5, v9

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    cmpg-float v13, v5, v13

    if-gez v13, :cond_5

    add-float/2addr v5, v9

    .line 7
    :cond_5
    :goto_1
    div-int/lit8 v13, v1, 0x2

    div-int/lit8 v14, v7, 0x2

    sub-int/2addr v13, v14

    int-to-double v13, v13

    float-to-double v9, v6

    sub-float v15, v5, v8

    move/from16 p4, v1

    float-to-double v0, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v16, v16, v9

    add-double v13, v13, v16

    double-to-float v13, v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 8
    div-int/lit8 v14, v2, 0x2

    div-int/lit8 v16, v4, 0x2

    sub-int v14, v14, v16

    move/from16 p3, v2

    move/from16 p5, v3

    int-to-double v2, v14

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v9, v9, v0

    sub-double/2addr v2, v9

    double-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 9
    invoke-virtual {v12, v15}, Landroid/view/View;->setRotation(F)V

    add-int v1, v13, v7

    add-int v2, v0, v4

    .line 10
    invoke-virtual {v12, v13, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    add-float/2addr v5, v8

    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p3

    move/from16 v1, p4

    move/from16 v3, p5

    const/high16 v9, 0x43b40000    # 360.0f

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->h(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5
    invoke-virtual {p0, p1, p1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p2, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDishWheel(Lcom/guochao/faceshow/aaspring/modulars/live/game/f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->i:Lcom/guochao/faceshow/aaspring/modulars/live/game/f;

    return-void
.end method

.method public setListenerInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/g$h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->s:Ljava/util/List;

    return-void
.end method

.method public setLiveRoomManager(Ld9/g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->h:Ld9/g;

    return-void
.end method

.method public setOnLoseListener(Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->u:Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView$f;

    return-void
.end method

.method public setTotalUserAvatars(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/DishWheelView;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
