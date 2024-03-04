.class public final Lcom/tencent/liteav/beauty/b/e;
.super Lcom/tencent/liteav/videobase/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/beauty/b/e$b;,
        Lcom/tencent/liteav/beauty/b/e$a;,
        Lcom/tencent/liteav/beauty/b/e$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/nio/FloatBuffer;

.field private final b:Ljava/nio/FloatBuffer;

.field private final c:Lcom/tencent/liteav/beauty/b/c;

.field private final d:Lcom/tencent/liteav/videobase/a/b;

.field private final e:Lcom/tencent/liteav/beauty/b/e$c;

.field private final f:Lcom/tencent/liteav/beauty/b/e$a;

.field private final g:Lcom/tencent/liteav/beauty/b/e$b;

.field private h:F

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/a/b;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    .line 2
    iput v0, p0, Lcom/tencent/liteav/beauty/b/e;->h:F

    .line 3
    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createNormalCubeVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->a:Ljava/nio/FloatBuffer;

    .line 4
    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1, v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createTextureCoordsBuffer(Lcom/tencent/liteav/videobase/utils/Rotation;ZZ)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->b:Ljava/nio/FloatBuffer;

    .line 6
    new-instance v0, Lcom/tencent/liteav/beauty/b/c;

    invoke-direct {v0}, Lcom/tencent/liteav/beauty/b/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->c:Lcom/tencent/liteav/beauty/b/c;

    .line 7
    new-instance v0, Lcom/tencent/liteav/beauty/b/e$c;

    invoke-direct {v0}, Lcom/tencent/liteav/beauty/b/e$c;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->e:Lcom/tencent/liteav/beauty/b/e$c;

    .line 8
    new-instance v0, Lcom/tencent/liteav/beauty/b/e$a;

    const-string v1, "precision highp float;\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputImageTexture2;\nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\nvoid main()\n{\n    gl_FragColor = texture2D(inputImageTexture2, textureCoordinate2) - texture2D(inputImageTexture, textureCoordinate) * texture2D(inputImageTexture2, textureCoordinate2);\n}\n"

    invoke-direct {v0, v1}, Lcom/tencent/liteav/beauty/b/e$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->f:Lcom/tencent/liteav/beauty/b/e$a;

    .line 9
    new-instance v0, Lcom/tencent/liteav/beauty/b/e$b;

    const-string v1, "precision highp float;\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputImageTexture2;\nuniform sampler2D inputImageTexture3;\nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\nvarying vec2 textureCoordinate3;\nvoid main()\n{\n    gl_FragColor = texture2D(inputImageTexture, textureCoordinate) * texture2D(inputImageTexture3, textureCoordinate3) + texture2D(inputImageTexture2, textureCoordinate2);\n}\n"

    invoke-direct {v0, v1}, Lcom/tencent/liteav/beauty/b/e$b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->g:Lcom/tencent/liteav/beauty/b/e$b;

    .line 10
    new-instance v0, Lcom/tencent/liteav/videobase/a/b;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/a/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->d:Lcom/tencent/liteav/videobase/a/b;

    return-void
.end method


# virtual methods
.method public final onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->runPendingOnDrawTasks()V

    const/4 v0, 0x0

    .line 3
    iget v1, p0, Lcom/tencent/liteav/beauty/b/e;->i:I

    iget-object v2, p0, Lcom/tencent/liteav/videobase/a/b;->mOutputSize:Lcom/tencent/liteav/base/util/q;

    iget v3, v2, Lcom/tencent/liteav/base/util/q;->a:I

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    iget v3, p0, Lcom/tencent/liteav/beauty/b/e;->j:I

    iget v2, v2, Lcom/tencent/liteav/base/util/q;->b:I

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move p3, p1

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/b;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget v2, p0, Lcom/tencent/liteav/beauty/b/e;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v0

    .line 5
    iget v1, p0, Lcom/tencent/liteav/beauty/b/e;->i:I

    iget v2, p0, Lcom/tencent/liteav/beauty/b/e;->j:I

    invoke-static {v4, v4, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 6
    iget-object v1, p0, Lcom/tencent/liteav/beauty/b/e;->d:Lcom/tencent/liteav/videobase/a/b;

    invoke-virtual {v1, p1, v0, p3, p4}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 7
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result p3

    .line 8
    :goto_1
    iget-object p4, p0, Lcom/tencent/liteav/videobase/a/b;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget v1, p0, Lcom/tencent/liteav/beauty/b/e;->i:I

    iget v2, p0, Lcom/tencent/liteav/beauty/b/e;->j:I

    invoke-virtual {p4, v1, v2}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p4

    .line 9
    iget-object v1, p0, Lcom/tencent/liteav/videobase/a/b;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget v2, p0, Lcom/tencent/liteav/beauty/b/e;->i:I

    iget v3, p0, Lcom/tencent/liteav/beauty/b/e;->j:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/tencent/liteav/beauty/b/e;->c:Lcom/tencent/liteav/beauty/b/c;

    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/e;->a:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/tencent/liteav/beauty/b/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, p3, p4, v3, v5}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 11
    iget-object v2, p0, Lcom/tencent/liteav/beauty/b/e;->e:Lcom/tencent/liteav/beauty/b/e$c;

    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videobase/c/d;->setSecondInputTexture(I)V

    .line 12
    iget-object v2, p0, Lcom/tencent/liteav/beauty/b/e;->e:Lcom/tencent/liteav/beauty/b/e$c;

    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/e;->a:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/tencent/liteav/beauty/b/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, p3, v1, v3, v5}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 14
    :cond_3
    iget-object p3, p0, Lcom/tencent/liteav/videobase/a/b;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget v0, p0, Lcom/tencent/liteav/beauty/b/e;->i:I

    iget v2, p0, Lcom/tencent/liteav/beauty/b/e;->j:I

    invoke-virtual {p3, v0, v2}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p3

    .line 15
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->f:Lcom/tencent/liteav/beauty/b/e$a;

    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/videobase/c/d;->setSecondInputTexture(I)V

    .line 16
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->f:Lcom/tencent/liteav/beauty/b/e$a;

    .line 17
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/e;->a:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/tencent/liteav/beauty/b/e;->b:Ljava/nio/FloatBuffer;

    .line 18
    invoke-virtual {v0, v2, p3, v3, v5}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 19
    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 20
    iget-object p4, p0, Lcom/tencent/liteav/videobase/a/b;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget v0, p0, Lcom/tencent/liteav/beauty/b/e;->i:I

    iget v2, p0, Lcom/tencent/liteav/beauty/b/e;->j:I

    invoke-virtual {p4, v0, v2}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p4

    .line 21
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->c:Lcom/tencent/liteav/beauty/b/c;

    .line 22
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/e;->a:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/tencent/liteav/beauty/b/e;->b:Ljava/nio/FloatBuffer;

    .line 23
    invoke-virtual {v0, v2, p4, v3, v5}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 24
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 25
    iget-object v0, p0, Lcom/tencent/liteav/videobase/a/b;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget v1, p0, Lcom/tencent/liteav/beauty/b/e;->i:I

    iget v2, p0, Lcom/tencent/liteav/beauty/b/e;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/tencent/liteav/beauty/b/e;->c:Lcom/tencent/liteav/beauty/b/c;

    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/e;->a:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/tencent/liteav/beauty/b/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2, v0, v3, v5}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 27
    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 28
    iget p3, p0, Lcom/tencent/liteav/beauty/b/e;->h:F

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "inputImageTexture3"

    cmpl-float p3, p3, v1

    if-eqz p3, :cond_4

    .line 29
    iget-object p3, p0, Lcom/tencent/liteav/videobase/a/b;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/a/b;->mOutputSize:Lcom/tencent/liteav/base/util/q;

    iget v3, v1, Lcom/tencent/liteav/base/util/q;->a:I

    iget v1, v1, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {p3, v3, v1}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object p3

    .line 30
    iget-object v1, p0, Lcom/tencent/liteav/videobase/a/b;->mTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    iget-object v3, p0, Lcom/tencent/liteav/videobase/a/b;->mOutputSize:Lcom/tencent/liteav/base/util/q;

    iget v5, v3, Lcom/tencent/liteav/base/util/q;->a:I

    iget v3, v3, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v1, v5, v3}, Lcom/tencent/liteav/videobase/frame/e;->a(II)Lcom/tencent/liteav/videobase/frame/d;

    move-result-object v1

    .line 31
    iget-object v3, p0, Lcom/tencent/liteav/videobase/a/b;->mOutputSize:Lcom/tencent/liteav/base/util/q;

    iget v5, v3, Lcom/tencent/liteav/base/util/q;->a:I

    iget v3, v3, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-static {v4, v4, v5, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 32
    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/e;->d:Lcom/tencent/liteav/videobase/a/b;

    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/liteav/beauty/b/e;->a:Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lcom/tencent/liteav/beauty/b/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4, p3, v5, v6}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 33
    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/e;->d:Lcom/tencent/liteav/videobase/a/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/liteav/beauty/b/e;->a:Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lcom/tencent/liteav/beauty/b/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 34
    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/e;->g:Lcom/tencent/liteav/beauty/b/e$b;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/videobase/c/d;->setSecondInputTexture(I)V

    .line 35
    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/e;->g:Lcom/tencent/liteav/beauty/b/e$b;

    .line 36
    invoke-virtual {v3, v2, p1}, Lcom/tencent/liteav/videobase/a/j;->setInputTexture(Ljava/lang/String;I)V

    .line 37
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/e;->g:Lcom/tencent/liteav/beauty/b/e$b;

    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/beauty/b/e;->a:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/tencent/liteav/beauty/b/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v2, p2, v3, v4}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 38
    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 39
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    goto :goto_2

    .line 40
    :cond_4
    iget-object p3, p0, Lcom/tencent/liteav/beauty/b/e;->g:Lcom/tencent/liteav/beauty/b/e$b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/tencent/liteav/videobase/c/d;->setSecondInputTexture(I)V

    .line 41
    iget-object p3, p0, Lcom/tencent/liteav/beauty/b/e;->g:Lcom/tencent/liteav/beauty/b/e$b;

    .line 42
    invoke-virtual {p3, v2, p1}, Lcom/tencent/liteav/videobase/a/j;->setInputTexture(Ljava/lang/String;I)V

    .line 43
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/e;->g:Lcom/tencent/liteav/beauty/b/e$b;

    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result p3

    iget-object v1, p0, Lcom/tencent/liteav/beauty/b/e;->a:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/tencent/liteav/beauty/b/e;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p3, p2, v1, v2}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 44
    :goto_2
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 45
    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    return-void
.end method

.method public final onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/a/b;->onInit(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->c:Lcom/tencent/liteav/beauty/b/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->e:Lcom/tencent/liteav/beauty/b/e$c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->f:Lcom/tencent/liteav/beauty/b/e$a;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->g:Lcom/tencent/liteav/beauty/b/e$b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->d:Lcom/tencent/liteav/videobase/a/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/a/b;->initialize(Lcom/tencent/liteav/videobase/frame/e;)V

    return-void
.end method

.method public final onOutputSizeChanged(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/beauty/b/e;->k:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_3

    const/high16 v0, 0x40800000    # 4.0f

    const/16 v2, 0x21c

    if-ge p1, p2, :cond_1

    if-ge p1, v2, :cond_0

    .line 3
    iput v1, p0, Lcom/tencent/liteav/beauty/b/e;->h:F

    goto :goto_0

    .line 4
    :cond_0
    iput v0, p0, Lcom/tencent/liteav/beauty/b/e;->h:F

    goto :goto_0

    :cond_1
    if-ge p2, v2, :cond_2

    .line 5
    iput v1, p0, Lcom/tencent/liteav/beauty/b/e;->h:F

    goto :goto_0

    .line 6
    :cond_2
    iput v0, p0, Lcom/tencent/liteav/beauty/b/e;->h:F

    .line 7
    :cond_3
    :goto_0
    iget v0, p0, Lcom/tencent/liteav/beauty/b/e;->h:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iput p1, p0, Lcom/tencent/liteav/beauty/b/e;->i:I

    .line 9
    iput p2, p0, Lcom/tencent/liteav/beauty/b/e;->j:I

    goto :goto_1

    :cond_4
    int-to-float v0, p1

    .line 10
    iget v1, p0, Lcom/tencent/liteav/beauty/b/e;->h:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/liteav/beauty/b/e;->i:I

    int-to-float v0, p2

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 11
    iput v0, p0, Lcom/tencent/liteav/beauty/b/e;->j:I

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->d:Lcom/tencent/liteav/videobase/a/b;

    iget v1, p0, Lcom/tencent/liteav/beauty/b/e;->i:I

    iget v2, p0, Lcom/tencent/liteav/beauty/b/e;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->e:Lcom/tencent/liteav/beauty/b/e$c;

    iget v1, p0, Lcom/tencent/liteav/beauty/b/e;->i:I

    iget v2, p0, Lcom/tencent/liteav/beauty/b/e;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/beauty/b/e$c;->onOutputSizeChanged(II)V

    .line 14
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->f:Lcom/tencent/liteav/beauty/b/e$a;

    iget v1, p0, Lcom/tencent/liteav/beauty/b/e;->i:I

    iget v2, p0, Lcom/tencent/liteav/beauty/b/e;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videobase/a/b;->onOutputSizeChanged(II)V

    .line 15
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->g:Lcom/tencent/liteav/beauty/b/e$b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/videobase/c/c;->onOutputSizeChanged(II)V

    .line 16
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/e;->c:Lcom/tencent/liteav/beauty/b/c;

    iget p2, p0, Lcom/tencent/liteav/beauty/b/e;->i:I

    iget v0, p0, Lcom/tencent/liteav/beauty/b/e;->j:I

    invoke-virtual {p1, p2, v0}, Lcom/tencent/liteav/beauty/b/c;->onOutputSizeChanged(II)V

    return-void
.end method

.method public final onUninit()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/liteav/videobase/a/b;->onUninit()V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->c:Lcom/tencent/liteav/beauty/b/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->e:Lcom/tencent/liteav/beauty/b/e$c;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->f:Lcom/tencent/liteav/beauty/b/e$a;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->g:Lcom/tencent/liteav/beauty/b/e$b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/e;->d:Lcom/tencent/liteav/videobase/a/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    return-void
.end method
