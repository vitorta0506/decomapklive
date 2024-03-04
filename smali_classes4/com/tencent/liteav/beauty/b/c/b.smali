.class public final Lcom/tencent/liteav/beauty/b/c/b;
.super Lcom/tencent/liteav/videobase/a/b;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private final c:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/tencent/liteav/videobase/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/liteav/beauty/b/c/b;->a:I

    .line 3
    iput v0, p0, Lcom/tencent/liteav/beauty/b/c/b;->b:I

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/c/b;->c:[F

    return-void
.end method

.method private a([F)V
    .locals 1

    .line 3
    iget v0, p0, Lcom/tencent/liteav/beauty/b/c/b;->b:I

    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/videobase/a/b;->setFloatVec4OnDraw(I[F)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/c/b;->c:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/liteav/beauty/b/c/b;->a([F)V

    return-void
.end method

.method public final b(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/c/b;->c:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/liteav/beauty/b/c/b;->a([F)V

    return-void
.end method

.method public final buildProgram()I
    .locals 1

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/tencent/liteav/beauty/NativeLoad;->nativeLoadGLProgram(I)I

    move-result v0

    return v0
.end method

.method public final c(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/c/b;->c:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/liteav/beauty/b/c/b;->a([F)V

    return-void
.end method

.method public final canBeSkipped()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/c/b;->c:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videobase/a/b;->isLessOrEqualZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/c/b;->c:[F

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videobase/a/b;->isLessOrEqualZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/c/b;->c:[F

    const/4 v3, 0x2

    aget v0, v0, v3

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videobase/a/b;->isLessOrEqualZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public final onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/a/b;->onInit(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string/jumbo v0, "singleStepOffset"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/beauty/b/c/b;->a:I

    .line 3
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "beautyParams"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/beauty/b/c/b;->b:I

    const/high16 p1, 0x40a00000    # 5.0f

    .line 4
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/beauty/b/c/b;->a(F)V

    return-void
.end method

.method public final onOutputSizeChanged(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    .line 2
    iget v0, p0, Lcom/tencent/liteav/beauty/b/c/b;->a:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float p1, v2, p1

    const/4 v3, 0x0

    aput p1, v1, v3

    int-to-float p1, p2

    div-float/2addr v2, p1

    const/4 p1, 0x1

    aput v2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/videobase/a/b;->setFloatVec2OnDraw(I[F)V

    return-void
.end method
