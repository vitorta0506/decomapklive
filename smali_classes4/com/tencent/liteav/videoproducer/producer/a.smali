.class public final Lcom/tencent/liteav/videoproducer/producer/a;
.super Lcom/tencent/liteav/videobase/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videobase/videobase/c$a;


# instance fields
.field b:Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;

.field c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

.field d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field e:Z

.field private final f:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

.field private final g:Lcom/tencent/liteav/base/util/q;

.field private final h:Lcom/tencent/liteav/videobase/utils/d;

.field private i:Lcom/tencent/liteav/videobase/frame/l;

.field private j:Lcom/tencent/liteav/videobase/videobase/c;

.field private k:Lcom/tencent/liteav/videobase/frame/j;

.field private l:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private m:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private n:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private o:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private p:Z

.field private q:I


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/a/a;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->g:Lcom/tencent/liteav/base/util/q;

    .line 3
    new-instance v0, Lcom/tencent/liteav/videobase/utils/d;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/utils/d;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->h:Lcom/tencent/liteav/videobase/utils/d;

    .line 4
    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->e:Z

    .line 5
    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->p:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->q:I

    .line 7
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->f:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    return-void
.end method


# virtual methods
.method public final a(JLcom/tencent/liteav/videobase/frame/d;)Lcom/tencent/liteav/videobase/frame/d;
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    const-string v9, "CustomVideoProcessListenerAdapter"

    .line 1
    iget-object v0, v7, Lcom/tencent/liteav/videoproducer/producer/a;->h:Lcom/tencent/liteav/videobase/utils/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/d;->a()V

    .line 2
    iget-object v0, v7, Lcom/tencent/liteav/videoproducer/producer/a;->b:Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;

    if-nez v0, :cond_0

    return-object v8

    :cond_0
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 3
    :try_start_0
    iget-object v0, v7, Lcom/tencent/liteav/videoproducer/producer/a;->i:Lcom/tencent/liteav/videobase/frame/l;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/h;->a()Lcom/tencent/liteav/videobase/frame/k;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videobase/frame/l$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v0, v1, v11

    const-string v0, "TextureHolderPool obtain interrupted."

    .line 4
    invoke-static {v9, v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v12

    :goto_0
    if-nez v0, :cond_1

    return-object v8

    .line 5
    :cond_1
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->g:Lcom/tencent/liteav/base/util/q;

    iget v1, v1, Lcom/tencent/liteav/base/util/q;->a:I

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->b()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->g:Lcom/tencent/liteav/base/util/q;

    iget v1, v1, Lcom/tencent/liteav/base/util/q;->b:I

    .line 6
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->c()I

    move-result v2

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 7
    :goto_2
    iget-boolean v2, v7, Lcom/tencent/liteav/videoproducer/producer/a;->e:Z

    const/16 v13, 0x1908

    const/4 v14, -0x1

    if-nez v2, :cond_4

    if-eqz v1, :cond_9

    .line 8
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->b()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->c()I

    move-result v2

    .line 9
    iget-object v3, v7, Lcom/tencent/liteav/videoproducer/producer/a;->j:Lcom/tencent/liteav/videobase/videobase/c;

    if-eqz v3, :cond_5

    const/16 v4, 0x65

    .line 10
    invoke-virtual {v3, v4, v7}, Lcom/tencent/liteav/videobase/videobase/c;->a(ILcom/tencent/liteav/videobase/videobase/c$a;)V

    .line 11
    new-instance v3, Lcom/tencent/liteav/videobase/videobase/a;

    invoke-direct {v3, v1, v2}, Lcom/tencent/liteav/videobase/videobase/a;-><init>(II)V

    .line 12
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->j:Lcom/tencent/liteav/videobase/videobase/c;

    iget-object v4, v7, Lcom/tencent/liteav/videoproducer/producer/a;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iget-object v5, v7, Lcom/tencent/liteav/videoproducer/producer/a;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/16 v6, 0x65

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/liteav/videobase/videobase/c;->a(Lcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ILcom/tencent/liteav/videobase/videobase/c$a;)V

    .line 13
    :cond_5
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->k:Lcom/tencent/liteav/videobase/frame/j;

    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 15
    iput-object v12, v7, Lcom/tencent/liteav/videoproducer/producer/a;->k:Lcom/tencent/liteav/videobase/frame/j;

    .line 16
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->b()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->c()I

    move-result v2

    .line 17
    iget-object v3, v7, Lcom/tencent/liteav/videoproducer/producer/a;->m:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-eqz v3, :cond_7

    .line 18
    invoke-virtual {v3, v12}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setData([B)V

    .line 19
    iget-object v3, v7, Lcom/tencent/liteav/videoproducer/producer/a;->m:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v3, v12}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 20
    iget-object v3, v7, Lcom/tencent/liteav/videoproducer/producer/a;->m:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    .line 21
    iget-object v3, v7, Lcom/tencent/liteav/videoproducer/producer/a;->m:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v3, v14}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTextureId(I)V

    .line 22
    :cond_7
    iget v3, v7, Lcom/tencent/liteav/videoproducer/producer/a;->q:I

    if-eq v3, v14, :cond_8

    .line 23
    invoke-static {v3}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    .line 24
    iput v14, v7, Lcom/tencent/liteav/videoproducer/producer/a;->q:I

    .line 25
    :cond_8
    invoke-static {v1, v2, v13, v13}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createTexture(IIII)I

    move-result v1

    iput v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->q:I

    .line 26
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->g:Lcom/tencent/liteav/base/util/q;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->b()I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/base/util/q;->a:I

    .line 27
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->g:Lcom/tencent/liteav/base/util/q;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->c()I

    move-result v2

    iput v2, v1, Lcom/tencent/liteav/base/util/q;->b:I

    .line 28
    iput-boolean v11, v7, Lcom/tencent/liteav/videoproducer/producer/a;->e:Z

    .line 29
    :cond_9
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->m:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->b()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->c()I

    move-result v3

    iget-object v4, v7, Lcom/tencent/liteav/videoproducer/producer/a;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    iget-object v5, v7, Lcom/tencent/liteav/videoproducer/producer/a;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    .line 30
    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    .line 31
    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    .line 32
    invoke-virtual {v1, v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelFormatType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    .line 33
    invoke-virtual {v1, v5}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    .line 34
    sget-object v6, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v5, v6, :cond_a

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result v15

    if-ne v15, v14, :cond_a

    .line 35
    invoke-static {v2, v3, v13, v13}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createTexture(IIII)I

    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTextureId(I)V

    goto :goto_4

    .line 37
    :cond_a
    sget-object v15, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-eq v4, v15, :cond_b

    sget-object v15, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-eq v4, v15, :cond_b

    sget-object v15, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-ne v4, v15, :cond_e

    .line 38
    :cond_b
    sget-object v15, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    mul-int v2, v2, v3

    if-ne v4, v15, :cond_c

    mul-int/lit8 v2, v2, 0x4

    goto :goto_3

    :cond_c
    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    .line 39
    :goto_3
    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v5, v3, :cond_d

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getData()[B

    move-result-object v3

    if-nez v3, :cond_d

    .line 40
    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setData([B)V

    goto :goto_4

    .line 41
    :cond_d
    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v5, v3, :cond_e

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_e

    .line 42
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 43
    :cond_e
    :goto_4
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->j:Lcom/tencent/liteav/videobase/videobase/c;

    move-wide/from16 v2, p1

    invoke-virtual {v1, v2, v3, v8}, Lcom/tencent/liteav/videobase/videobase/c;->a(JLcom/tencent/liteav/videobase/frame/d;)V

    .line 44
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->l:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-nez v1, :cond_f

    const-string v1, "mInputFrame is null"

    .line 45
    invoke-static {v9, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    return-object v8

    .line 47
    :cond_f
    iget-object v2, v7, Lcom/tencent/liteav/videoproducer/producer/a;->n:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v2, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->copy(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 48
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->o:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v2, v7, Lcom/tencent/liteav/videoproducer/producer/a;->m:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->copy(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 49
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->b:Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;

    iget-object v2, v7, Lcom/tencent/liteav/videoproducer/producer/a;->n:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v3, v7, Lcom/tencent/liteav/videoproducer/producer/a;->o:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-interface {v1, v2, v3}, Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;->onProcessFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 50
    :try_start_1
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->l:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v2, v7, Lcom/tencent/liteav/videoproducer/producer/a;->o:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 51
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_14

    .line 52
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_14

    .line 53
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v4

    if-ne v3, v4, :cond_14

    .line 54
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v1

    if-ne v3, v1, :cond_14

    .line 55
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v1

    if-ne v1, v6, :cond_10

    .line 56
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTextureId()I

    move-result v1

    if-eq v1, v14, :cond_12

    .line 57
    :cond_10
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v1

    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v1, v3, :cond_11

    .line 58
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 59
    :cond_11
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v1

    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v1, v3, :cond_13

    .line 60
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_12

    goto :goto_5

    :cond_12
    const/4 v1, 0x0

    goto :goto_6

    :cond_13
    :goto_5
    const/4 v1, 0x1

    :goto_6
    if-nez v1, :cond_15

    :cond_14
    const-string v1, "custom video preprocess receive bad data."

    .line 61
    invoke-static {v9, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_15
    if-nez v10, :cond_16

    .line 62
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/k;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    iget-object v0, v7, Lcom/tencent/liteav/videoproducer/producer/a;->l:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    .line 64
    iput-object v12, v7, Lcom/tencent/liteav/videoproducer/producer/a;->l:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    return-object v8

    .line 65
    :cond_16
    :try_start_2
    iget v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->q:I

    iget-object v2, v7, Lcom/tencent/liteav/videoproducer/producer/a;->o:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 66
    iget-object v3, v7, Lcom/tencent/liteav/videoproducer/producer/a;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    const/16 v4, 0xde1

    if-eq v3, v6, :cond_18

    iget-object v5, v7, Lcom/tencent/liteav/videoproducer/producer/a;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    sget-object v6, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-ne v5, v6, :cond_18

    .line 67
    sget-object v5, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v3, v5, :cond_17

    .line 68
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_7

    .line 69
    :cond_17
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getData()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 70
    :goto_7
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v6

    .line 71
    invoke-static {v13, v3, v5, v6, v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->loadTexture(ILjava/nio/Buffer;III)I

    move-result v1

    .line 72
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v2

    .line 73
    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/tencent/liteav/videobase/frame/l$b;->a(IIII)V

    goto :goto_8

    .line 74
    :cond_18
    iget-object v3, v7, Lcom/tencent/liteav/videoproducer/producer/a;->k:Lcom/tencent/liteav/videobase/frame/j;

    if-nez v3, :cond_19

    .line 75
    new-instance v3, Lcom/tencent/liteav/videobase/frame/j;

    .line 76
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v6

    invoke-direct {v3, v5, v6}, Lcom/tencent/liteav/videobase/frame/j;-><init>(II)V

    iput-object v3, v7, Lcom/tencent/liteav/videoproducer/producer/a;->k:Lcom/tencent/liteav/videobase/frame/j;

    .line 77
    :cond_19
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v5

    .line 78
    invoke-virtual {v0, v4, v1, v3, v5}, Lcom/tencent/liteav/videobase/frame/l$b;->a(IIII)V

    .line 79
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->k:Lcom/tencent/liteav/videobase/frame/j;

    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/liteav/videobase/frame/j;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/frame/d;)V

    .line 80
    :goto_8
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/liteav/videobase/frame/d;->d()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object v1

    .line 81
    iput-object v1, v0, Lcom/tencent/liteav/videobase/frame/l$b;->e:Lcom/tencent/liteav/videobase/frame/FrameMetaData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->l:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    .line 83
    iput-object v12, v7, Lcom/tencent/liteav/videoproducer/producer/a;->l:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    return-object v0

    :catchall_0
    move-exception v0

    .line 84
    iget-object v1, v7, Lcom/tencent/liteav/videoproducer/producer/a;->l:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    .line 85
    iput-object v12, v7, Lcom/tencent/liteav/videoproducer/producer/a;->l:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 86
    throw v0
.end method

.method public final a(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCustomVideoProcessListener PixelFormatType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",  PixelBufferType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " listener= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomVideoProcessListenerAdapter"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->h:Lcom/tencent/liteav/videobase/utils/d;

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/producer/b;->a(Lcom/tencent/liteav/videoproducer/producer/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 89
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->p:Z

    if-nez v0, :cond_0

    .line 90
    invoke-interface {p1}, Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;->onGLContextCreated()V

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->p:Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->g:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/q;->d()Z

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->g:Lcom/tencent/liteav/base/util/q;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/tencent/liteav/base/util/q;->a(II)V

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->i:Lcom/tencent/liteav/videobase/frame/l;

    .line 15
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->n:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 16
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->o:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 17
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->l:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 18
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->m:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 19
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/a;->j:Lcom/tencent/liteav/videobase/videobase/c;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/videobase/c;->a()V

    .line 20
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->j:Lcom/tencent/liteav/videobase/videobase/c;

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->h:Lcom/tencent/liteav/videobase/utils/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/utils/d;->a()V

    .line 22
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->b:Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/producer/a;->b(Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)V

    return-void
.end method

.method public final b(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->g:Lcom/tencent/liteav/base/util/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/tencent/liteav/base/util/q;->a(II)V

    .line 5
    new-instance v0, Lcom/tencent/liteav/videobase/frame/l;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/l;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->i:Lcom/tencent/liteav/videobase/frame/l;

    .line 6
    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->n:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 7
    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->o:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 8
    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->m:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 9
    new-instance v0, Lcom/tencent/liteav/videobase/videobase/c;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/videobase/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->j:Lcom/tencent/liteav/videobase/videobase/c;

    .line 10
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/videobase/c;->a(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 11
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->h:Lcom/tencent/liteav/videobase/utils/d;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/producer/c;->a(Lcom/tencent/liteav/videoproducer/producer/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/utils/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final b(Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/a;->p:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;->onGLContextDestroy()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/producer/a;->p:Z

    :cond_0
    return-void
.end method

.method public final onFrameConverted(ILcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 1
    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/a;->l:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 2
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    return-void

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "CustomVideoProcessListenerAdapter"

    const-string v0, "Receive frame converted, but identity is invalid(%d)"

    invoke-static {p1, v0, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
