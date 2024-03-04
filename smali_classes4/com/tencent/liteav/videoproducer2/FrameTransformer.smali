.class public Lcom/tencent/liteav/videoproducer2/FrameTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/videobase/c$a;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameTransformer"


# instance fields
.field private mEGLCore:Lcom/tencent/liteav/videobase/b/e;

.field private mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

.field private mHeight:I

.field private mIsHorizontalMirror:Z

.field private mIsVerticalMirror:Z

.field private mNativeHandler:J

.field private final mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

.field private final mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field private mPixelFrameRender:Lcom/tencent/liteav/videobase/frame/j;

.field private mRenderRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private final mThrottlers:Lcom/tencent/liteav/base/b/b;

.field private mVideoFrameConverter:Lcom/tencent/liteav/videobase/videobase/c;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mWidth:I

    .line 5
    iput v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mHeight:I

    .line 6
    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mRenderRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 7
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mIsHorizontalMirror:Z

    .line 8
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mIsVerticalMirror:Z

    .line 9
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 10
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    .line 11
    iput-wide p3, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mNativeHandler:J

    return-void
.end method

.method private applyRenderParams(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->getRenderRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mRenderRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isRenderMirrorHorizontal()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mIsHorizontalMirror:Z

    .line 4
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->isRenderMirrorVertical()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mIsVerticalMirror:Z

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v0

    .line 6
    iget v0, v0, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    .line 7
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mRenderRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 8
    iget v1, v1, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    add-int/2addr v0, v1

    .line 9
    rem-int/lit16 v0, v0, 0x168

    .line 10
    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 11
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mIsHorizontalMirror:Z

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    .line 13
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mIsVerticalMirror:Z

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mRenderRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->b:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v0, v1, :cond_4

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->swapWidthHeight()V

    :cond_4
    return-void
.end method

.method private destroyTransformer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mVideoFrameConverter:Lcom/tencent/liteav/videobase/videobase/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, p0}, Lcom/tencent/liteav/videobase/videobase/c;->a(ILcom/tencent/liteav/videobase/videobase/c$a;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mVideoFrameConverter:Lcom/tencent/liteav/videobase/videobase/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/c;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mVideoFrameConverter:Lcom/tencent/liteav/videobase/videobase/c;

    :cond_0
    return-void
.end method

.method private initTransformer()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mVideoFrameConverter:Lcom/tencent/liteav/videobase/videobase/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v1, Lcom/tencent/liteav/videobase/videobase/c;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/videobase/c;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mVideoFrameConverter:Lcom/tencent/liteav/videobase/videobase/c;

    .line 3
    new-instance v2, Lcom/tencent/liteav/videobase/videobase/a;

    iget v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mWidth:I

    iget v3, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mHeight:I

    invoke-direct {v2, v0, v3}, Lcom/tencent/liteav/videobase/videobase/a;-><init>(II)V

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/liteav/videobase/videobase/c;->a(Lcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ILcom/tencent/liteav/videobase/videobase/c$a;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mVideoFrameConverter:Lcom/tencent/liteav/videobase/videobase/c;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/videobase/c;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    :cond_0
    return-void
.end method

.method private initializeEGL(IILjava/lang/Object;)V
    .locals 8

    const-string v0, "FrameTransformer"

    .line 1
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    :try_start_0
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v5, "initGL"

    invoke-virtual {v4, v5}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v4

    const-string v5, "egl init %d*%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v0, v5, v6}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v4, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v4}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v4, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    .line 4
    invoke-virtual {v4, p3, v1, p1, p2}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V

    .line 5
    iget-object p3, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 6
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v5, "initError"

    invoke-virtual {v4, v5}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v2

    const-string p3, "egl initialize failed."

    invoke-static {v4, v0, p3, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    .line 8
    :goto_0
    iget-object p3, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-eqz p3, :cond_2

    .line 9
    iget-object p3, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mPixelFrameRender:Lcom/tencent/liteav/videobase/frame/j;

    if-nez p3, :cond_1

    .line 10
    new-instance p3, Lcom/tencent/liteav/videobase/frame/j;

    invoke-direct {p3, p1, p2}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mPixelFrameRender:Lcom/tencent/liteav/videobase/frame/j;

    .line 11
    :cond_1
    new-instance p1, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    .line 12
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->initTransformer()V

    :cond_2
    return-void
.end method

.method private isNeedRecreateEGL(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z
    .locals 2
    .param p1    # Lcom/tencent/liteav/videobase/frame/PixelFrame;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mWidth:I

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mHeight:I

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    .line 5
    iget-object v0, v0, Lcom/tencent/liteav/videobase/b/e;->b:Ljava/lang/Object;

    .line 6
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private native nativeOnFrameConverted(JLcom/tencent/liteav/videobase/frame/PixelFrame;)V
.end method

.method private uninitializedEGL()V
    .locals 5

    const-string v0, "FrameTransformer"

    .line 1
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v4, "make"

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "uninitializedEGL makeCurrent error "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v3, "uninitGL"

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "egl uninitializedEGL"

    invoke-static {v1, v0, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mPixelFrameRender:Lcom/tencent/liteav/videobase/frame/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 7
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mPixelFrameRender:Lcom/tencent/liteav/videobase/frame/j;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->a()V

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    .line 11
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->destroyTransformer()V

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    .line 14
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    return-void
.end method


# virtual methods
.method public onFrameConverted(ILcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->nativeOnFrameConverted(JLcom/tencent/liteav/videobase/frame/PixelFrame;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 5

    const-string v0, "FrameTransformer"

    const-string v1, "release"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mNativeHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 3
    :cond_0
    iput-wide v2, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mNativeHandler:J

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->uninitializedEGL()V

    return-void
.end method

.method public renderFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->applyRenderParams(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->isNeedRecreateEGL(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget p1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mWidth:I

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v1

    if-ne p1, v1, :cond_0

    iget p1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mHeight:I

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mWidth:I

    .line 6
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mHeight:I

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->uninitializedEGL()V

    .line 8
    iget p1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mWidth:I

    iget v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mHeight:I

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->initializeEGL(IILjava/lang/Object;)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-nez p1, :cond_3

    return-void

    .line 10
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v2, "make"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "customRenderFrame makeCurrent error "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "FrameTransformer"

    invoke-static {v1, v3, p1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mWidth:I

    iget v2, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mHeight:I

    invoke-virtual {p1, v1, v2}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mPixelFrameRender:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v1, :cond_4

    .line 14
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v1, v0, v2, p1}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mVideoFrameConverter:Lcom/tencent/liteav/videobase/videobase/c;

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/tencent/liteav/videobase/videobase/c;->a(JLcom/tencent/liteav/videobase/frame/d;)V

    .line 17
    :cond_5
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    return-void
.end method

.method public setHorizontalMirror(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mIsHorizontalMirror:Z

    if-eq v0, p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setHorizontalMirror "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameTransformer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mIsHorizontalMirror:Z

    return-void
.end method

.method public setRenderRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mRenderRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq v0, p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setRenderRotation "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameTransformer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mRenderRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    return-void
.end method

.method public setVerticalMirror(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mIsVerticalMirror:Z

    if-eq v0, p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setVerticalMirror "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameTransformer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer2/FrameTransformer;->mIsVerticalMirror:Z

    return-void
.end method
