.class public Lcom/tencent/liteav/beauty/b/n;
.super Lcom/tencent/liteav/videobase/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/beauty/b/n$a;
    }
.end annotation


# static fields
.field protected static final DRAW_ORDER:[S

.field protected static final DRAW_ORDER_BUFFER:Ljava/nio/ShortBuffer;

.field private static final TAG:Ljava/lang/String; = "TXCGPUWatermarkFilter"

.field private static final TEXTURE_COORDS:[F

.field protected static final TEXTURE_COORDS_BUFFER:Ljava/nio/FloatBuffer;

.field private static final VERTICES_COORDS:[F


# instance fields
.field private mBaseMarkOffset:I

.field private mBaseWaterMark:Lcom/tencent/liteav/beauty/b/n$a;

.field protected mDrawWaterMarkEnabled:Z

.field public mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

.field protected mSrcBlendMode:I

.field protected mWaterMarkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/liteav/beauty/b/o;",
            ">;"
        }
    .end annotation
.end field

.field private mWatermark:Lcom/tencent/liteav/beauty/b/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [S

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/liteav/beauty/b/n;->DRAW_ORDER:[S

    const/16 v1, 0x8

    new-array v2, v1, [F

    .line 2
    sput-object v2, Lcom/tencent/liteav/beauty/b/n;->VERTICES_COORDS:[F

    new-array v1, v1, [F

    .line 3
    fill-array-data v1, :array_1

    .line 4
    sput-object v1, Lcom/tencent/liteav/beauty/b/n;->TEXTURE_COORDS:[F

    const/16 v2, 0x20

    .line 5
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->asReadOnlyBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    sput-object v1, Lcom/tencent/liteav/beauty/b/n;->TEXTURE_COORDS_BUFFER:Ljava/nio/FloatBuffer;

    .line 11
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 12
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 13
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->asReadOnlyBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    sput-object v0, Lcom/tencent/liteav/beauty/b/n;->DRAW_ORDER_BUFFER:Ljava/nio/ShortBuffer;

    return-void

    :array_0
    .array-data 2
        0x1s
        0x2s
        0x0s
        0x2s
        0x0s
        0x3s
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying highp vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}"

    const-string/jumbo v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/beauty/b/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mBaseWaterMark:Lcom/tencent/liteav/beauty/b/n$a;

    .line 5
    iput-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mWaterMarkList:Ljava/util/List;

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/tencent/liteav/beauty/b/n;->mDrawWaterMarkEnabled:Z

    const/4 p2, 0x1

    .line 7
    iput p2, p0, Lcom/tencent/liteav/beauty/b/n;->mSrcBlendMode:I

    .line 8
    iput p2, p0, Lcom/tencent/liteav/beauty/b/n;->mBaseMarkOffset:I

    .line 9
    iput-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mWatermark:Lcom/tencent/liteav/beauty/b/o;

    return-void
.end method

.method private compareWaterMarkList(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/beauty/b/o;",
            ">;",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/beauty/b/o;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/beauty/b/o;

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/liteav/beauty/b/o;

    .line 5
    iget-object v4, v1, Lcom/tencent/liteav/beauty/b/o;->a:Landroid/graphics/Bitmap;

    iget-object v5, v3, Lcom/tencent/liteav/beauty/b/o;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v1, Lcom/tencent/liteav/beauty/b/o;->b:F

    iget v5, v3, Lcom/tencent/liteav/beauty/b/o;->b:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    iget v4, v1, Lcom/tencent/liteav/beauty/b/o;->c:F

    iget v5, v3, Lcom/tencent/liteav/beauty/b/o;->c:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    iget v1, v1, Lcom/tencent/liteav/beauty/b/o;->d:F

    iget v3, v3, Lcom/tencent/liteav/beauty/b/o;->d:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private releaseWaterMark()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    .line 3
    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    .line 4
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/tencent/liteav/beauty/b/n$a;->a()V

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    aput-object v3, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iput-object v3, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    :cond_3
    :goto_1
    return-void
.end method

.method private setWatermark(Landroid/graphics/Bitmap;FFFI)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    const-string v1, "TXCGPUWatermarkFilter"

    if-eqz v0, :cond_6

    array-length v2, v0

    if-ge p5, v2, :cond_6

    aget-object v0, v0, p5

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 2
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "release %d watermark!"

    invoke-static {v1, p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    aget-object p1, p1, p5

    invoke-virtual {p1}, Lcom/tencent/liteav/beauty/b/n$a;->a()V

    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    const/4 p2, 0x0

    aput-object p2, p1, p5

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/liteav/beauty/b/n;->calculateOffsetMatrix(IIFFFI)V

    .line 6
    iget-object p2, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    aget-object p2, p2, p5

    .line 7
    iget-object p3, p2, Lcom/tencent/liteav/beauty/b/n$a;->b:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 8
    :cond_2
    iget p3, p2, Lcom/tencent/liteav/beauty/b/n$a;->c:I

    const/4 p4, -0x1

    if-eq p3, p4, :cond_4

    iget-object p3, p2, Lcom/tencent/liteav/beauty/b/n$a;->b:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_4

    .line 9
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    if-ne p3, p5, :cond_3

    iget-object p3, p2, Lcom/tencent/liteav/beauty/b/n$a;->b:Landroid/graphics/Bitmap;

    .line 10
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    if-eq p3, p5, :cond_4

    .line 11
    :cond_3
    iget p3, p2, Lcom/tencent/liteav/beauty/b/n$a;->c:I

    invoke-static {p3}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    .line 12
    iput p4, p2, Lcom/tencent/liteav/beauty/b/n$a;->c:I

    .line 13
    :cond_4
    iget p3, p2, Lcom/tencent/liteav/beauty/b/n$a;->c:I

    invoke-static {p1, p3, v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result p3

    iput p3, p2, Lcom/tencent/liteav/beauty/b/n$a;->c:I

    .line 14
    :cond_5
    iput-object p1, p2, Lcom/tencent/liteav/beauty/b/n$a;->b:Landroid/graphics/Bitmap;

    return-void

    :cond_6
    :goto_0
    const-string p1, "index is too large for mRenderObjects!"

    .line 15
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public afterDrawArrays()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcom/tencent/liteav/videobase/a/b;->afterDrawArrays()V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/beauty/b/n;->mDrawWaterMarkEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xbe2

    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 4
    iget v1, p0, Lcom/tencent/liteav/beauty/b/n;->mSrcBlendMode:I

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 6
    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    const v3, 0x84c0

    .line 7
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v3, 0xde1

    .line 8
    iget-object v4, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/tencent/liteav/beauty/b/n$a;->c:I

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 9
    iget v3, p0, Lcom/tencent/liteav/videobase/a/b;->mGLUniformTexture:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 10
    iget v4, p0, Lcom/tencent/liteav/videobase/a/b;->mGLAttribPosition:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    aget-object v3, v3, v2

    iget-object v9, v3, Lcom/tencent/liteav/beauty/b/n$a;->a:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 11
    iget v3, p0, Lcom/tencent/liteav/videobase/a/b;->mGLAttribPosition:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 12
    iget v4, p0, Lcom/tencent/liteav/videobase/a/b;->mGLAttribTextureCoord:I

    const/4 v8, 0x0

    sget-object v9, Lcom/tencent/liteav/beauty/b/n;->TEXTURE_COORDS_BUFFER:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 13
    iget v3, p0, Lcom/tencent/liteav/videobase/a/b;->mGLAttribTextureCoord:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, 0x4

    .line 14
    sget-object v4, Lcom/tencent/liteav/beauty/b/n;->DRAW_ORDER:[S

    array-length v4, v4

    const/16 v5, 0x1403

    sget-object v6, Lcom/tencent/liteav/beauty/b/n;->DRAW_ORDER_BUFFER:Ljava/nio/ShortBuffer;

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 15
    iget v3, p0, Lcom/tencent/liteav/videobase/a/b;->mGLAttribPosition:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 16
    iget v3, p0, Lcom/tencent/liteav/videobase/a/b;->mGLAttribTextureCoord:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method public calculateOffsetMatrix(IIFFFI)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    array-length v4, v0

    if-ge p6, v4, :cond_2

    aget-object v4, v0, p6

    if-nez v4, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    aget-object v0, v0, p6

    sget-object v4, Lcom/tencent/liteav/beauty/b/n;->VERTICES_COORDS:[F

    array-length v5, v4

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    .line 3
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 4
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, v0, Lcom/tencent/liteav/beauty/b/n$a;->a:Ljava/nio/FloatBuffer;

    .line 6
    array-length v0, v4

    new-array v0, v0, [F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float p3, p3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr p3, v5

    .line 7
    aput p3, v0, v3

    mul-float p4, p4, v4

    sub-float/2addr v5, p4

    .line 8
    aput v5, v0, v2

    .line 9
    aget p3, v0, v3

    aput p3, v0, v1

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    mul-float p2, p2, p5

    .line 10
    iget-object p1, p0, Lcom/tencent/liteav/videobase/a/b;->mOutputSize:Lcom/tencent/liteav/base/util/q;

    iget p3, p1, Lcom/tencent/liteav/base/util/q;->a:I

    int-to-float p3, p3

    mul-float p2, p2, p3

    iget p1, p1, Lcom/tencent/liteav/base/util/q;->b:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 11
    aget p1, v0, v2

    mul-float p2, p2, v4

    sub-float/2addr p1, p2

    const/4 p2, 0x3

    aput p1, v0, p2

    .line 12
    aget p1, v0, v3

    mul-float p5, p5, v4

    add-float/2addr p1, p5

    aput p1, v0, v6

    const/4 p1, 0x5

    .line 13
    aget p2, v0, p2

    aput p2, v0, p1

    const/4 p1, 0x6

    .line 14
    aget p2, v0, v6

    aput p2, v0, p1

    .line 15
    aget p1, v0, v2

    const/4 p2, 0x7

    aput p1, v0, p2

    :goto_0
    if-gt v2, p2, :cond_1

    .line 16
    aget p1, v0, v2

    const/high16 p3, -0x40800000    # -1.0f

    mul-float p1, p1, p3

    aput p1, v0, v2

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    aget-object p1, p1, p6

    iget-object p1, p1, Lcom/tencent/liteav/beauty/b/n$a;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_2
    :goto_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    iget-object p2, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    .line 19
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "TXCGPUWatermarkFilter"

    const-string p3, "calculateOffsetMatrix,index[%d],mRenderObjects=%s"

    .line 20
    invoke-static {p2, p3, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public enableWatermark(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/liteav/beauty/b/n;->mDrawWaterMarkEnabled:Z

    return-void
.end method

.method public onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/a/b;->onInit(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mWatermark:Lcom/tencent/liteav/beauty/b/o;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, Lcom/tencent/liteav/beauty/b/o;->a:Landroid/graphics/Bitmap;

    iget v1, p1, Lcom/tencent/liteav/beauty/b/o;->b:F

    iget v2, p1, Lcom/tencent/liteav/beauty/b/o;->c:F

    iget p1, p1, Lcom/tencent/liteav/beauty/b/o;->d:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/tencent/liteav/beauty/b/n;->setWatermark(Landroid/graphics/Bitmap;FFF)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mWaterMarkList:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/beauty/b/n;->setWaterMarkList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "TXCGPUWatermarkFilter"

    const-string v3, "onOutputSizeChanged,width=%d,height=%d"

    invoke-static {v1, v3, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    .line 3
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mWatermark:Lcom/tencent/liteav/beauty/b/o;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/tencent/liteav/beauty/b/o;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mWatermark:Lcom/tencent/liteav/beauty/b/o;

    iget-object p1, p1, Lcom/tencent/liteav/beauty/b/o;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mWatermark:Lcom/tencent/liteav/beauty/b/o;

    iget v6, p1, Lcom/tencent/liteav/beauty/b/o;->b:F

    iget v7, p1, Lcom/tencent/liteav/beauty/b/o;->c:F

    iget v8, p1, Lcom/tencent/liteav/beauty/b/o;->d:F

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/liteav/beauty/b/n;->calculateOffsetMatrix(IIFFFI)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mWaterMarkList:Ljava/util/List;

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mWaterMarkList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mWaterMarkList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/beauty/b/o;

    if-eqz p1, :cond_3

    .line 9
    iget-object p2, p1, Lcom/tencent/liteav/beauty/b/o;->a:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object p2, p1, Lcom/tencent/liteav/beauty/b/o;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p1, Lcom/tencent/liteav/beauty/b/o;->b:F

    iget v7, p1, Lcom/tencent/liteav/beauty/b/o;->c:F

    iget v8, p1, Lcom/tencent/liteav/beauty/b/o;->d:F

    iget p1, p0, Lcom/tencent/liteav/beauty/b/n;->mBaseMarkOffset:I

    add-int v9, v2, p1

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/tencent/liteav/beauty/b/n;->calculateOffsetMatrix(IIFFFI)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onUninit()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/tencent/liteav/videobase/a/b;->onUninit()V

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/beauty/b/n;->releaseWaterMark()V

    return-void
.end method

.method public setWaterMarkList(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/beauty/b/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/n;->mWaterMarkList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/tencent/liteav/beauty/b/n;->compareWaterMarkList(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "TXCGPUWatermarkFilter"

    const-string v0, "Same markList"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mWaterMarkList:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    if-eqz v0, :cond_1

    .line 5
    iget v0, p0, Lcom/tencent/liteav/beauty/b/n;->mBaseMarkOffset:I

    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 6
    aget-object v1, v1, v0

    iget v1, v1, Lcom/tencent/liteav/beauty/b/n$a;->c:I

    invoke-static {v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    .line 7
    iget-object v1, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/tencent/liteav/beauty/b/n$a;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/liteav/beauty/b/n;->mBaseMarkOffset:I

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/tencent/liteav/beauty/b/n$a;

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    .line 9
    iget-object v1, p0, Lcom/tencent/liteav/beauty/b/n;->mBaseWaterMark:Lcom/tencent/liteav/beauty/b/n$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 10
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 11
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/beauty/b/o;

    if-eqz v0, :cond_2

    .line 12
    iget-object v1, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    iget v3, p0, Lcom/tencent/liteav/beauty/b/n;->mBaseMarkOffset:I

    add-int/2addr v3, v2

    new-instance v4, Lcom/tencent/liteav/beauty/b/n$a;

    invoke-direct {v4}, Lcom/tencent/liteav/beauty/b/n$a;-><init>()V

    aput-object v4, v1, v3

    .line 13
    iget-object v6, v0, Lcom/tencent/liteav/beauty/b/o;->a:Landroid/graphics/Bitmap;

    iget v7, v0, Lcom/tencent/liteav/beauty/b/o;->b:F

    iget v8, v0, Lcom/tencent/liteav/beauty/b/o;->c:F

    iget v9, v0, Lcom/tencent/liteav/beauty/b/o;->d:F

    iget v0, p0, Lcom/tencent/liteav/beauty/b/n;->mBaseMarkOffset:I

    add-int v10, v2, v0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/tencent/liteav/beauty/b/n;->setWatermark(Landroid/graphics/Bitmap;FFFI)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setWatermark(Landroid/graphics/Bitmap;FFF)V
    .locals 9

    .line 16
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tencent/liteav/beauty/b/n$a;

    .line 17
    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    .line 19
    new-instance v2, Lcom/tencent/liteav/beauty/b/n$a;

    invoke-direct {v2}, Lcom/tencent/liteav/beauty/b/n$a;-><init>()V

    aput-object v2, v0, v1

    :cond_1
    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 20
    invoke-direct/range {v3 .. v8}, Lcom/tencent/liteav/beauty/b/n;->setWatermark(Landroid/graphics/Bitmap;FFFI)V

    .line 21
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/n;->mRenderObjects:[Lcom/tencent/liteav/beauty/b/n$a;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/n;->mBaseWaterMark:Lcom/tencent/liteav/beauty/b/n$a;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/tencent/liteav/beauty/b/n;->mWatermark:Lcom/tencent/liteav/beauty/b/o;

    return-void

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/n;->mWatermark:Lcom/tencent/liteav/beauty/b/o;

    if-nez v0, :cond_3

    .line 24
    new-instance v0, Lcom/tencent/liteav/beauty/b/o;

    invoke-direct {v0}, Lcom/tencent/liteav/beauty/b/o;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/n;->mWatermark:Lcom/tencent/liteav/beauty/b/o;

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/n;->mWatermark:Lcom/tencent/liteav/beauty/b/o;

    iput-object p1, v0, Lcom/tencent/liteav/beauty/b/o;->a:Landroid/graphics/Bitmap;

    .line 26
    iput p2, v0, Lcom/tencent/liteav/beauty/b/o;->b:F

    .line 27
    iput p3, v0, Lcom/tencent/liteav/beauty/b/o;->c:F

    .line 28
    iput p4, v0, Lcom/tencent/liteav/beauty/b/o;->d:F

    return-void
.end method
