.class public Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;,
        Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$d;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:J

.field private d:I

.field private e:F

.field private f:Z

.field private g:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$d;

.field private h:Z

.field private i:J

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Runnable;

.field private l:Landroid/view/animation/Interpolator;

.field private m:Landroid/graphics/Paint;

.field private n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 2
    iput p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->a:F

    const-wide/16 v0, 0x2bc

    .line 3
    iput-wide v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->c:J

    const/16 p1, 0x12c

    .line 4
    iput p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->d:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->e:F

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->j:Ljava/util/List;

    .line 7
    new-instance p1, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$a;

    invoke-direct {p1, p0}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$a;-><init>(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->k:Ljava/lang/Runnable;

    .line 8
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->l:Landroid/view/animation/Interpolator;

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->m:Landroid/graphics/Paint;

    .line 10
    new-instance p1, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$b;

    invoke-direct {p1, p0}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$b;-><init>(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->n:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 12
    iput p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->a:F

    const-wide/16 p1, 0x2bc

    .line 13
    iput-wide p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->c:J

    const/16 p1, 0x12c

    .line 14
    iput p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->d:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    iput p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->e:F

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->j:Ljava/util/List;

    .line 17
    new-instance p1, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$a;

    invoke-direct {p1, p0}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$a;-><init>(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->k:Ljava/lang/Runnable;

    .line 18
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->l:Landroid/view/animation/Interpolator;

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->m:Landroid/graphics/Paint;

    .line 20
    new-instance p1, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$b;

    invoke-direct {p1, p0}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$b;-><init>(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->n:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->h:Z

    return p0
.end method

.method static synthetic b(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->k()V

    return-void
.end method

.method static synthetic d(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->d:I

    return p0
.end method

.method static synthetic f(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)F
    .locals 0

    iget p0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->a:F

    return p0
.end method

.method static synthetic h(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)F
    .locals 0

    iget p0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->b:F

    return p0
.end method

.method static synthetic i(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->l:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic j(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->c:J

    return-wide v0
.end method

.method private k()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->i:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->d:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v2, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;

    invoke-direct {v2, p0}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;-><init>(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;)V

    .line 4
    iget-object v3, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    iput-wide v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->i:J

    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->n:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-boolean v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->h:Z

    .line 4
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->k:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->h:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->n:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->n:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->c()F

    move-result v2

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->a(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->c:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$c;->b()I

    move-result v1

    .line 7
    iget-object v3, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->m:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const-wide/16 v0, 0xa

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    iget-boolean p3, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->f:Z

    if-nez p3, :cond_0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->e:F

    mul-float p1, p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->b:F

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDelayedStopListener(Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->g:Lcom/guochao/component/voiceliveroom/view/VoiceWaveView$d;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->c:J

    return-void
.end method

.method public setInitialRadius(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->a:F

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->l:Landroid/view/animation/Interpolator;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->l:Landroid/view/animation/Interpolator;

    :cond_0
    return-void
.end method

.method public setMaxRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->b:F

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->f:Z

    return-void
.end method

.method public setMaxRadiusRate(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->e:F

    return-void
.end method

.method public setSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->d:I

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/view/VoiceWaveView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
