.class public Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# instance fields
.field private mEGLCore:Lcom/tencent/liteav/videobase/b/e;

.field private mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

.field private final mTAG:Ljava/lang/String;

.field private final mThrottlers:Lcom/tencent/liteav/base/b/b;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VirtualCameraPixelFrameCreator_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mTAG:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    .line 4
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->initGLComponents(Ljava/lang/Object;)V

    return-void
.end method

.method private initGLComponents(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mTAG:Ljava/lang/String;

    const-string v1, "initGLComponents"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    const/16 v1, 0x80

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1, v2, v1, v1}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V

    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mTAG:Ljava/lang/String;

    const-string v1, "initializeEGL failed."

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    :cond_0
    return-void
.end method

.method private makeCurrent()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 3
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v4, "makeCurrent"

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mTAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "EGLCore make current failed."

    invoke-static {v3, v4, v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private release()V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->uninitGLComponents()V

    return-void
.end method

.method private uninitGLComponents()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "uninitGLComponents"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->makeCurrent()Z

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    .line 6
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    .line 8
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    return-void
.end method


# virtual methods
.method public createPixelFrame(Landroid/graphics/Bitmap;II)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 6
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->makeCurrent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "Bitmap.createBitmap"

    const-string/jumbo v1, "x"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bitmap is null. input size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v4, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    div-int/2addr p2, v3

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4
    div-int/2addr p3, v3

    mul-int/lit8 p3, p3, 0x2

    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 p3, 0xff

    .line 7
    invoke-virtual {p2, p3, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    rem-int/2addr p2, v3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    rem-int/2addr p2, v3

    if-ne p2, p3, :cond_3

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "original bitmap:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {p2, v0, v4, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    div-int/2addr p2, v3

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {p2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 15
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 17
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p3, 0x0

    .line 18
    invoke-virtual {v0, p1, p3, p3, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p1, p2

    .line 19
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string p3, "createPixelFrame"

    invoke-virtual {p2, p3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object p2

    iget-object p3, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "createPixelFrame,bitmap:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {p2, p3, v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result p3

    invoke-static {p1, p3, v2}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    .line 24
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/videobase/frame/d;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p1

    .line 25
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    .line 26
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 27
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-object p1
.end method

.method public releasePixelFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 4
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v1, "releasePixelFrame"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->mTAG:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCameraPixelFrameCreator;->makeCurrent()Z

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method
