.class public final Lcom/tencent/liteav/videobase/utils/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

.field private final b:Ljava/lang/String;

.field private c:Lcom/tencent/liteav/videobase/frame/j;

.field private d:Lcom/tencent/liteav/videobase/frame/e;

.field private e:Z

.field private final f:Lcom/tencent/liteav/videobase/frame/c;

.field private g:Ljava/util/concurrent/ExecutorService;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/utils/k;->e:Z

    .line 3
    new-instance v1, Lcom/tencent/liteav/videobase/frame/c;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/frame/c;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videobase/utils/k;->f:Lcom/tencent/liteav/videobase/frame/c;

    .line 4
    iput v0, p0, Lcom/tencent/liteav/videobase/utils/k;->h:I

    .line 5
    iput v0, p0, Lcom/tencent/liteav/videobase/utils/k;->i:I

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnapshotTaker_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/k;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/k;->b:Ljava/lang/String;

    const-string/jumbo v1, "uninitialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/k;->a:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, v1}, Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;->onComplete(Landroid/graphics/Bitmap;)V

    .line 23
    iput-object v1, p0, Lcom/tencent/liteav/videobase/utils/k;->a:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/k;->d:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/tencent/liteav/videobase/utils/k;->e:Z

    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    .line 26
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/k;->d:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    .line 27
    iput-object v1, p0, Lcom/tencent/liteav/videobase/utils/k;->d:Lcom/tencent/liteav/videobase/frame/e;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/utils/k;->e:Z

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/k;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 30
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 31
    iput-object v1, p0, Lcom/tencent/liteav/videobase/utils/k;->g:Ljava/util/concurrent/ExecutorService;

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/k;->c:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v0, :cond_3

    .line 33
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 34
    iput-object v1, p0, Lcom/tencent/liteav/videobase/utils/k;->c:Lcom/tencent/liteav/videobase/frame/j;

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/k;->f:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/c;->d()V

    return-void
.end method

.method public final a(II)V
    .locals 3

    .line 12
    iget v0, p0, Lcom/tencent/liteav/videobase/utils/k;->h:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/videobase/utils/k;->i:I

    if-eq p2, v0, :cond_2

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/k;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSize width="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/k;->c:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/k;->c:Lcom/tencent/liteav/videobase/frame/j;

    .line 17
    :cond_1
    new-instance v0, Lcom/tencent/liteav/videobase/frame/j;

    invoke-direct {v0, p1, p2}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/utils/k;->c:Lcom/tencent/liteav/videobase/frame/j;

    .line 18
    iput p1, p0, Lcom/tencent/liteav/videobase/utils/k;->h:I

    .line 19
    iput p2, p0, Lcom/tencent/liteav/videobase/utils/k;->i:I

    :cond_2
    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 7

    .line 36
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/k;->a:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 37
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/videobase/utils/k;->h:I

    if-eqz v0, :cond_6

    iget v1, p0, Lcom/tencent/liteav/videobase/utils/k;->i:I

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 38
    :cond_1
    iget-object v2, p0, Lcom/tencent/liteav/videobase/utils/k;->c:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/tencent/liteav/videobase/utils/k;->d:Lcom/tencent/liteav/videobase/frame/e;

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 39
    :cond_2
    invoke-virtual {v2, v0, v1}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/tencent/liteav/videobase/utils/k;->c:Lcom/tencent/liteav/videobase/frame/j;

    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v1, p1, v2, v0}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    .line 41
    iget-object p1, p0, Lcom/tencent/liteav/videobase/utils/k;->f:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/videobase/frame/c;->a(I)V

    .line 42
    iget-object p1, p0, Lcom/tencent/liteav/videobase/utils/k;->f:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/c;->b()V

    .line 43
    iget p1, p0, Lcom/tencent/liteav/videobase/utils/k;->h:I

    iget v1, p0, Lcom/tencent/liteav/videobase/utils/k;->i:I

    iget-object v2, p0, Lcom/tencent/liteav/videobase/utils/k;->a:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 44
    iget-object v5, p0, Lcom/tencent/liteav/videobase/utils/k;->g:Ljava/util/concurrent/ExecutorService;

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    mul-int v5, p1, v1

    mul-int/lit8 v5, v5, 0x4

    .line 45
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 46
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    invoke-static {v4, v4, p1, v1, v5}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->readPixels(IIIILjava/lang/Object;)V

    .line 48
    :try_start_0
    iget-object v6, p0, Lcom/tencent/liteav/videobase/utils/k;->g:Ljava/util/concurrent/ExecutorService;

    invoke-static {v5, p1, v1, v2}, Lcom/tencent/liteav/videobase/utils/l;->a(Ljava/nio/ByteBuffer;IILcom/tencent/liteav/videobase/base/TakeSnapshotListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 49
    iget-object v1, p0, Lcom/tencent/liteav/videobase/utils/k;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mExecutorService execute exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {v2, v3}, Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;->onComplete(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 51
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/videobase/utils/k;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "snapshot listener = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mExecutorService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videobase/utils/k;->g:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_1
    iput-object v3, p0, Lcom/tencent/liteav/videobase/utils/k;->a:Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;

    const p1, 0x8d40

    .line 53
    invoke-static {p1, v4}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->bindFramebuffer(II)V

    .line 54
    iget-object p1, p0, Lcom/tencent/liteav/videobase/utils/k;->f:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/c;->c()V

    .line 55
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    return-void

    .line 56
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/tencent/liteav/videobase/utils/k;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "snapshot:  mGLTexturePool= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/videobase/utils/k;->d:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPixelFrameRender = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/utils/k;->d:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/tencent/liteav/videobase/utils/k;->b:Ljava/lang/String;

    const-string/jumbo v0, "snapshot when surface height or width is zero!"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/k;->b:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videobase/utils/k;->d:Lcom/tencent/liteav/videobase/frame/e;

    if-nez v0, :cond_0

    .line 3
    new-instance p1, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/k;->d:Lcom/tencent/liteav/videobase/frame/e;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/tencent/liteav/videobase/utils/k;->e:Z

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/k;->d:Lcom/tencent/liteav/videobase/frame/e;

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/videobase/utils/k;->g:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_1

    .line 7
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/k;->g:Ljava/util/concurrent/ExecutorService;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videobase/utils/k;->f:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/c;->a()V

    .line 9
    iget p1, p0, Lcom/tencent/liteav/videobase/utils/k;->h:I

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/tencent/liteav/videobase/utils/k;->i:I

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/tencent/liteav/videobase/utils/k;->c:Lcom/tencent/liteav/videobase/frame/j;

    if-nez p1, :cond_2

    .line 11
    new-instance p1, Lcom/tencent/liteav/videobase/frame/j;

    iget v0, p0, Lcom/tencent/liteav/videobase/utils/k;->h:I

    iget v1, p0, Lcom/tencent/liteav/videobase/utils/k;->i:I

    invoke-direct {p1, v0, v1}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/utils/k;->c:Lcom/tencent/liteav/videobase/frame/j;

    :cond_2
    return-void
.end method
