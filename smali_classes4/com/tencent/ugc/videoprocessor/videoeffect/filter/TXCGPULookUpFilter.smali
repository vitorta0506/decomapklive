.class public Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;
.super Lcom/tencent/liteav/videobase/a/b;
.source "SourceFile"


# static fields
.field private static final LookupFilterFragmentShader:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; // lookup texture\n \n \n uniform lowp float intensity;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     mediump float blueColor = textureColor.b * 63.0;\n     \n     mediump vec2 quad1;\n     quad1.y = floor(floor(blueColor) / 8.0);\n     quad1.x = floor(blueColor) - (quad1.y * 8.0);\n     \n     mediump vec2 quad2;\n     quad2.y = floor(ceil(blueColor) / 8.0);\n     quad2.x = ceil(blueColor) - (quad2.y * 8.0);\n     \n     highp vec2 texPos1;\n     texPos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n     texPos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n     \n     highp vec2 texPos2;\n     texPos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n     texPos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n     \n     lowp vec4 newColor1 = texture2D(inputImageTexture2, texPos1);\n     lowp vec4 newColor2 = texture2D(inputImageTexture2, texPos2);\n     \n     lowp vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n     gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), intensity);\n }"


# instance fields
.field protected mIntensity:F

.field protected mIntensityLocation:I

.field public mLookupSourceTexture:I

.field public mLookupTextureUniform:I

.field protected m_bmp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying highp vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}"

    const-string/jumbo v1, "varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; // lookup texture\n \n \n uniform lowp float intensity;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     mediump float blueColor = textureColor.b * 63.0;\n     \n     mediump vec2 quad1;\n     quad1.y = floor(floor(blueColor) / 8.0);\n     quad1.x = floor(blueColor) - (quad1.y * 8.0);\n     \n     mediump vec2 quad2;\n     quad2.y = floor(ceil(blueColor) / 8.0);\n     quad2.x = ceil(blueColor) - (quad2.y * 8.0);\n     \n     highp vec2 texPos1;\n     texPos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n     texPos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n     \n     highp vec2 texPos2;\n     texPos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n     texPos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n     \n     lowp vec4 newColor1 = texture2D(inputImageTexture2, texPos1);\n     lowp vec4 newColor2 = texture2D(inputImageTexture2, texPos2);\n     \n     lowp vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n     gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), intensity);\n }"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->m_bmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->m_bmp:Landroid/graphics/Bitmap;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->mLookupSourceTexture:I

    .line 6
    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->mIntensityLocation:I

    return-void
.end method


# virtual methods
.method public afterDrawArrays()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->mLookupSourceTexture:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const v0, 0x84c3

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 3
    iget v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->mLookupSourceTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 4
    iget v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->mLookupTextureUniform:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    return-void
.end method

.method public beforeDrawArrays(I)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->mLookupSourceTexture:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const p1, 0x84c3

    .line 2
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p1, 0xde1

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const p1, 0x84c0

    .line 4
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1
    iget v2, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->mLookupSourceTexture:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->mLookupSourceTexture:I

    .line 4
    invoke-super {p0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    return-void
.end method

.method public onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "inputImageTexture2"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->mLookupTextureUniform:I

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "intensity"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->mIntensityLocation:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 3
    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->mIntensity:F

    .line 4
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->m_bmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    iget p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->mIntensity:F

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->setIntensity(F)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter$1;-><init>(Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videobase/a/b;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setIntensity(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->mIntensity:F

    .line 2
    iget v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULookUpFilter;->mIntensityLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

    return-void
.end method
