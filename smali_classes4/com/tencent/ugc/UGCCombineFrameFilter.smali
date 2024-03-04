.class public Lcom/tencent/ugc/UGCCombineFrameFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UGCCombineFrameFilter"


# instance fields
.field private mAlphaBlendFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

.field private mBackgroundTexture:Lcom/tencent/liteav/videobase/frame/d;

.field private mCanvasSize:Lcom/tencent/liteav/base/util/q;

.field private mCropFilter:Lcom/tencent/liteav/videobase/a/b;

.field private mCropRect:Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;

.field private mCropRectTextureCoordsBuffer:Ljava/nio/FloatBuffer;

.field private mFrameBufferForClear:Lcom/tencent/liteav/videobase/frame/c;

.field private final mNormalCubeVerticesBuffer:Ljava/nio/FloatBuffer;

.field private final mNormalTextureCoordsBuffer:Ljava/nio/FloatBuffer;

.field private mRotateScaleFilter:Lcom/tencent/ugc/UGCRotateScaleFilter;

.field private final mTexturePool:Lcom/tencent/liteav/videobase/frame/e;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mRotateScaleFilter:Lcom/tencent/ugc/UGCRotateScaleFilter;

    .line 3
    iput-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropFilter:Lcom/tencent/liteav/videobase/a/b;

    .line 4
    iput-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropRect:Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;

    .line 5
    iput-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mBackgroundTexture:Lcom/tencent/liteav/videobase/frame/d;

    .line 6
    iput-object p1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    .line 7
    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createNormalCubeVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mNormalCubeVerticesBuffer:Ljava/nio/FloatBuffer;

    .line 8
    sget-object p1, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0, v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createTextureCoordsBuffer(Lcom/tencent/liteav/videobase/utils/Rotation;ZZ)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mNormalTextureCoordsBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private clearTexture(Lcom/tencent/liteav/videobase/frame/d;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mFrameBufferForClear:Lcom/tencent/liteav/videobase/frame/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/liteav/videobase/frame/c;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mFrameBufferForClear:Lcom/tencent/liteav/videobase/frame/c;

    .line 3
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/c;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/4 v0, 0x0

    const v1, 0x8d40

    const/16 v2, 0x4100

    if-nez p1, :cond_1

    .line 5
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 6
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    return-void

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mFrameBufferForClear:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/tencent/liteav/videobase/frame/c;->a(I)V

    .line 8
    iget-object p1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mFrameBufferForClear:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/c;->b()V

    .line 9
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 10
    invoke-static {v1, v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->bindFramebuffer(II)V

    .line 11
    iget-object p1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mFrameBufferForClear:Lcom/tencent/liteav/videobase/frame/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/c;->c()V

    return-void
.end method

.method private combineFrameWithAlphaBlendFilter(Ljava/util/List;)Lcom/tencent/liteav/videobase/frame/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;",
            ">;)",
            "Lcom/tencent/liteav/videobase/frame/d;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCCombineFrameFilter;->getBackgroundTextureId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;

    .line 4
    invoke-direct {p0, v4}, Lcom/tencent/ugc/UGCCombineFrameFilter;->setAlphaBlendFilterParameter(Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;)V

    .line 5
    iget-object v4, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCanvasSize:Lcom/tencent/liteav/base/util/q;

    iget v5, v4, Lcom/tencent/liteav/base/util/q;->a:I

    iget v4, v4, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-static {v1, v1, v5, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 6
    iget-object v4, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mAlphaBlendFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/a/b;->getOutputSize()Lcom/tencent/liteav/base/util/q;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget v6, v4, Lcom/tencent/liteav/base/util/q;->a:I

    iget v4, v4, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v5, v6, v4}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mAlphaBlendFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    iget-object v6, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mNormalCubeVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mNormalTextureCoordsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v0, v4, v6, v7}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 10
    :cond_0
    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    move-object v2, v4

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private cropTexture(Lcom/tencent/liteav/videobase/frame/d;)Lcom/tencent/liteav/videobase/frame/d;
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropFilter:Lcom/tencent/liteav/videobase/a/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->getOutputSize()Lcom/tencent/liteav/base/util/q;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget v2, v0, Lcom/tencent/liteav/base/util/q;->a:I

    iget v3, v0, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v1

    .line 4
    iget v2, v0, Lcom/tencent/liteav/base/util/q;->a:I

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v2, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropFilter:Lcom/tencent/liteav/videobase/a/b;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mNormalCubeVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropRectTextureCoordsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 6
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    return-object v1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getBackgroundTextureId()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mBackgroundTexture:Lcom/tencent/liteav/videobase/frame/d;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget-object v1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCanvasSize:Lcom/tencent/liteav/base/util/q;

    iget v2, v1, Lcom/tencent/liteav/base/util/q;->a:I

    iget v1, v1, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mBackgroundTexture:Lcom/tencent/liteav/videobase/frame/d;

    .line 3
    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCCombineFrameFilter;->clearTexture(Lcom/tencent/liteav/videobase/frame/d;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mBackgroundTexture:Lcom/tencent/liteav/videobase/frame/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v0

    return v0
.end method

.method private static getCropRectTextureCoords(IILcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;)Ljava/nio/FloatBuffer;
    .locals 8

    .line 1
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants;->d:[F

    array-length v0, v0

    new-array v1, v0, [F

    .line 2
    sget-object v2, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->initTextureCoordsBuffer([FLcom/tencent/liteav/videobase/utils/Rotation;ZZ)V

    if-eqz p2, :cond_2

    .line 3
    iget v2, p2, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->x:I

    int-to-float v4, v2

    int-to-float v5, p0

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    div-float/2addr v4, v5

    sub-int/2addr p0, v2

    .line 4
    iget v2, p2, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->width:I

    sub-int/2addr p0, v2

    int-to-float p0, p0

    div-float/2addr p0, v5

    .line 5
    iget v2, p2, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->y:I

    int-to-float v5, v2

    int-to-float v7, p1

    mul-float v7, v7, v6

    div-float/2addr v5, v7

    sub-int/2addr p1, v2

    .line 6
    iget p2, p2, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->height:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    div-float/2addr p1, v7

    const/4 p2, 0x0

    .line 7
    :goto_0
    div-int/lit8 v2, v0, 0x2

    if-ge p2, v2, :cond_2

    mul-int/lit8 v2, p2, 0x2

    .line 8
    aget v6, v1, v2

    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 9
    aget v6, v1, v2

    add-float/2addr v6, v4

    aput v6, v1, v2

    goto :goto_1

    .line 10
    :cond_0
    aget v6, v1, v2

    sub-float/2addr v6, p0

    aput v6, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 11
    aget v6, v1, v2

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 12
    aget v6, v1, v2

    add-float/2addr v6, v5

    aput v6, v1, v2

    goto :goto_2

    .line 13
    :cond_1
    aget v6, v1, v2

    sub-float/2addr v6, p1

    aput v6, v1, v2

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 14
    :cond_2
    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants;->d:[F

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x4

    .line 15
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 16
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 18
    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method private initFilter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mRotateScaleFilter:Lcom/tencent/ugc/UGCRotateScaleFilter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/ugc/UGCRotateScaleFilter;

    invoke-direct {v0}, Lcom/tencent/ugc/UGCRotateScaleFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mRotateScaleFilter:Lcom/tencent/ugc/UGCRotateScaleFilter;

    .line 3
    iget-object v1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mAlphaBlendFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    invoke-direct {v0}, Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mAlphaBlendFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    .line 6
    iget-object v1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mAlphaBlendFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/beauty/b/n;->enableWatermark(Z)V

    .line 8
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mAlphaBlendFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    iget-object v1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCanvasSize:Lcom/tencent/liteav/base/util/q;

    iget v2, v1, Lcom/tencent/liteav/base/util/q;->a:I

    iget v1, v1, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/beauty/b/n;->onOutputSizeChanged(II)V

    .line 9
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropRect:Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropFilter:Lcom/tencent/liteav/videobase/a/b;

    if-nez v0, :cond_2

    .line 11
    new-instance v0, Lcom/tencent/liteav/videobase/a/b;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/a/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropFilter:Lcom/tencent/liteav/videobase/a/b;

    .line 12
    iget-object v1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropFilter:Lcom/tencent/liteav/videobase/a/b;

    iget-object v1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropRect:Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;

    iget v2, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->width:I

    iget v1, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->height:I

    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    return-void

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropFilter:Lcom/tencent/liteav/videobase/a/b;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropFilter:Lcom/tencent/liteav/videobase/a/b;

    :cond_4
    return-void
.end method

.method private processRotateScale(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;

    .line 3
    iget-object v3, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mRotateScaleFilter:Lcom/tencent/ugc/UGCRotateScaleFilter;

    if-eqz v3, :cond_1

    iget-object v4, v2, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;->transformParams:Lcom/tencent/ugc/UGCTransitionProcessor$TransformParams;

    if-nez v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget v5, v4, Lcom/tencent/ugc/UGCTransitionProcessor$TransformParams;->rotate:I

    int-to-float v5, v5

    iget v4, v4, Lcom/tencent/ugc/UGCTransitionProcessor$TransformParams;->scale:F

    invoke-virtual {v3, v5, v4}, Lcom/tencent/ugc/UGCRotateScaleFilter;->setRotateAndScale(FF)V

    .line 5
    iget-object v3, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mRotateScaleFilter:Lcom/tencent/ugc/UGCRotateScaleFilter;

    iget-object v4, v2, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;->transformParams:Lcom/tencent/ugc/UGCTransitionProcessor$TransformParams;

    iget v4, v4, Lcom/tencent/ugc/UGCTransitionProcessor$TransformParams;->alpha:F

    invoke-virtual {v3, v4}, Lcom/tencent/ugc/UGCRotateScaleFilter;->setAlpha(F)V

    .line 6
    iget-object v3, v2, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;->drawRect:Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;

    iget v4, v3, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->width:I

    iget v3, v3, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->height:I

    invoke-static {v0, v0, v4, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 7
    iget-object v3, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget-object v4, v2, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;->drawRect:Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;

    iget v5, v4, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->width:I

    iget v4, v4, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->height:I

    .line 8
    invoke-virtual {v3, v5, v4}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v3

    .line 9
    invoke-direct {p0, v3}, Lcom/tencent/ugc/UGCCombineFrameFilter;->clearTexture(Lcom/tencent/liteav/videobase/frame/d;)V

    .line 10
    iget-object v4, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mRotateScaleFilter:Lcom/tencent/ugc/UGCRotateScaleFilter;

    iget-object v5, v2, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;->drawInputFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v5}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mNormalCubeVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mNormalTextureCoordsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 11
    iget-object v4, v2, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;->drawInputFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 12
    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/liteav/videobase/frame/d;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;->drawInputFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 13
    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    .line 14
    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setAlphaBlendFilterParameter(Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;->transformParams:Lcom/tencent/ugc/UGCTransitionProcessor$TransformParams;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mAlphaBlendFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    iget v0, v0, Lcom/tencent/ugc/UGCTransitionProcessor$TransformParams;->alpha:F

    invoke-virtual {v2, v0}, Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mAlphaBlendFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    iget-object v2, p1, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;->transformParams:Lcom/tencent/ugc/UGCTransitionProcessor$TransformParams;

    iget-boolean v2, v2, Lcom/tencent/ugc/UGCTransitionProcessor$TransformParams;->isBackgroundTransparent:Z

    invoke-virtual {v0, v2}, Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;->setShowBackImageMoment(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mAlphaBlendFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mAlphaBlendFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;->setShowBackImageMoment(Z)V

    .line 6
    :goto_0
    iget-object v0, p1, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;->drawInputFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result v3

    .line 7
    iget-object p1, p1, Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;->drawRect:Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;

    iget v4, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->width:I

    .line 8
    iget v5, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->height:I

    .line 9
    iget v0, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->x:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCanvasSize:Lcom/tencent/liteav/base/util/q;

    iget v6, v2, Lcom/tencent/liteav/base/util/q;->a:I

    int-to-float v7, v6

    div-float/2addr v0, v7

    .line 10
    iget p1, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->y:I

    int-to-float p1, p1

    mul-float p1, p1, v1

    iget v2, v2, Lcom/tencent/liteav/base/util/q;->b:I

    int-to-float v2, v2

    div-float v7, p1, v2

    int-to-float p1, v4

    mul-float p1, p1, v1

    int-to-float v1, v6

    div-float v8, p1, v1

    .line 11
    iget-object v2, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mAlphaBlendFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    move v6, v0

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;->setTextureWatermark(IIIFFF)V

    return-void
.end method

.method private unInitFilter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mRotateScaleFilter:Lcom/tencent/ugc/UGCRotateScaleFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    .line 3
    iput-object v1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mRotateScaleFilter:Lcom/tencent/ugc/UGCRotateScaleFilter;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mAlphaBlendFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    .line 6
    iput-object v1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mAlphaBlendFilter:Lcom/tencent/ugc/UGCWatermarkAlphaTextureFilter;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropFilter:Lcom/tencent/liteav/videobase/a/b;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    .line 9
    iput-object v1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropFilter:Lcom/tencent/liteav/videobase/a/b;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mBackgroundTexture:Lcom/tencent/liteav/videobase/frame/d;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 12
    iput-object v1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mBackgroundTexture:Lcom/tencent/liteav/videobase/frame/d;

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mFrameBufferForClear:Lcom/tencent/liteav/videobase/frame/c;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/c;->d()V

    .line 15
    iput-object v1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mFrameBufferForClear:Lcom/tencent/liteav/videobase/frame/c;

    :cond_4
    return-void
.end method


# virtual methods
.method public combineFrame(Ljava/util/List;)Lcom/tencent/liteav/videobase/frame/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/UGCTransitionProcessor$TXCCombineFrame;",
            ">;)",
            "Lcom/tencent/liteav/videobase/frame/d;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/tencent/ugc/UGCCombineFrameFilter;->initFilter()V

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCCombineFrameFilter;->processRotateScale(Ljava/util/List;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCCombineFrameFilter;->combineFrameWithAlphaBlendFilter(Ljava/util/List;)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/tencent/ugc/UGCCombineFrameFilter;->cropTexture(Lcom/tencent/liteav/videobase/frame/d;)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "UGCCombineFrameFilter"

    const-string v0, "frames is null or no frames!"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCCombineFrameFilter;->unInitFilter()V

    return-void
.end method

.method public setCanvasSize(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCanvasSize:Lcom/tencent/liteav/base/util/q;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/tencent/liteav/base/util/q;->a:I

    if-ne p1, v1, :cond_0

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I

    if-ne p2, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v0, p1, p2}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCanvasSize:Lcom/tencent/liteav/base/util/q;

    .line 3
    iget p1, v0, Lcom/tencent/liteav/base/util/q;->a:I

    iget p2, v0, Lcom/tencent/liteav/base/util/q;->b:I

    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropRect:Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;

    .line 4
    invoke-static {p1, p2, v0}, Lcom/tencent/ugc/UGCCombineFrameFilter;->getCropRectTextureCoords(IILcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropRectTextureCoordsBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public setCropRect(Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropRect:Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->width:I

    iget v2, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->width:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->height:I

    iget v2, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->height:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->x:I

    iget v2, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->x:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->y:I

    iget v1, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;->y:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropRect:Lcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCanvasSize:Lcom/tencent/liteav/base/util/q;

    iget v1, v0, Lcom/tencent/liteav/base/util/q;->a:I

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I

    .line 4
    invoke-static {v1, v0, p1}, Lcom/tencent/ugc/UGCCombineFrameFilter;->getCropRectTextureCoords(IILcom/tencent/ugc/TXVideoEditConstants$TXAbsoluteRect;)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/ugc/UGCCombineFrameFilter;->mCropRectTextureCoordsBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method
