.class public Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;
.super Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;
    }
.end annotation


# static fields
.field private static final BLUR_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;  \nuniform sampler2D inputImageTexture;  \nvarying vec2 textureCoordinate;  \nvarying vec2 oneBackCoord;  \nvarying vec2 twoBackCoord;  \nvarying vec2 threeBackCoord;  \nvarying vec2 fourBackCoord;  \nvarying vec2 oneForwardCoord;  \nvarying vec2 twoForwardCoord;  \nvarying vec2 threeForwardCoord;  \nvarying vec2 fourForwardCoord;  \nvoid main() {   \n\tlowp vec4 fragmentColor = texture2D(inputImageTexture, textureCoordinate) * 0.18;  \n\tfragmentColor += texture2D(inputImageTexture, oneBackCoord) * 0.15;  \n\tfragmentColor += texture2D(inputImageTexture, twoBackCoord) * 0.12;  \n\tfragmentColor += texture2D(inputImageTexture, threeBackCoord) * 0.09;  \n\tfragmentColor += texture2D(inputImageTexture, fourBackCoord) * 0.05;  \n\tfragmentColor += texture2D(inputImageTexture, oneForwardCoord) * 0.15;  \n\tfragmentColor += texture2D(inputImageTexture, twoForwardCoord) * 0.12;  \n\tfragmentColor += texture2D(inputImageTexture, threeForwardCoord) * 0.09;  \n\tfragmentColor += texture2D(inputImageTexture, fourForwardCoord) * 0.05;  \n\tgl_FragColor = fragmentColor;  \n}  \n"

.field private static final BLUR_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;  \nattribute vec4 inputTextureCoordinate;\nuniform vec2 step;  \nvarying vec2 textureCoordinate;  \nvarying vec2 oneBackCoord;  \nvarying vec2 twoBackCoord;  \nvarying vec2 threeBackCoord;  \nvarying vec2 fourBackCoord;  \nvarying vec2 oneForwardCoord;  \nvarying vec2 twoForwardCoord;  \nvarying vec2 threeForwardCoord;  \nvarying vec2 fourForwardCoord;  \nvoid main() {  \n\tgl_Position = position;  \n\tvec2 coord = inputTextureCoordinate.xy;  \n\ttextureCoordinate = coord;  \n\toneBackCoord = coord.xy - step;  \n\ttwoBackCoord = coord.xy - 2.0 * step;  \n\tthreeBackCoord = coord.xy - 3.0 * step;  \n\tfourBackCoord = coord.xy - 4.0 * step;  \n\toneForwardCoord = coord.xy + step;  \n\ttwoForwardCoord = coord.xy + 2.0 * step;  \n\tthreeForwardCoord = coord.xy + 3.0 * step;  \n\tfourForwardCoord = coord.xy + 4.0 * step;  \n}  \n"

.field private static final DURATION_GHOST_LV1:I = 0x64

.field private static final DURATION_GHOST_LV2:I = 0xc8

.field private static final DURATION_GHOST_LV3:I = 0x12c

.field private static final DURATION_GHOST_LV4:I = 0x190

.field private static final DURATION_GHOST_LV5:I = 0x1f4

.field private static final DURATION_GHOST_LV6:I = 0x258

.field private static final DURATION_GHOST_LV7:I = 0x2bc

.field private static final DURATION_GHOST_LV8:I = 0x320

.field private static final DURATION_GHOST_LV9:I = 0x352

.field private static final SHIFT_FRAGMENT_SHADER:Ljava/lang/String; = "precision lowp float;  \nvarying vec2 textureCoordinate;  \n\tuniform sampler2D inputImageTexture;  \n\tuniform float shift;  \n\tuniform float alpha;  \n\tvoid main() { vec4 colorShift = texture2D(inputImageTexture, textureCoordinate + vec2(shift, 0.0));\n\tvec4 color = texture2D(inputImageTexture, textureCoordinate + vec2(shift * 0.1, 0.0));  \n\tgl_FragColor = vec4(mix(colorShift.rgb, color.rgb, alpha), color.a);  \n}  \n"


# instance fields
.field private mAlphaPos:I

.field private mBlur:F

.field private mBlurPos:I

.field private mGhostParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;

.field private final mShiftFilter:Lcom/tencent/liteav/videobase/a/b;

.field private mShiftPos:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "attribute vec4 position;  \nattribute vec4 inputTextureCoordinate;\nuniform vec2 step;  \nvarying vec2 textureCoordinate;  \nvarying vec2 oneBackCoord;  \nvarying vec2 twoBackCoord;  \nvarying vec2 threeBackCoord;  \nvarying vec2 fourBackCoord;  \nvarying vec2 oneForwardCoord;  \nvarying vec2 twoForwardCoord;  \nvarying vec2 threeForwardCoord;  \nvarying vec2 fourForwardCoord;  \nvoid main() {  \n\tgl_Position = position;  \n\tvec2 coord = inputTextureCoordinate.xy;  \n\ttextureCoordinate = coord;  \n\toneBackCoord = coord.xy - step;  \n\ttwoBackCoord = coord.xy - 2.0 * step;  \n\tthreeBackCoord = coord.xy - 3.0 * step;  \n\tfourBackCoord = coord.xy - 4.0 * step;  \n\toneForwardCoord = coord.xy + step;  \n\ttwoForwardCoord = coord.xy + 2.0 * step;  \n\tthreeForwardCoord = coord.xy + 3.0 * step;  \n\tfourForwardCoord = coord.xy + 4.0 * step;  \n}  \n"

    const-string v1, "precision mediump float;  \nuniform sampler2D inputImageTexture;  \nvarying vec2 textureCoordinate;  \nvarying vec2 oneBackCoord;  \nvarying vec2 twoBackCoord;  \nvarying vec2 threeBackCoord;  \nvarying vec2 fourBackCoord;  \nvarying vec2 oneForwardCoord;  \nvarying vec2 twoForwardCoord;  \nvarying vec2 threeForwardCoord;  \nvarying vec2 fourForwardCoord;  \nvoid main() {   \n\tlowp vec4 fragmentColor = texture2D(inputImageTexture, textureCoordinate) * 0.18;  \n\tfragmentColor += texture2D(inputImageTexture, oneBackCoord) * 0.15;  \n\tfragmentColor += texture2D(inputImageTexture, twoBackCoord) * 0.12;  \n\tfragmentColor += texture2D(inputImageTexture, threeBackCoord) * 0.09;  \n\tfragmentColor += texture2D(inputImageTexture, fourBackCoord) * 0.05;  \n\tfragmentColor += texture2D(inputImageTexture, oneForwardCoord) * 0.15;  \n\tfragmentColor += texture2D(inputImageTexture, twoForwardCoord) * 0.12;  \n\tfragmentColor += texture2D(inputImageTexture, threeForwardCoord) * 0.09;  \n\tfragmentColor += texture2D(inputImageTexture, fourForwardCoord) * 0.05;  \n\tgl_FragColor = fragmentColor;  \n}  \n"

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mShiftPos:I

    .line 3
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mAlphaPos:I

    .line 4
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mBlurPos:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mBlur:F

    .line 6
    new-instance v0, Lcom/tencent/liteav/videobase/a/b;

    const-string v1, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 textureTransform;\nvarying highp vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = (textureTransform * inputTextureCoordinate).xy;\n}"

    const-string v2, "precision lowp float;  \nvarying vec2 textureCoordinate;  \n\tuniform sampler2D inputImageTexture;  \n\tuniform float shift;  \n\tuniform float alpha;  \n\tvoid main() { vec4 colorShift = texture2D(inputImageTexture, textureCoordinate + vec2(shift, 0.0));\n\tvec4 color = texture2D(inputImageTexture, textureCoordinate + vec2(shift * 0.1, 0.0));  \n\tgl_FragColor = vec4(mix(colorShift.rgb, color.rgb, alpha), color.a);  \n}  \n"

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videobase/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mShiftFilter:Lcom/tencent/liteav/videobase/a/b;

    return-void
.end method


# virtual methods
.method public onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/b;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getOutputSize()Lcom/tencent/liteav/base/util/q;

    move-result-object v1

    iget v1, v1, Lcom/tencent/liteav/base/util/q;->a:I

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getOutputSize()Lcom/tencent/liteav/base/util/q;

    move-result-object v2

    iget v2, v2, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v0

    .line 2
    invoke-super {p0, p1, v0, p3, p4}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 3
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mShiftFilter:Lcom/tencent/liteav/videobase/a/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v1

    invoke-virtual {p1, v1, p2, p3, p4}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 4
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    return-void
.end method

.method public onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->onInit(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result v0

    const-string/jumbo v1, "step"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mBlurPos:I

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mShiftFilter:Lcom/tencent/liteav/videobase/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 4
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "shift"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mShiftPos:I

    .line 5
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "alpha"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mAlphaPos:I

    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mShiftFilter:Lcom/tencent/liteav/videobase/a/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    iget p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mBlur:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    .line 5
    iget p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mBlurPos:I

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mBlur:F

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getOutputSize()Lcom/tencent/liteav/base/util/q;

    move-result-object v2

    iget v2, v2, Lcom/tencent/liteav/base/util/q;->a:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->setFloatVec2OnDraw(I[F)V

    :cond_1
    return-void
.end method

.method public onUninit()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/liteav/videobase/a/b;->onUninit()V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mShiftFilter:Lcom/tencent/liteav/videobase/a/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    return-void
.end method

.method public setNextFrameTimestamp(J)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->setNextFrameTimestamp(J)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mGhostParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;

    invoke-direct {v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mGhostParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;

    .line 4
    iput v1, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->blur:F

    .line 5
    iput v1, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->shift:F

    .line 6
    iput v1, v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->alpha:F

    .line 7
    :cond_0
    iget-wide v2, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->mEffectStartTime:J

    sub-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 v2, 0x64

    const v0, 0x3c23d70a    # 0.01f

    const/high16 v4, 0x41200000    # 10.0f

    cmp-long v5, p1, v2

    if-gez v5, :cond_1

    .line 8
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mGhostParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;

    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->blur:F

    .line 9
    iput v0, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->shift:F

    .line 10
    iput v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->alpha:F

    goto/16 :goto_0

    :cond_1
    const-wide/16 v2, 0xc8

    const v5, -0x435c28f6    # -0.02f

    const/high16 v6, 0x41a00000    # 20.0f

    cmp-long v7, p1, v2

    if-gez v7, :cond_2

    .line 11
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mGhostParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;

    iput v6, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->blur:F

    .line 12
    iput v5, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->shift:F

    .line 13
    iput v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->alpha:F

    goto/16 :goto_0

    :cond_2
    const-wide/16 v2, 0x12c

    const v7, 0x3ca3d70a    # 0.02f

    const/high16 v8, 0x41f00000    # 30.0f

    cmp-long v9, p1, v2

    if-gez v9, :cond_3

    .line 14
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mGhostParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;

    iput v8, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->blur:F

    .line 15
    iput v7, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->shift:F

    .line 16
    iput v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->alpha:F

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x190

    const v9, -0x430a3d71    # -0.03f

    cmp-long v10, p1, v2

    if-gez v10, :cond_4

    .line 17
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mGhostParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;

    iput v6, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->blur:F

    .line 18
    iput v9, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->shift:F

    .line 19
    iput v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->alpha:F

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x1f4

    cmp-long v10, p1, v2

    if-gez v10, :cond_5

    .line 20
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mGhostParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;

    iput v4, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->blur:F

    .line 21
    iput v0, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->shift:F

    .line 22
    iput v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->alpha:F

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x258

    cmp-long v0, p1, v2

    if-gez v0, :cond_6

    .line 23
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mGhostParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;

    iput v6, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->blur:F

    .line 24
    iput v5, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->shift:F

    .line 25
    iput v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->alpha:F

    goto :goto_0

    :cond_6
    const-wide/16 v2, 0x2bc

    cmp-long v0, p1, v2

    if-gez v0, :cond_7

    .line 26
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mGhostParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;

    iput v8, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->blur:F

    .line 27
    iput v9, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->shift:F

    .line 28
    iput v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->alpha:F

    goto :goto_0

    :cond_7
    const-wide/16 v2, 0x320

    cmp-long v0, p1, v2

    if-gez v0, :cond_8

    .line 29
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mGhostParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;

    iput v6, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->blur:F

    .line 30
    iput v7, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->shift:F

    .line 31
    iput v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->alpha:F

    goto :goto_0

    :cond_8
    const-wide/16 v2, 0x352

    cmp-long v0, p1, v2

    if-gez v0, :cond_9

    .line 32
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mGhostParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;

    iput v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->blur:F

    .line 33
    iput v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->shift:F

    .line 34
    iput v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->alpha:F

    goto :goto_0

    :cond_9
    const-wide/16 p1, -0x1

    .line 35
    iput-wide p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->mEffectStartTime:J

    .line 36
    :goto_0
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mGhostParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;

    invoke-virtual {p0, p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->updateParams(Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;)V

    return-void
.end method

.method public updateParams(Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;)V
    .locals 5

    .line 1
    iget v0, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->blur:F

    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mBlur:F

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getOutputSize()Lcom/tencent/liteav/base/util/q;

    move-result-object v0

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->a:I

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mBlurPos:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->blur:F

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getOutputSize()Lcom/tencent/liteav/base/util/q;

    move-result-object v4

    iget v4, v4, Lcom/tencent/liteav/base/util/q;->a:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/videobase/a/b;->setFloatVec2OnDraw(I[F)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mShiftFilter:Lcom/tencent/liteav/videobase/a/b;

    iget v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mAlphaPos:I

    iget v2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->alpha:F

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mShiftFilter:Lcom/tencent/liteav/videobase/a/b;

    iget v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter;->mShiftPos:I

    iget p1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUGhostFilter$GhostParam;->shift:F

    invoke-virtual {v0, v1, p1}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

    return-void
.end method
