.class public Lyd/a;
.super Lyd/b;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lyd/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lyd/a;->b:I

    .line 3
    iput v0, p0, Lyd/a;->c:I

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lyd/a;->d:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 4
    iget v2, p0, Lyd/a;->b:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lyd/a;->c:I

    if-eq v2, v0, :cond_1

    :cond_0
    mul-int/lit8 v2, v1, 0x1e

    .line 5
    div-int/lit16 v2, v2, 0xe1

    .line 6
    iget-object v3, p0, Lyd/a;->d:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    int-to-double v3, v2

    const-wide v5, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v7, v7, v3

    double-to-float v7, v7

    .line 8
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    double-to-float v3, v3

    .line 9
    iget-object v4, p0, Lyd/a;->d:Landroid/graphics/Path;

    div-int/lit8 v5, v1, 0x2

    int-to-float v6, v5

    int-to-float v8, v0

    invoke-virtual {v4, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 10
    iget-object v4, p0, Lyd/a;->d:Landroid/graphics/Path;

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    iget-object v4, p0, Lyd/a;->d:Landroid/graphics/Path;

    sub-float v10, v6, v7

    invoke-virtual {v4, v7, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    iget-object v4, p0, Lyd/a;->d:Landroid/graphics/Path;

    div-int/lit8 v2, v2, 0x2

    sub-int v11, v5, v2

    int-to-float v11, v11

    sub-float/2addr v8, v3

    int-to-float v3, v2

    sub-float/2addr v8, v3

    invoke-virtual {v4, v11, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget-object v3, p0, Lyd/a;->d:Landroid/graphics/Path;

    invoke-virtual {v3, v11, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget-object v3, p0, Lyd/a;->d:Landroid/graphics/Path;

    add-int/2addr v5, v2

    int-to-float v2, v5

    invoke-virtual {v3, v2, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    iget-object v3, p0, Lyd/a;->d:Landroid/graphics/Path;

    invoke-virtual {v3, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    iget-object v2, p0, Lyd/a;->d:Landroid/graphics/Path;

    int-to-float v3, v1

    sub-float v4, v3, v7

    invoke-virtual {v2, v4, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    iget-object v2, p0, Lyd/a;->d:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 18
    iget-object v2, p0, Lyd/a;->d:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 19
    iput v1, p0, Lyd/a;->b:I

    .line 20
    iput v0, p0, Lyd/a;->c:I

    .line 21
    :cond_1
    iget-object v0, p0, Lyd/a;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lyd/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
