.class public Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;
.super Lcom/tencent/liteav/videobase/a/b;
.source "SourceFile"


# static fields
.field public static final SPIRITOUT_FRAG:Ljava/lang/String; = "precision highp float;\nvarying lowp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\nuniform lowp float alphaLevel;\nuniform vec2 offsetR; \nuniform vec2 offsetG;\nuniform vec2 offsetB;\n\nvoid main()\n{\n   mediump vec4 fout;\n   fout.r = texture2D(inputImageTexture, textureCoordinate + offsetR).r; \n   fout.g = texture2D(inputImageTexture, textureCoordinate + offsetG).g; \n   fout.b = texture2D(inputImageTexture, textureCoordinate + offsetB).b; \n   fout.a = alphaLevel;\n\n    gl_FragColor = fout;\n}\n"

.field public static final SPIRITOUT_VERT:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nuniform mat4 textureTransform;\nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}"

.field private static TAG:Ljava/lang/String; = "ZoomInOut"


# instance fields
.field private mAlphaLevel:F

.field private mAlphaUniforLocation:I

.field private mOffsetBLocation:I

.field private mOffsetGLocation:I

.field private mOffsetRLocation:I

.field private mTextureTransformMatrix:[F

.field private mTextureTransformMatrixLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nuniform mat4 textureTransform;\nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}"

    const-string v1, "precision highp float;\nvarying lowp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\nuniform lowp float alphaLevel;\nuniform vec2 offsetR; \nuniform vec2 offsetG;\nuniform vec2 offsetB;\n\nvoid main()\n{\n   mediump vec4 fout;\n   fout.r = texture2D(inputImageTexture, textureCoordinate + offsetR).r; \n   fout.g = texture2D(inputImageTexture, textureCoordinate + offsetG).g; \n   fout.b = texture2D(inputImageTexture, textureCoordinate + offsetB).b; \n   fout.a = alphaLevel;\n\n    gl_FragColor = fout;\n}\n"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videobase/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mTextureTransformMatrixLocation:I

    .line 3
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mOffsetRLocation:I

    .line 4
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mOffsetGLocation:I

    .line 5
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mOffsetBLocation:I

    .line 6
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mAlphaUniforLocation:I

    const v0, 0x3e99999a    # 0.3f

    .line 7
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mAlphaLevel:F

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 8
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mTextureTransformMatrix:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public beforeDrawArrays(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/a/b;->beforeDrawArrays(I)V

    .line 2
    iget p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mTextureTransformMatrixLocation:I

    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mTextureTransformMatrix:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/a/b;->onInit(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string/jumbo v0, "textureTransform"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mTextureTransformMatrixLocation:I

    .line 3
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "alphaLevel"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mAlphaUniforLocation:I

    .line 4
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "offsetR"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mOffsetRLocation:I

    .line 5
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "offsetG"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mOffsetGLocation:I

    .line 6
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "offsetB"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mOffsetBLocation:I

    .line 7
    iget p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mAlphaLevel:F

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->setAlphaLevel(F)V

    return-void
.end method

.method public setAlphaLevel(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mAlphaLevel:F

    .line 2
    iget v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mAlphaUniforLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

    return-void
.end method

.method public setColorOffset([F[F[F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mOffsetRLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/videobase/a/b;->setFloatVec2OnDraw(I[F)V

    .line 2
    iget p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mOffsetGLocation:I

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->setFloatVec2OnDraw(I[F)V

    .line 3
    iget p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mOffsetBLocation:I

    invoke-virtual {p0, p1, p3}, Lcom/tencent/liteav/videobase/a/b;->setFloatVec2OnDraw(I[F)V

    return-void
.end method

.method public setZoomLevel(FI)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mTextureTransformMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    const/16 v2, 0x10

    new-array v2, v2, [F

    .line 3
    invoke-static {v2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v9, 0x3f800000    # 1.0f

    .line 4
    invoke-static {v2, v1, p1, p1, v9}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 5
    iget-object v7, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mTextureTransformMatrix:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v7

    move-object v5, v2

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 6
    invoke-static {v2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const v3, 0x3ca3d70a    # 0.02f

    .line 7
    invoke-static {v2, v1, v3, v3, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 8
    iget-object v7, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCZoomInOutFilter;->mTextureTransformMatrix:[F

    move-object v3, v7

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
