.class public final Lda/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final n:Ljava/lang/String; = "c"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lda/b;

.field private c:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

.field private d:Landroid/hardware/Camera;

.field private e:Lda/a;

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Rect;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private final m:Lda/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lda/c;->j:I

    .line 3
    iput-object p1, p0, Lda/c;->a:Landroid/content/Context;

    .line 4
    new-instance v0, Lda/b;

    invoke-direct {v0, p1}, Lda/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lda/c;->b:Lda/b;

    .line 5
    new-instance p1, Lda/e;

    invoke-direct {p1, v0}, Lda/e;-><init>(Lda/b;)V

    iput-object p1, p0, Lda/c;->m:Lda/e;

    .line 6
    iput-object p2, p0, Lda/c;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

    return-void
.end method


# virtual methods
.method public a([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lda/c;->d()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v1, p0, Lda/c;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;-><init>()V

    iput-object v1, p0, Lda/c;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

    .line 4
    :cond_1
    iget-object v1, p0, Lda/c;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/zxing/bean/ZxingConfig;->isFullScreenScan()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v8, p2

    move v9, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v0

    .line 6
    :cond_2
    iget-object v1, p0, Lda/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07032f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 7
    new-instance v11, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int v7, v2, v1

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/4 v10, 0x0

    move-object v2, v11

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v11
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lda/c;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lda/c;->d:Landroid/hardware/Camera;

    .line 4
    iput-object v0, p0, Lda/c;->f:Landroid/graphics/Rect;

    .line 5
    iput-object v0, p0, Lda/c;->g:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Landroid/graphics/Rect;
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lda/c;->f:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lda/c;->d:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lda/c;->b:Lda/b;

    invoke-virtual {v0}, Lda/b;->e()Landroid/graphics/Point;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 5
    monitor-exit p0

    return-object v1

    .line 6
    :cond_1
    :try_start_2
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double v2, v2, v4

    double-to-int v2, v2

    sub-int/2addr v1, v2

    .line 7
    div-int/lit8 v1, v1, 0x2

    .line 8
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    .line 9
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v1, v2

    add-int/2addr v2, v0

    invoke-direct {v3, v1, v0, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lda/c;->f:Landroid/graphics/Rect;

    .line 10
    sget-object v0, Lda/c;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculated framing rect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lda/c;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_2
    iget-object v0, p0, Lda/c;->f:Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Landroid/graphics/Rect;
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lda/c;->g:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lda/c;->c()Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, Lda/c;->b:Lda/b;

    invoke-virtual {v0}, Lda/b;->c()Landroid/graphics/Point;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lda/c;->b:Lda/b;

    invoke-virtual {v3}, Lda/b;->e()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v0, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int v1, v1, v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v5

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 8
    iget v1, v2, Landroid/graphics/Rect;->right:I

    mul-int v1, v1, v4

    div-int/2addr v1, v5

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 9
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int v1, v1, v0

    iget v3, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 10
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    mul-int v1, v1, v0

    div-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 11
    iput-object v2, p0, Lda/c;->g:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    .line 13
    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p0, Lda/c;->g:Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lda/c;->d:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Landroid/view/SurfaceHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lda/c;->d:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 2
    iget v0, p0, Lda/c;->j:I

    if-ltz v0, :cond_0

    .line 3
    invoke-static {v0}, Lda/d;->b(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lda/d;->a()Landroid/hardware/Camera;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iput-object v0, p0, Lda/c;->d:Landroid/hardware/Camera;

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 8
    iget-boolean p1, p0, Lda/c;->h:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lda/c;->h:Z

    .line 10
    iget-object p1, p0, Lda/c;->b:Lda/b;

    invoke-virtual {p1, v0}, Lda/b;->f(Landroid/hardware/Camera;)V

    .line 11
    iget p1, p0, Lda/c;->k:I

    if-lez p1, :cond_3

    iget v1, p0, Lda/c;->l:I

    if-lez v1, :cond_3

    .line 12
    invoke-virtual {p0, p1, v1}, Lda/c;->h(II)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lda/c;->k:I

    .line 14
    iput p1, p0, Lda/c;->l:I

    .line 15
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :goto_2
    :try_start_1
    iget-object v1, p0, Lda/c;->b:Lda/b;

    invoke-virtual {v1, v0}, Lda/b;->g(Landroid/hardware/Camera;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 18
    :catch_0
    :try_start_2
    sget-object v1, Lda/c;->n:Ljava/lang/String;

    const-string v2, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resetting to saved camera params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 20
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 21
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :try_start_3
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 23
    iget-object p1, p0, Lda/c;->b:Lda/b;

    invoke-virtual {p1, v0}, Lda/b;->g(Landroid/hardware/Camera;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 24
    :catch_1
    :try_start_4
    sget-object p1, Lda/c;->n:Ljava/lang/String;

    const-string v0, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 25
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(Landroid/os/Handler;I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lda/c;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lda/c;->i:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lda/c;->m:Lda/e;

    invoke-virtual {v1, p1, p2}, Lda/e;->a(Landroid/os/Handler;I)V

    .line 4
    iget-object p1, p0, Lda/c;->m:Lda/e;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(II)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lda/c;->h:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lda/c;->b:Lda/b;

    invoke-virtual {v0}, Lda/b;->e()Landroid/graphics/Point;

    move-result-object v0

    .line 3
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le p1, v1, :cond_0

    move p1, v1

    .line 4
    :cond_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le p2, v0, :cond_1

    move p2, v0

    :cond_1
    sub-int/2addr v1, p1

    .line 5
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, p2

    .line 6
    div-int/lit8 v0, v0, 0x5

    .line 7
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr p1, v1

    add-int/2addr p2, v0

    invoke-direct {v2, v1, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lda/c;->f:Landroid/graphics/Rect;

    .line 8
    sget-object p1, Lda/c;->n:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calculated manual framing rect: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lda/c;->f:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lda/c;->g:Landroid/graphics/Rect;

    goto :goto_0

    .line 10
    :cond_2
    iput p1, p0, Lda/c;->k:I

    .line 11
    iput p2, p0, Lda/c;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lda/c;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lda/c;->i:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lda/c;->i:Z

    .line 5
    new-instance v0, Lda/a;

    iget-object v1, p0, Lda/c;->d:Landroid/hardware/Camera;

    invoke-direct {v0, v1}, Lda/a;-><init>(Landroid/hardware/Camera;)V

    iput-object v0, p0, Lda/c;->e:Lda/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
