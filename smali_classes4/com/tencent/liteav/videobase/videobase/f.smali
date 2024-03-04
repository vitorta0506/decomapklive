.class final Lcom/tencent/liteav/videobase/videobase/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videobase/videobase/f$a;
    }
.end annotation


# static fields
.field static final a:[Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;


# instance fields
.field final b:Ljava/nio/FloatBuffer;

.field final c:Ljava/nio/FloatBuffer;

.field final d:Lcom/tencent/liteav/videobase/videobase/a;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videobase/videobase/f$a;",
            ">;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;",
            "Lcom/tencent/liteav/videobase/a/b;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/tencent/liteav/videobase/frame/j;

.field h:Z

.field i:Lcom/tencent/liteav/videobase/frame/i;

.field j:Lcom/tencent/liteav/videobase/frame/e;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/liteav/videobase/videobase/f;->a:[Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/videobase/videobase/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->k:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->h:Z

    .line 4
    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createNormalCubeVerticesBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/videobase/videobase/f;->b:Ljava/nio/FloatBuffer;

    .line 5
    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 6
    invoke-static {v1, v0, v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->createTextureCoordsBuffer(Lcom/tencent/liteav/videobase/utils/Rotation;ZZ)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->c:Ljava/nio/FloatBuffer;

    .line 7
    iput-object p1, p0, Lcom/tencent/liteav/videobase/videobase/f;->d:Lcom/tencent/liteav/videobase/videobase/a;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/videobase/f;->e:Ljava/util/Map;

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videobase/videobase/f;->f:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/frame/d;Ljava/lang/Object;)V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->d:Lcom/tencent/liteav/videobase/videobase/a;

    iget v1, v0, Lcom/tencent/liteav/videobase/videobase/a;->a:I

    .line 49
    iget v0, v0, Lcom/tencent/liteav/videobase/videobase/a;->b:I

    .line 50
    iget v2, p0, Lcom/tencent/liteav/videobase/videobase/f;->k:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 51
    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->generateFrameBufferId()I

    move-result v2

    iput v2, p0, Lcom/tencent/liteav/videobase/videobase/f;->k:I

    .line 52
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/d;->a()I

    move-result p2

    iget v2, p0, Lcom/tencent/liteav/videobase/videobase/f;->k:I

    invoke-static {p2, v2}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->attachTextureToFrameBuffer(II)V

    const p2, 0x8d40

    .line 53
    iget v2, p0, Lcom/tencent/liteav/videobase/videobase/f;->k:I

    invoke-static {p2, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 54
    sget-object p2, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/4 v2, 0x0

    if-ne p1, p2, :cond_1

    .line 55
    invoke-static {v2, v2, v1, v0, p3}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->readPixels(IIIILjava/lang/Object;)V

    .line 56
    iget p1, p0, Lcom/tencent/liteav/videobase/videobase/f;->k:I

    invoke-static {p1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->detachTextureFromFrameBuffer(I)V

    return-void

    .line 57
    :cond_1
    rem-int/lit8 p1, v0, 0x10

    if-nez p1, :cond_2

    mul-int/lit8 v0, v0, 0x3

    .line 58
    div-int/lit8 v0, v0, 0x8

    .line 59
    invoke-static {v2, v2, v1, v0, p3}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->readPixels(IIIILjava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_2
    instance-of p1, p3, Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3

    .line 61
    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-static {v1, v0, p3}, Lcom/tencent/liteav/videobase/utils/YUVReadTools;->nativeReadYUVPlanesForByteBuffer(IILjava/nio/ByteBuffer;)V

    goto :goto_0

    .line 62
    :cond_3
    check-cast p3, [B

    invoke-static {v1, v0, p3}, Lcom/tencent/liteav/videobase/utils/YUVReadTools;->nativeReadYUVPlanesForByteArray(II[B)V

    .line 63
    :goto_0
    iget p1, p0, Lcom/tencent/liteav/videobase/videobase/f;->k:I

    invoke-static {p1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->detachTextureFromFrameBuffer(I)V

    return-void
.end method


# virtual methods
.method final a(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)I
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/videobase/f$a;

    .line 72
    iget-object v1, v1, Lcom/tencent/liteav/videobase/videobase/f$a;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v1, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method final a(JLcom/tencent/liteav/videobase/frame/d;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 7

    .line 18
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {p0, p4, v0}, Lcom/tencent/liteav/videobase/videobase/f;->a(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)I

    move-result v5

    .line 19
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {p0, p4, v1}, Lcom/tencent/liteav/videobase/videobase/f;->a(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)I

    move-result v6

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz v5, :cond_1

    .line 20
    iget-object v1, p0, Lcom/tencent/liteav/videobase/videobase/f;->i:Lcom/tencent/liteav/videobase/frame/i;

    .line 21
    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/d;->b()I

    move-result v2

    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/d;->c()I

    move-result v3

    .line 22
    invoke-virtual {v1, v2, v3, v0, p4}, Lcom/tencent/liteav/videobase/frame/i;->a(IILcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, p4, p3, v1}, Lcom/tencent/liteav/videobase/videobase/f;->a(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/frame/d;Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->i:Lcom/tencent/liteav/videobase/frame/i;

    .line 25
    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/d;->b()I

    move-result v2

    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/d;->c()I

    move-result v3

    .line 26
    invoke-virtual {v0, v2, v3, v1, p4}, Lcom/tencent/liteav/videobase/frame/i;->a(IILcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getData()[B

    move-result-object v1

    invoke-direct {p0, p4, p3, v1}, Lcom/tencent/liteav/videobase/videobase/f;->a(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/frame/d;Ljava/lang/Object;)V

    .line 28
    :goto_0
    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/d;->d()Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMetaData(Lcom/tencent/liteav/videobase/frame/FrameMetaData;)V

    .line 29
    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/liteav/videobase/videobase/f;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V

    move-object v1, p0

    move-wide v2, p1

    move-object v4, v0

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/liteav/videobase/videobase/f;->a(JLcom/tencent/liteav/videobase/frame/PixelFrame;II)V

    return-object v0
.end method

.method public final a()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/a/b;

    .line 7
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/a/b;->uninitialize()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->g:Lcom/tencent/liteav/videobase/frame/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/j;->a()V

    .line 11
    iput-object v1, p0, Lcom/tencent/liteav/videobase/videobase/f;->g:Lcom/tencent/liteav/videobase/frame/j;

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->i:Lcom/tencent/liteav/videobase/frame/i;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/a;->b()V

    .line 14
    iput-object v1, p0, Lcom/tencent/liteav/videobase/videobase/f;->i:Lcom/tencent/liteav/videobase/frame/i;

    .line 15
    :cond_2
    iget v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->k:I

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteFrameBuffer(I)V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->k:I

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->h:Z

    return-void
.end method

.method public final a(ILcom/tencent/liteav/videobase/videobase/c$a;)V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/liteav/videobase/videobase/f$a;

    .line 75
    iget v4, v3, Lcom/tencent/liteav/videobase/videobase/f$a;->b:I

    if-ne v4, p1, :cond_1

    iget-object v4, v3, Lcom/tencent/liteav/videobase/videobase/f$a;->c:Lcom/tencent/liteav/videobase/videobase/c$a;

    if-ne v4, p2, :cond_1

    .line 76
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object p1, p0, Lcom/tencent/liteav/videobase/videobase/f;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method final a(JLcom/tencent/liteav/videobase/frame/PixelFrame;II)V
    .locals 3

    .line 31
    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v0, v1, :cond_0

    if-eqz p5, :cond_1

    .line 32
    iget-object p4, p0, Lcom/tencent/liteav/videobase/videobase/f;->i:Lcom/tencent/liteav/videobase/frame/i;

    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result p5

    .line 33
    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v0

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v2

    .line 34
    invoke-virtual {p4, p5, v0, v1, v2}, Lcom/tencent/liteav/videobase/frame/i;->a(IILcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p4

    .line 35
    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 36
    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getData()[B

    move-result-object p5

    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getData()[B

    move-result-object v0

    array-length v0, v0

    .line 37
    invoke-static {p3, p5, v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->nativeCopyDataFromByteBufferToByteArray(Ljava/nio/ByteBuffer;[BI)V

    .line 38
    invoke-virtual {p0, p4, p1, p2}, Lcom/tencent/liteav/videobase/videobase/f;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V

    .line 39
    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void

    .line 40
    :cond_0
    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object p5

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne p5, v0, :cond_1

    if-eqz p4, :cond_1

    .line 41
    iget-object p4, p0, Lcom/tencent/liteav/videobase/videobase/f;->i:Lcom/tencent/liteav/videobase/frame/i;

    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result p5

    .line 42
    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v2

    .line 43
    invoke-virtual {p4, p5, v0, v1, v2}, Lcom/tencent/liteav/videobase/frame/i;->a(IILcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object p4

    .line 44
    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getData()[B

    move-result-object p5

    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getData()[B

    move-result-object p3

    array-length p3, p3

    .line 45
    invoke-static {p5, v0, p3}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->nativeCopyDataFromByteArrayToByteBuffer([BLjava/nio/ByteBuffer;I)V

    .line 46
    invoke-virtual {p0, p4, p1, p2}, Lcom/tencent/liteav/videobase/videobase/f;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V

    .line 47
    invoke-virtual {p4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_1
    return-void
.end method

.method final a(Lcom/tencent/liteav/videobase/frame/PixelFrame;J)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 65
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tencent/liteav/videobase/videobase/f$a;

    .line 68
    iget-object v0, p3, Lcom/tencent/liteav/videobase/videobase/f$a;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v0, p3, Lcom/tencent/liteav/videobase/videobase/f$a;->c:Lcom/tencent/liteav/videobase/videobase/c$a;

    iget p3, p3, Lcom/tencent/liteav/videobase/videobase/f$a;->b:I

    invoke-interface {v0, p3, p1}, Lcom/tencent/liteav/videobase/videobase/c$a;->onFrameConverted(ILcom/tencent/liteav/videobase/frame/PixelFrame;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->h:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->h:Z

    .line 3
    new-instance v0, Lcom/tencent/liteav/videobase/frame/i;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/i;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/videobase/f;->i:Lcom/tencent/liteav/videobase/frame/i;

    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/videobase/videobase/f;->j:Lcom/tencent/liteav/videobase/frame/e;

    return-void

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SameParamsConverter mIsInitialized "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/liteav/videobase/videobase/f;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , texturePool "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SameParamsConverter"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
