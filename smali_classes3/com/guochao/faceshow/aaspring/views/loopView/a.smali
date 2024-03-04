.class final Lcom/guochao/faceshow/aaspring/views/loopView/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:F

.field final b:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

.field c:F


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->b:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->a:F

    const/high16 p1, 0x4f000000

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->c:F

    const/4 v1, 0x0

    const/high16 v2, 0x4f000000

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x44fa0000    # 2000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 4
    iput v2, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->c:F

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3b060000    # -2000.0f

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->c:F

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->a:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->c:F

    .line 7
    :cond_2
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    const-string v0, "gy"

    const-string v1, "WHAT_SMOOTH_SCROLL_INERTIA"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->b:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->c:Landroid/os/Handler;

    const/16 v1, 0x7d1

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->b:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->a()V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->b:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->c:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 12
    :cond_3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->c:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v0, v0, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->b:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    .line 14
    iget v4, v3, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    sub-int/2addr v4, v0

    iput v4, v3, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    .line 15
    iget-boolean v0, v3, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->p:Z

    if-nez v0, :cond_5

    .line 16
    iget v0, v3, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->o:F

    iget v5, v3, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->j:I

    int-to-float v5, v5

    mul-float v0, v0, v5

    .line 17
    iget v5, v3, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->t:I

    neg-int v6, v5

    int-to-float v6, v6

    mul-float v6, v6, v0

    float-to-int v6, v6

    if-gt v4, v6, :cond_4

    const/high16 v4, 0x42200000    # 40.0f

    .line 18
    iput v4, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->c:F

    neg-int v4, v5

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-int v0, v4

    .line 19
    iput v0, v3, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    goto :goto_1

    .line 20
    :cond_4
    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->b:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget v6, v5, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->t:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    if-lt v4, v3, :cond_5

    .line 21
    iget-object v3, v5, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->b:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget v4, v4, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->t:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v0, v3

    iput v0, v5, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->s:I

    const/high16 v0, -0x3de00000    # -40.0f

    .line 22
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->c:F

    .line 23
    :cond_5
    :goto_1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->c:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    add-float/2addr v0, v2

    .line 24
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->c:F

    goto :goto_2

    :cond_6
    sub-float/2addr v0, v2

    .line 25
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->c:F

    .line 26
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/loopView/a;->b:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->c:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
