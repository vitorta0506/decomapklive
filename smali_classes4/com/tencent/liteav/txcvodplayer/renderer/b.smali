.class public final Lcom/tencent/liteav/txcvodplayer/renderer/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->d:I

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    .line 2
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    return-void
.end method

.method public final b(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->h:I

    .line 2
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->i:I

    return-void
.end method

.method public final c(II)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->a:I

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    move v8, p2

    move p2, p1

    move p1, v8

    .line 2
    :cond_1
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    .line 3
    iget v3, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    invoke-static {v3, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v3

    .line 4
    iget v4, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->d:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    goto/16 :goto_5

    .line 5
    :cond_2
    iget v4, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    if-lez v4, :cond_19

    iget v4, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    if-lez v4, :cond_19

    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_10

    if-ne v3, v4, :cond_10

    int-to-float v0, p1

    int-to-float v3, p2

    div-float/2addr v0, v3

    .line 10
    iget v3, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->d:I

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-eq v3, v5, :cond_6

    if-eq v3, v4, :cond_3

    .line 11
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 12
    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->h:I

    if-lez v2, :cond_9

    iget v6, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->i:I

    if-lez v6, :cond_9

    int-to-float v2, v2

    mul-float v1, v1, v2

    int-to-float v2, v6

    div-float/2addr v1, v2

    goto :goto_2

    :cond_3
    const v6, 0x3faaaaab

    .line 13
    iget v7, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->a:I

    if-eq v7, v2, :cond_5

    if-ne v7, v1, :cond_4

    goto :goto_0

    :cond_4
    const v1, 0x3faaaaab

    goto :goto_2

    :cond_5
    :goto_0
    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_2

    :cond_6
    const v6, 0x3fe38e39

    .line 14
    iget v7, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->a:I

    if-eq v7, v2, :cond_8

    if-ne v7, v1, :cond_7

    goto :goto_1

    :cond_7
    const v1, 0x3fe38e39

    goto :goto_2

    :cond_8
    :goto_1
    const/high16 v1, 0x3f100000    # 0.5625f

    :cond_9
    :goto_2
    const/4 v2, 0x1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    if-eqz v3, :cond_e

    if-eq v3, v2, :cond_c

    if-eq v3, v5, :cond_e

    if-eq v3, v4, :cond_e

    if-eqz v0, :cond_b

    .line 15
    iget p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int p1, p1

    .line 16
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    return-void

    .line 17
    :cond_b
    iget p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    int-to-float p1, p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 18
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    return-void

    :cond_c
    if-eqz v0, :cond_d

    .line 19
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    int-to-float p1, p2

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 20
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    return-void

    .line 21
    :cond_d
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int p1, p1

    .line 22
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    return-void

    :cond_e
    if-eqz v0, :cond_f

    .line 23
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int p1, p1

    .line 24
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    return-void

    .line 25
    :cond_f
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    int-to-float p1, p2

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 26
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    return-void

    :cond_10
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_12

    if-ne v3, v1, :cond_12

    .line 27
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_11

    mul-int v0, v0, p2

    .line 28
    div-int p1, v0, v2

    goto :goto_5

    :cond_11
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_1a

    mul-int v2, v2, p1

    .line 29
    div-int p2, v2, v0

    goto :goto_5

    :cond_12
    if-ne v0, v1, :cond_14

    .line 30
    iget v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    mul-int v0, v0, p1

    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    div-int/2addr v0, v1

    if-ne v3, v4, :cond_13

    if-le v0, p2, :cond_13

    goto :goto_5

    :cond_13
    move p2, v0

    goto :goto_5

    :cond_14
    if-ne v3, v1, :cond_16

    .line 31
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    mul-int v1, v1, p2

    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    div-int/2addr v1, v2

    if-ne v0, v4, :cond_15

    if-le v1, p1, :cond_15

    goto :goto_5

    :cond_15
    move p1, v1

    goto :goto_5

    .line 32
    :cond_16
    iget v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->f:I

    .line 33
    iget v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->g:I

    if-ne v3, v4, :cond_17

    if-le v2, p2, :cond_17

    mul-int v3, p2, v1

    .line 34
    div-int/2addr v3, v2

    goto :goto_4

    :cond_17
    move v3, v1

    move p2, v2

    :goto_4
    if-ne v0, v4, :cond_18

    if-le v3, p1, :cond_18

    mul-int v2, v2, p1

    .line 35
    div-int p2, v2, v1

    goto :goto_5

    :cond_18
    move p1, v3

    goto :goto_5

    :cond_19
    move p1, v0

    move p2, v3

    .line 36
    :cond_1a
    :goto_5
    iput p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    .line 37
    iput p2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    return-void
.end method
