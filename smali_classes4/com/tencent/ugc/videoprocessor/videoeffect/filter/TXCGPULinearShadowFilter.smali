.class public Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;
.super Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;
    }
.end annotation


# static fields
.field private static final DURATION_WIN_SHADDOW_LV1:I = 0x12c

.field private static final DURATION_WIN_SHADDOW_LV10:I = 0x3e8

.field private static final DURATION_WIN_SHADDOW_LV11:I = 0x41a

.field private static final DURATION_WIN_SHADDOW_LV12:I = 0x44c

.field private static final DURATION_WIN_SHADDOW_LV13:I = 0x4b0

.field private static final DURATION_WIN_SHADDOW_LV14:I = 0x5dc

.field private static final DURATION_WIN_SHADDOW_LV15:I = 0x9c4

.field private static final DURATION_WIN_SHADDOW_LV2:I = 0x15e

.field private static final DURATION_WIN_SHADDOW_LV3:I = 0x190

.field private static final DURATION_WIN_SHADDOW_LV4:I = 0x1f4

.field private static final DURATION_WIN_SHADDOW_LV5:I = 0x258

.field private static final DURATION_WIN_SHADDOW_LV6:I = 0x28a

.field private static final DURATION_WIN_SHADDOW_LV7:I = 0x2bc

.field private static final DURATION_WIN_SHADDOW_LV8:I = 0x320

.field private static final DURATION_WIN_SHADDOW_LV9:I = 0x384

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float; \nvarying highp vec2 textureCoordinate; \nuniform sampler2D inputImageTexture; \n \nuniform float a; \nuniform float b; \nuniform float c; \nuniform float d; \nuniform float mode; \nuniform float width; \nuniform float stride; \nuniform float alpha; \n \nvoid main() \n{ \n\tgl_FragColor = texture2D(inputImageTexture, textureCoordinate); \n   if(b == 0.0){ \n\t\tfloat mx = mod(textureCoordinate.x + c, stride); \n\t\tif((mode < 0.5 && mx <= width) || (mode > 0.5 && (mx > width))){ \n\t\t\tgl_FragColor.rgb = gl_FragColor.rgb*alpha; \n\t\t} \n\t} \n} \n"


# instance fields
.field private mAlphaPos:I

.field private mCPos:I

.field private mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

.field private mModePos:I

.field private mStridePos:I

.field private mWithPos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying highp vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}"

    const-string v1, "precision mediump float; \nvarying highp vec2 textureCoordinate; \nuniform sampler2D inputImageTexture; \n \nuniform float a; \nuniform float b; \nuniform float c; \nuniform float d; \nuniform float mode; \nuniform float width; \nuniform float stride; \nuniform float alpha; \n \nvoid main() \n{ \n\tgl_FragColor = texture2D(inputImageTexture, textureCoordinate); \n   if(b == 0.0){ \n\t\tfloat mx = mod(textureCoordinate.x + c, stride); \n\t\tif((mode < 0.5 && mx <= width) || (mode > 0.5 && (mx > width))){ \n\t\t\tgl_FragColor.rgb = gl_FragColor.rgb*alpha; \n\t\t} \n\t} \n} \n"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mCPos:I

    .line 3
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mModePos:I

    .line 4
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mWithPos:I

    .line 5
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mStridePos:I

    .line 6
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mAlphaPos:I

    return-void
.end method

.method private setParamsInternal(FFFFF)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mModePos:I

    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

    .line 2
    iget p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mAlphaPos:I

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

    .line 3
    iget p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mCPos:I

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p3, p3, p2

    invoke-virtual {p0, p1, p3}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

    .line 4
    iget p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mWithPos:I

    invoke-virtual {p0, p1, p4}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

    .line 5
    iget p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mStridePos:I

    invoke-virtual {p0, p1, p5}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

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

    const-string v0, "c"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mCPos:I

    .line 3
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "mode"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mModePos:I

    .line 4
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string/jumbo v0, "width"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mWithPos:I

    .line 5
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string/jumbo v0, "stride"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mStridePos:I

    .line 6
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "alpha"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mAlphaPos:I

    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    return-void
.end method

.method public setNextFrameTimestamp(J)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->setNextFrameTimestamp(J)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    invoke-direct {v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->mEffectStartTime:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 v0, 0x12c

    const v2, 0x3b449ba6    # 0.003f

    const/4 v3, 0x0

    const v4, 0x3cf5c28f    # 0.03f

    cmp-long v5, p1, v0

    if-gez v5, :cond_1

    .line 5
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iput v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    .line 6
    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->stride:F

    .line 7
    iput v2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->width:F

    goto/16 :goto_0

    :cond_1
    const-wide/16 v0, 0x15e

    const v5, 0x3c75c28f    # 0.015f

    cmp-long v6, p1, v0

    if-gez v6, :cond_2

    .line 8
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iput v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    .line 9
    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->stride:F

    .line 10
    iput v5, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->width:F

    goto/16 :goto_0

    :cond_2
    const-wide/16 v0, 0x190

    const v6, 0x3cc49ba6    # 0.024f

    cmp-long v7, p1, v0

    if-gez v7, :cond_3

    .line 11
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iput v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    .line 12
    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->stride:F

    .line 13
    iput v6, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->width:F

    goto/16 :goto_0

    :cond_3
    const-wide/16 v0, 0x1f4

    cmp-long v7, p1, v0

    if-gez v7, :cond_4

    .line 14
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iput v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    .line 15
    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->stride:F

    .line 16
    iput v5, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->width:F

    goto/16 :goto_0

    :cond_4
    const-wide/16 v0, 0x258

    cmp-long v7, p1, v0

    if-gez v7, :cond_5

    .line 17
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iput v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    .line 18
    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->stride:F

    .line 19
    iput v2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->width:F

    goto/16 :goto_0

    :cond_5
    const-wide/16 v0, 0x28a

    cmp-long v7, p1, v0

    if-gez v7, :cond_6

    .line 20
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iput v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    .line 21
    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->stride:F

    .line 22
    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->width:F

    goto/16 :goto_0

    :cond_6
    const-wide/16 v0, 0x2bc

    cmp-long v7, p1, v0

    if-gez v7, :cond_7

    .line 23
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iput v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    .line 24
    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->stride:F

    .line 25
    iput v5, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->width:F

    goto/16 :goto_0

    :cond_7
    const-wide/16 v0, 0x320

    cmp-long v7, p1, v0

    if-gez v7, :cond_8

    .line 26
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iput v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    .line 27
    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->stride:F

    .line 28
    iput v6, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->width:F

    goto/16 :goto_0

    :cond_8
    const-wide/16 v0, 0x384

    const/high16 v7, 0x3f800000    # 1.0f

    cmp-long v8, p1, v0

    if-gez v8, :cond_9

    .line 29
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iput v7, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    goto :goto_0

    :cond_9
    const-wide/16 v0, 0x3e8

    cmp-long v8, p1, v0

    if-gez v8, :cond_a

    .line 30
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iput v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    .line 31
    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->stride:F

    .line 32
    iput v5, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->width:F

    goto :goto_0

    :cond_a
    const-wide/16 v0, 0x41a

    cmp-long v8, p1, v0

    if-gez v8, :cond_b

    .line 33
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iput v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    .line 34
    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->stride:F

    .line 35
    iput v6, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->width:F

    goto :goto_0

    :cond_b
    const-wide/16 v0, 0x44c

    cmp-long v6, p1, v0

    if-gez v6, :cond_c

    .line 36
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iput v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    .line 37
    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->stride:F

    .line 38
    iput v5, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->width:F

    goto :goto_0

    :cond_c
    const-wide/16 v0, 0x4b0

    cmp-long v5, p1, v0

    if-gez v5, :cond_d

    .line 39
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iput v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    .line 40
    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->stride:F

    const p2, 0x3c1374bc    # 0.009f

    .line 41
    iput p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->width:F

    goto :goto_0

    :cond_d
    const-wide/16 v0, 0x5dc

    cmp-long v5, p1, v0

    if-gez v5, :cond_e

    .line 42
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iput v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    .line 43
    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->stride:F

    .line 44
    iput v2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->width:F

    goto :goto_0

    :cond_e
    const-wide/16 v0, 0x9c4

    cmp-long v2, p1, v0

    if-gez v2, :cond_f

    .line 45
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iput v7, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    goto :goto_0

    :cond_f
    const-wide/16 p1, -0x1

    .line 46
    iput-wide p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->mEffectStartTime:J

    .line 47
    :goto_0
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->mLinearShadowParm:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;

    iget v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->mode:F

    iget v2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->alpha:F

    iget v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->offset:F

    iget v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->width:F

    iget v5, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter$LinearShadowParam;->stride:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPULinearShadowFilter;->setParamsInternal(FFFFF)V

    return-void
.end method
