.class public final Lcom/tencent/liteav/beauty/b/i;
.super Lcom/tencent/liteav/videobase/a/b;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:I

.field c:Landroid/graphics/Bitmap;

.field d:I

.field final e:Ljava/nio/FloatBuffer;

.field final f:Ljava/nio/FloatBuffer;

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying highp vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}"

    const-string/jumbo v1, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputImageTexture2; // lookup texture 1\nuniform sampler2D inputImageTexture3; // lookup texture 2\n\n\nuniform lowp vec3 v3_params;\nuniform lowp vec2 v2_texs;\n\n\nvoid main()\n{\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n\n    mediump float blueColor = textureColor.b * 63.0;\n\n    mediump vec2 quad1;\n    quad1.y = floor(floor(blueColor) / 8.0);\n    quad1.x = floor(blueColor) - (quad1.y * 8.0);\n\n    mediump vec2 quad2;\n    quad2.y = floor(ceil(blueColor) / 8.0);\n    quad2.x = ceil(blueColor) - (quad2.y * 8.0);\n\n    highp vec2 texPos1;\n    texPos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n    texPos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n\n    highp vec2 texPos2;\n    texPos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n    texPos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n\n    lowp vec4 newColor1;\n    lowp vec4 newColor2;\n    if(textureCoordinate.x <= v3_params.x) { \n      if(v2_texs.x == 1.0) { \n        newColor1 = texture2D(inputImageTexture2, texPos1);\n        newColor2 = texture2D(inputImageTexture2, texPos2);\n        lowp vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n        gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), v3_params.y);\n      } else { \n        gl_FragColor = textureColor;\n      } \n    } else {\n      if(v2_texs.y == 1.0) { \n        newColor1 = texture2D(inputImageTexture3, texPos1);\n        newColor2 = texture2D(inputImageTexture3, texPos2);\n        lowp vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n        gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), v3_params.z);\n      } else { \n        gl_FragColor = textureColor;\n      } \n    }\n }"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videobase/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/i;->a:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/tencent/liteav/beauty/b/i;->b:I

    .line 4
    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/i;->c:Landroid/graphics/Bitmap;

    .line 5
    iput v1, p0, Lcom/tencent/liteav/beauty/b/i;->d:I

    const/4 v0, 0x3

    .line 6
    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/i;->e:Ljava/nio/FloatBuffer;

    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/i;->f:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public final a(FLandroid/graphics/Bitmap;FLandroid/graphics/Bitmap;F)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p5

    move-object v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/liteav/beauty/b/j;->a(Lcom/tencent/liteav/beauty/b/i;FFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videobase/a/b;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final afterDrawArrays()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/tencent/liteav/videobase/a/b;->afterDrawArrays()V

    .line 2
    iget v0, p0, Lcom/tencent/liteav/beauty/b/i;->b:I

    const/4 v1, 0x0

    const/16 v2, 0xde1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const v0, 0x84c3

    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 4
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 5
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/beauty/b/i;->d:I

    if-eq v0, v3, :cond_1

    const v0, 0x84c4

    .line 6
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 7
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_1
    return-void
.end method

.method public final beforeDrawArrays(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/a/b;->beforeDrawArrays(I)V

    .line 2
    iget p1, p0, Lcom/tencent/liteav/beauty/b/i;->b:I

    const/16 v0, 0xde1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const p1, 0x84c3

    .line 3
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 4
    iget p1, p0, Lcom/tencent/liteav/beauty/b/i;->b:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 5
    iget p1, p0, Lcom/tencent/liteav/beauty/b/i;->g:I

    const/4 v2, 0x3

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 6
    :cond_0
    iget p1, p0, Lcom/tencent/liteav/beauty/b/i;->d:I

    if-eq p1, v1, :cond_1

    const p1, 0x84c4

    .line 7
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 8
    iget p1, p0, Lcom/tencent/liteav/beauty/b/i;->d:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 9
    iget p1, p0, Lcom/tencent/liteav/beauty/b/i;->h:I

    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 10
    :cond_1
    iget p1, p0, Lcom/tencent/liteav/beauty/b/i;->j:I

    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/i;->f:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Landroid/opengl/GLES20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    .line 11
    iget p1, p0, Lcom/tencent/liteav/beauty/b/i;->i:I

    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/i;->e:Ljava/nio/FloatBuffer;

    invoke-static {p1, v1, v0}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public final onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/a/b;->onInit(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "inputImageTexture2"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/beauty/b/i;->g:I

    .line 3
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "inputImageTexture3"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/beauty/b/i;->h:I

    .line 4
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string/jumbo v0, "v3_params"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/beauty/b/i;->i:I

    .line 5
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string/jumbo v0, "v2_texs"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/beauty/b/i;->j:I

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/i;->a:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/i;->c:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/i;->e:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/i;->a:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/i;->e:Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    iget-object v5, p0, Lcom/tencent/liteav/beauty/b/i;->c:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/i;->e:Ljava/nio/FloatBuffer;

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v6

    move-object v1, p0

    .line 9
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/liteav/beauty/b/i;->a(FLandroid/graphics/Bitmap;FLandroid/graphics/Bitmap;F)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/tencent/liteav/beauty/b/i;->a:Landroid/graphics/Bitmap;

    .line 11
    iput-object p1, p0, Lcom/tencent/liteav/beauty/b/i;->c:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public final onUninit()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/liteav/videobase/a/b;->onUninit()V

    .line 2
    iget v0, p0, Lcom/tencent/liteav/beauty/b/i;->b:I

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    .line 3
    iget v0, p0, Lcom/tencent/liteav/beauty/b/i;->d:I

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/tencent/liteav/beauty/b/i;->b:I

    .line 5
    iput v0, p0, Lcom/tencent/liteav/beauty/b/i;->d:I

    return-void
.end method
