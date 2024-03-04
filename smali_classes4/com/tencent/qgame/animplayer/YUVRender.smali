.class public final Lcom/tencent/qgame/animplayer/YUVRender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qgame/animplayer/IRenderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/YUVRender$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0018\u0000 12\u00020\u0001:\u00011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\"H\u0016J\u0008\u0010$\u001a\u00020\"H\u0002J\u0008\u0010%\u001a\u00020\u000bH\u0016J\u0008\u0010&\u001a\u00020\"H\u0016J\u0008\u0010\'\u001a\u00020\"H\u0016J\u0008\u0010(\u001a\u00020\"H\u0016J\u0010\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020+H\u0016J6\u0010,\u001a\u00020\"2\u0006\u0010-\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020\u000b2\u0008\u0010 \u001a\u0004\u0018\u00010/2\u0008\u0010\u001a\u001a\u0004\u0018\u00010/2\u0008\u0010\u001d\u001a\u0004\u0018\u00010/H\u0016J\u0008\u00100\u001a\u00020\"H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/YUVRender;",
        "Lcom/tencent/qgame/animplayer/IRenderListener;",
        "surfaceTexture",
        "Landroid/graphics/SurfaceTexture;",
        "(Landroid/graphics/SurfaceTexture;)V",
        "YUV_MATRIX",
        "",
        "YUV_OFFSET",
        "alphaArray",
        "Lcom/tencent/qgame/animplayer/util/GlFloatArray;",
        "alphaPosition",
        "",
        "avPosition",
        "convertMatrixUniform",
        "convertOffsetUniform",
        "eglUtil",
        "Lcom/tencent/qgame/animplayer/EGLUtil;",
        "heightYUV",
        "rgbArray",
        "rgbPosition",
        "samplerU",
        "samplerV",
        "samplerY",
        "shaderProgram",
        "textureId",
        "",
        "u",
        "Ljava/nio/ByteBuffer;",
        "unpackAlign",
        "v",
        "vertexArray",
        "widthYUV",
        "y",
        "clearFrame",
        "",
        "destroyRender",
        "draw",
        "getExternalTexture",
        "initRender",
        "releaseTexture",
        "renderFrame",
        "setAnimConfig",
        "config",
        "Lcom/tencent/qgame/animplayer/AnimConfig;",
        "setYUVData",
        "width",
        "height",
        "",
        "swapBuffers",
        "Companion",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tencent/qgame/animplayer/YUVRender$Companion;

.field private static final TAG:Ljava/lang/String; = "AnimPlayer.YUVRender"


# instance fields
.field private final YUV_MATRIX:[F

.field private final YUV_OFFSET:[F

.field private final alphaArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

.field private alphaPosition:I

.field private avPosition:I

.field private convertMatrixUniform:I

.field private convertOffsetUniform:I

.field private final eglUtil:Lcom/tencent/qgame/animplayer/EGLUtil;

.field private heightYUV:I

.field private final rgbArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

.field private rgbPosition:I

.field private samplerU:I

.field private samplerV:I

.field private samplerY:I

.field private shaderProgram:I

.field private textureId:[I

.field private u:Ljava/nio/ByteBuffer;

.field private unpackAlign:I

.field private v:Ljava/nio/ByteBuffer;

.field private final vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

.field private widthYUV:I

.field private y:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/qgame/animplayer/YUVRender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/YUVRender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/YUVRender;->Companion:Lcom/tencent/qgame/animplayer/YUVRender$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    .line 3
    new-instance v0, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->alphaArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    .line 4
    new-instance v0, Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->rgbArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 5
    iput-object v1, p0, Lcom/tencent/qgame/animplayer/YUVRender;->textureId:[I

    .line 6
    new-instance v1, Lcom/tencent/qgame/animplayer/EGLUtil;

    invoke-direct {v1}, Lcom/tencent/qgame/animplayer/EGLUtil;-><init>()V

    iput-object v1, p0, Lcom/tencent/qgame/animplayer/YUVRender;->eglUtil:Lcom/tencent/qgame/animplayer/EGLUtil;

    const/4 v2, 0x4

    .line 7
    iput v2, p0, Lcom/tencent/qgame/animplayer/YUVRender;->unpackAlign:I

    new-array v0, v0, [F

    .line 8
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->YUV_OFFSET:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 9
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->YUV_MATRIX:[F

    .line 10
    invoke-virtual {v1, p1}, Lcom/tencent/qgame/animplayer/EGLUtil;->start(Landroid/graphics/SurfaceTexture;)V

    .line 11
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/YUVRender;->initRender()V

    return-void

    :array_0
    .array-data 4
        0x0
        -0x40ff7f7f
        -0x40ff7f7f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x414fd220    # -0.3441f
        0x3fe2d0e5    # 1.772f
        0x3fb374bc    # 1.402f
        -0x40c930be    # -0.7141f
        0x0
    .end array-data
.end method

.method private final draw()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->widthYUV:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->heightYUV:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->y:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->u:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->v:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 2
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->shaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 3
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    iget v1, p0, Lcom/tencent/qgame/animplayer/YUVRender;->avPosition:I

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setVertexAttribPointer(I)V

    .line 4
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->alphaArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    iget v1, p0, Lcom/tencent/qgame/animplayer/YUVRender;->alphaPosition:I

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setVertexAttribPointer(I)V

    .line 5
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->rgbArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    iget v1, p0, Lcom/tencent/qgame/animplayer/YUVRender;->rgbPosition:I

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setVertexAttribPointer(I)V

    const/16 v0, 0xcf5

    .line 6
    iget v1, p0, Lcom/tencent/qgame/animplayer/YUVRender;->unpackAlign:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const v0, 0x84c0

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 8
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->textureId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1909

    .line 9
    iget v6, p0, Lcom/tencent/qgame/animplayer/YUVRender;->widthYUV:I

    iget v7, p0, Lcom/tencent/qgame/animplayer/YUVRender;->heightYUV:I

    const/4 v8, 0x0

    const/16 v9, 0x1909

    const/16 v10, 0x1401

    iget-object v11, p0, Lcom/tencent/qgame/animplayer/YUVRender;->y:Ljava/nio/ByteBuffer;

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const v0, 0x84c1

    .line 10
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 11
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->textureId:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1909

    .line 12
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->widthYUV:I

    const/4 v13, 0x2

    div-int/lit8 v7, v0, 0x2

    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->heightYUV:I

    div-int/lit8 v8, v0, 0x2

    const/4 v9, 0x0

    const/16 v10, 0x1909

    const/16 v11, 0x1401

    iget-object v12, p0, Lcom/tencent/qgame/animplayer/YUVRender;->u:Ljava/nio/ByteBuffer;

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const v0, 0x84c2

    .line 13
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 14
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->textureId:[I

    aget v0, v0, v13

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 15
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->widthYUV:I

    div-int/lit8 v7, v0, 0x2

    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->heightYUV:I

    div-int/lit8 v8, v0, 0x2

    iget-object v12, p0, Lcom/tencent/qgame/animplayer/YUVRender;->v:Ljava/nio/ByteBuffer;

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 16
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->samplerY:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 17
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->samplerU:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 18
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->samplerV:I

    invoke-static {v0, v13}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 19
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->convertOffsetUniform:I

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/YUVRender;->YUV_OFFSET:[F

    invoke-static {v2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 20
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->convertMatrixUniform:I

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/YUVRender;->YUV_MATRIX:[F

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 21
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 22
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->y:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->u:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->v:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_2
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->y:Ljava/nio/ByteBuffer;

    .line 26
    iput-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->u:Ljava/nio/ByteBuffer;

    .line 27
    iput-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->v:Ljava/nio/ByteBuffer;

    .line 28
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->avPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 29
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->rgbPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 30
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->alphaPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public clearFrame()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 3
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->eglUtil:Lcom/tencent/qgame/animplayer/EGLUtil;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/EGLUtil;->swapBuffers()V

    return-void
.end method

.method public destroyRender()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/YUVRender;->releaseTexture()V

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->eglUtil:Lcom/tencent/qgame/animplayer/EGLUtil;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/EGLUtil;->release()V

    return-void
.end method

.method public getExternalTexture()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->textureId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public initRender()V
    .locals 6

    .line 1
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ShaderUtil;

    const-string v1, "attribute vec4 v_Position;\nattribute vec2 vTexCoordinateAlpha;\nattribute vec2 vTexCoordinateRgb;\nvarying vec2 v_TexCoordinateAlpha;\nvarying vec2 v_TexCoordinateRgb;\n\nvoid main() {\n    v_TexCoordinateAlpha = vTexCoordinateAlpha;\n    v_TexCoordinateRgb = vTexCoordinateRgb;\n    gl_Position = v_Position;\n}"

    const-string v2, "precision mediump float;\nuniform sampler2D sampler_y;\nuniform sampler2D sampler_u;\nuniform sampler2D sampler_v;\nvarying vec2 v_TexCoordinateAlpha;\nvarying vec2 v_TexCoordinateRgb;\nuniform mat3 convertMatrix;\nuniform vec3 offset;\n\nvoid main() {\n   highp vec3 yuvColorAlpha;\n   highp vec3 yuvColorRGB;\n   highp vec3 rgbColorAlpha;\n   highp vec3 rgbColorRGB;\n   yuvColorAlpha.x = texture2D(sampler_y,v_TexCoordinateAlpha).r;\n   yuvColorRGB.x = texture2D(sampler_y,v_TexCoordinateRgb).r;\n   yuvColorAlpha.y = texture2D(sampler_u,v_TexCoordinateAlpha).r;\n   yuvColorAlpha.z = texture2D(sampler_v,v_TexCoordinateAlpha).r;\n   yuvColorRGB.y = texture2D(sampler_u,v_TexCoordinateRgb).r;\n   yuvColorRGB.z = texture2D(sampler_v,v_TexCoordinateRgb).r;\n   yuvColorAlpha += offset;\n   yuvColorRGB += offset;\n   rgbColorAlpha = convertMatrix * yuvColorAlpha; \n   rgbColorRGB = convertMatrix * yuvColorRGB; \n   gl_FragColor=vec4(rgbColorRGB, rgbColorAlpha.r);\n}"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->shaderProgram:I

    const-string/jumbo v1, "v_Position"

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->avPosition:I

    .line 3
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->shaderProgram:I

    const-string/jumbo v1, "vTexCoordinateRgb"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->rgbPosition:I

    .line 4
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->shaderProgram:I

    const-string/jumbo v1, "vTexCoordinateAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->alphaPosition:I

    .line 5
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->shaderProgram:I

    const-string v1, "sampler_y"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->samplerY:I

    .line 6
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->shaderProgram:I

    const-string v1, "sampler_u"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->samplerU:I

    .line 7
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->shaderProgram:I

    const-string v1, "sampler_v"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->samplerV:I

    .line 8
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->shaderProgram:I

    const-string v1, "convertMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->convertMatrixUniform:I

    .line 9
    iget v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->shaderProgram:I

    const-string v1, "offset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->convertOffsetUniform:I

    .line 10
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->textureId:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 11
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->textureId:[I

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    const/16 v4, 0xde1

    .line 12
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2802

    const/16 v5, 0x2901

    .line 13
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2803

    .line 14
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2801

    const/16 v5, 0x2601

    .line 15
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    .line 16
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public releaseTexture()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->textureId:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public renderFrame()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 3
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/YUVRender;->draw()V

    return-void
.end method

.method public setAnimConfig(Lcom/tencent/qgame/animplayer/AnimConfig;)V
    .locals 8
    .param p1    # Lcom/tencent/qgame/animplayer/AnimConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    sget-object v1, Lcom/tencent/qgame/animplayer/util/VertexUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/VertexUtil;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v3

    new-instance v4, Lcom/tencent/qgame/animplayer/PointRect;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Lcom/tencent/qgame/animplayer/PointRect;-><init>(IIII)V

    iget-object v5, p0, Lcom/tencent/qgame/animplayer/YUVRender;->vertexArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v5}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->getArray()[F

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/qgame/animplayer/util/VertexUtil;->create(IILcom/tencent/qgame/animplayer/PointRect;[F)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setArray([F)V

    .line 2
    sget-object v0, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getVideoHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getAlphaPointRect()Lcom/tencent/qgame/animplayer/PointRect;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qgame/animplayer/YUVRender;->alphaArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v4}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->getArray()[F

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->create(IILcom/tencent/qgame/animplayer/PointRect;[F)[F

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getVideoWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getVideoHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->getRgbPointRect()Lcom/tencent/qgame/animplayer/PointRect;

    move-result-object p1

    iget-object v4, p0, Lcom/tencent/qgame/animplayer/YUVRender;->rgbArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v4}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->getArray()[F

    move-result-object v4

    invoke-virtual {v0, v2, v3, p1, v4}, Lcom/tencent/qgame/animplayer/util/TexCoordsUtil;->create(IILcom/tencent/qgame/animplayer/PointRect;[F)[F

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->alphaArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setArray([F)V

    .line 5
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->rgbArray:Lcom/tencent/qgame/animplayer/util/GlFloatArray;

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/util/GlFloatArray;->setArray([F)V

    return-void
.end method

.method public setYUVData(II[B[B[B)V
    .locals 0
    .param p3    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/tencent/qgame/animplayer/YUVRender;->widthYUV:I

    .line 2
    iput p2, p0, Lcom/tencent/qgame/animplayer/YUVRender;->heightYUV:I

    .line 3
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/YUVRender;->y:Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/YUVRender;->u:Ljava/nio/ByteBuffer;

    .line 5
    invoke-static {p5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/YUVRender;->v:Ljava/nio/ByteBuffer;

    .line 6
    iget p1, p0, Lcom/tencent/qgame/animplayer/YUVRender;->widthYUV:I

    div-int/lit8 p2, p1, 0x2

    rem-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    .line 7
    div-int/2addr p1, p2

    rem-int/2addr p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    iput p2, p0, Lcom/tencent/qgame/animplayer/YUVRender;->unpackAlign:I

    :cond_1
    return-void
.end method

.method public swapBuffers()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/YUVRender;->eglUtil:Lcom/tencent/qgame/animplayer/EGLUtil;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/EGLUtil;->swapBuffers()V

    return-void
.end method

.method public updateViewPort(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/qgame/animplayer/IRenderListener$DefaultImpls;->updateViewPort(Lcom/tencent/qgame/animplayer/IRenderListener;II)V

    return-void
.end method
