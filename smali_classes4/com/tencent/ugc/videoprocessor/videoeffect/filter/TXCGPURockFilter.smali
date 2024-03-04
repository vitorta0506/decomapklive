.class public Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;
.super Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;
    }
.end annotation


# static fields
.field private static final DURATION_LIVEWAVE:I = 0x46

.field private static final DURATION_LIVEWAVE_LVMIN:I = 0x78

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float; \nvarying vec2 textureCoordinate; \nuniform sampler2D inputImageTexture; \nuniform float t; \nuniform float st; \nconst float stride = 7.0; \nconst float interval = 1.0; \nuniform float zMin; \nuniform float zMax; \nuniform vec2 center; \nuniform vec2 offsetR; \nuniform vec2 offsetG; \nuniform vec2 offsetB;\n\nfloat GetFactor(float elapse, float astride, float ainterval, float amp) \n{ \n   float ff = mod(elapse, astride + ainterval) / astride; \n   if (ff > 1.0) \n   { \n       ff = 0.0; \n   } \n   return pow(ff, 3.0) * 1.125 * amp; \n} \nvec2 _uv(vec2 uv, vec2 center, float zz, float min) \n{ \n   return uv + (zz + min) * (center - uv); \n} \nvoid main() \n{ \n   vec4 fout; \n   float zz = GetFactor(t - st, stride, interval, zMax - zMin); \n   float coeff = pow(zz, 0.75); \n   fout.r = texture2D(inputImageTexture, _uv(textureCoordinate, center, zz, zMin) + offsetR * coeff).r;\n   fout.g = texture2D(inputImageTexture, _uv(textureCoordinate, center, zz, zMin) + offsetG * coeff).g;\n   fout.b = texture2D(inputImageTexture, _uv(textureCoordinate, center, zz, zMin) + offsetB * coeff).b;\n   gl_FragColor = vec4(fout.rgb, 1.0); \n}\n"

.field private static final INTERVAL:I = 0x190


# instance fields
.field private mCenterLocation:I

.field private mCurrentLocation:I

.field private mDongGanParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;

.field private mDurationLocation:I

.field private mOffsetBLocation:I

.field private mOffsetGLocation:I

.field private mOffsetRLocation:I

.field private mZMaxLocation:I

.field private mZMinLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying highp vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}"

    const-string v1, "precision highp float; \nvarying vec2 textureCoordinate; \nuniform sampler2D inputImageTexture; \nuniform float t; \nuniform float st; \nconst float stride = 7.0; \nconst float interval = 1.0; \nuniform float zMin; \nuniform float zMax; \nuniform vec2 center; \nuniform vec2 offsetR; \nuniform vec2 offsetG; \nuniform vec2 offsetB;\n\nfloat GetFactor(float elapse, float astride, float ainterval, float amp) \n{ \n   float ff = mod(elapse, astride + ainterval) / astride; \n   if (ff > 1.0) \n   { \n       ff = 0.0; \n   } \n   return pow(ff, 3.0) * 1.125 * amp; \n} \nvec2 _uv(vec2 uv, vec2 center, float zz, float min) \n{ \n   return uv + (zz + min) * (center - uv); \n} \nvoid main() \n{ \n   vec4 fout; \n   float zz = GetFactor(t - st, stride, interval, zMax - zMin); \n   float coeff = pow(zz, 0.75); \n   fout.r = texture2D(inputImageTexture, _uv(textureCoordinate, center, zz, zMin) + offsetR * coeff).r;\n   fout.g = texture2D(inputImageTexture, _uv(textureCoordinate, center, zz, zMin) + offsetG * coeff).g;\n   fout.b = texture2D(inputImageTexture, _uv(textureCoordinate, center, zz, zMin) + offsetB * coeff).b;\n   gl_FragColor = vec4(fout.rgb, 1.0); \n}\n"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mZMinLocation:I

    .line 3
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mZMaxLocation:I

    .line 4
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mDurationLocation:I

    .line 5
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mCurrentLocation:I

    .line 6
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mCenterLocation:I

    .line 7
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mOffsetRLocation:I

    .line 8
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mOffsetGLocation:I

    .line 9
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mOffsetBLocation:I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mDongGanParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;

    return-void
.end method

.method private setCurrent(F)V
    .locals 1

    iget v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mCurrentLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

    return-void
.end method

.method private setDuration(F)V
    .locals 1

    iget v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mDurationLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

    return-void
.end method

.method private setOffset([F[F[F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mOffsetRLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/videobase/a/b;->setFloatVec2OnDraw(I[F)V

    .line 2
    iget p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mOffsetGLocation:I

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->setFloatVec2OnDraw(I[F)V

    .line 3
    iget p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mOffsetBLocation:I

    invoke-virtual {p0, p1, p3}, Lcom/tencent/liteav/videobase/a/b;->setFloatVec2OnDraw(I[F)V

    return-void
.end method

.method private setZoom(FF)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mZMinLocation:I

    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

    .line 2
    iget p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mZMaxLocation:I

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

    return-void
.end method

.method private updateParamsToOpenGL()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mDongGanParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;

    iget-object v1, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->offetRed:[F

    iget-object v2, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->offsetGreen:[F

    iget-object v0, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->offsetBlue:[F

    invoke-direct {p0, v1, v2, v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->setOffset([F[F[F)V

    .line 2
    iget v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mCenterLocation:I

    iget-object v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mDongGanParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;

    iget-object v1, v1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->center:[F

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/videobase/a/b;->setFloatVec2OnDraw(I[F)V

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mDongGanParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;

    iget v1, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->zoomMin:F

    iget v0, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->zoomMax:F

    invoke-direct {p0, v1, v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->setZoom(FF)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mDongGanParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;

    iget v0, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->duration:F

    invoke-direct {p0, v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->setDuration(F)V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mDongGanParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;

    iget v0, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->current:F

    invoke-direct {p0, v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->setCurrent(F)V

    return-void
.end method


# virtual methods
.method public onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->onInit(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string/jumbo v0, "zMin"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mZMinLocation:I

    .line 3
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string/jumbo v0, "zMax"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mZMaxLocation:I

    .line 4
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mDurationLocation:I

    .line 5
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string/jumbo v0, "st"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mCurrentLocation:I

    .line 6
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "center"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mCenterLocation:I

    .line 7
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "offsetR"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mOffsetRLocation:I

    .line 8
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "offsetG"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mOffsetGLocation:I

    .line 9
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "offsetB"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mOffsetBLocation:I

    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    return-void
.end method

.method public setNextFrameTimestamp(J)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->setNextFrameTimestamp(J)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mDongGanParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;

    const/high16 v1, 0x41000000    # 8.0f

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;

    invoke-direct {v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mDongGanParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;

    .line 4
    iput v1, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->duration:F

    new-array v4, v3, [F

    .line 5
    fill-array-data v4, :array_0

    iput-object v4, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->center:[F

    .line 6
    iput v2, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->zoomMin:F

    const v4, 0x3e4ccccd    # 0.2f

    .line 7
    iput v4, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->zoomMax:F

    .line 8
    :cond_0
    iget-wide v4, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->mEffectStartTime:J

    sub-long/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 v4, 0x78

    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mDongGanParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;

    iput v2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->current:F

    .line 10
    iput v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->duration:F

    new-array p2, v3, [F

    .line 11
    fill-array-data p2, :array_1

    iput-object p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->center:[F

    .line 12
    iput v2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->zoomMin:F

    .line 13
    iput v2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->zoomMax:F

    new-array p2, v3, [F

    .line 14
    fill-array-data p2, :array_2

    iput-object p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->offetRed:[F

    new-array p2, v3, [F

    .line 15
    fill-array-data p2, :array_3

    iput-object p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->offsetGreen:[F

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const/16 v4, 0x8

    if-gt v0, v4, :cond_4

    mul-int/lit8 v4, v0, 0x46

    add-int/lit8 v4, v4, 0x78

    int-to-long v4, v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_3

    .line 16
    iget-object v4, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mDongGanParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;

    int-to-float v5, v0

    iput v5, v4, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->current:F

    .line 17
    iput v1, v4, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->duration:F

    new-array v5, v3, [F

    .line 18
    fill-array-data v5, :array_4

    iput-object v5, v4, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->center:[F

    .line 19
    iput v2, v4, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->zoomMin:F

    const v5, 0x3e99999a    # 0.3f

    .line 20
    iput v5, v4, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->zoomMax:F

    const/4 v5, 0x3

    if-lt v0, v5, :cond_2

    new-array v0, v3, [F

    .line 21
    fill-array-data v0, :array_5

    iput-object v0, v4, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->offetRed:[F

    new-array v0, v3, [F

    .line 22
    fill-array-data v0, :array_6

    iput-object v0, v4, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->offsetGreen:[F

    goto :goto_1

    :cond_2
    new-array v0, v3, [F

    .line 23
    fill-array-data v0, :array_7

    iput-object v0, v4, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->offetRed:[F

    new-array v0, v3, [F

    .line 24
    fill-array-data v0, :array_8

    iput-object v0, v4, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->offsetGreen:[F

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const-wide/16 v4, 0x2a8

    cmp-long v0, p1, v4

    if-lez v0, :cond_6

    const-wide/16 v4, 0x438

    cmp-long v0, p1, v4

    if-gtz v0, :cond_5

    .line 25
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->mDongGanParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;

    iput v2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->current:F

    .line 26
    iput v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->duration:F

    new-array p2, v3, [F

    .line 27
    fill-array-data p2, :array_9

    iput-object p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->center:[F

    .line 28
    iput v2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->zoomMin:F

    .line 29
    iput v2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->zoomMax:F

    new-array p2, v3, [F

    .line 30
    fill-array-data p2, :array_a

    iput-object p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->offetRed:[F

    new-array p2, v3, [F

    .line 31
    fill-array-data p2, :array_b

    iput-object p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter$DongGanLightParam;->offsetGreen:[F

    goto :goto_2

    :cond_5
    const-wide/16 p1, -0x1

    .line 32
    iput-wide p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->mEffectStartTime:J

    .line 33
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPURockFilter;->updateParamsToOpenGL()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        -0x42333333    # -0.1f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
