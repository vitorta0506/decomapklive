.class public final Lcom/tencent/liteav/beauty/b/b/b;
.super Lcom/tencent/liteav/videobase/c/d;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:F

.field d:F

.field private e:I

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videobase/c/d;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/liteav/beauty/b/b/b;->e:I

    .line 3
    iput v0, p0, Lcom/tencent/liteav/beauty/b/b/b;->a:I

    .line 4
    iput v0, p0, Lcom/tencent/liteav/beauty/b/b/b;->b:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tencent/liteav/beauty/b/b/b;->c:F

    .line 6
    iput v0, p0, Lcom/tencent/liteav/beauty/b/b/b;->d:F

    .line 7
    iput v0, p0, Lcom/tencent/liteav/beauty/b/b/b;->f:F

    return-void
.end method


# virtual methods
.method public final buildProgram()I
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/tencent/liteav/beauty/NativeLoad;->nativeLoadGLProgram(I)I

    move-result v0

    return v0
.end method

.method public final canBeSkipped()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/liteav/beauty/b/b/b;->c:F

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videobase/a/b;->isLessOrEqualZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/beauty/b/b/b;->d:F

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videobase/a/b;->isLessOrEqualZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/beauty/b/b/b;->f:F

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videobase/a/b;->isLessOrEqualZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/c/d;->onInit(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string/jumbo v0, "whiteDegree"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/beauty/b/b/b;->a:I

    .line 3
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "contrast"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/beauty/b/b/b;->e:I

    .line 4
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getProgramId()I

    move-result p1

    const-string v0, "ruddyDegree"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/beauty/b/b/b;->b:I

    return-void
.end method
