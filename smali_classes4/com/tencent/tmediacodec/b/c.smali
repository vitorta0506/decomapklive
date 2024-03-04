.class public final Lcom/tencent/tmediacodec/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/tmediacodec/b/b;


# instance fields
.field private final a:Landroid/media/MediaCodec;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;)V
    .locals 0
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/tmediacodec/b/c;->a:Landroid/media/MediaCodec;

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/MediaCodec$BufferInfo;J)I
    .locals 1
    .param p1    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    return p1
.end method

.method public final a()Landroid/media/MediaCodec;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/c;->a:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public final a(Lcom/tencent/tmediacodec/b/d;)Lcom/tencent/tmediacodec/d/a$b;
    .locals 1
    .param p1    # Lcom/tencent/tmediacodec/b/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p1, "DirectCodecWrapper"

    const-string v0, "setCanReuseType setCodecCallback ignore..."

    .line 3
    invoke-static {p1, v0}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/tencent/tmediacodec/d/a$b;->a:Lcom/tencent/tmediacodec/d/a$b;

    return-object p1
.end method

.method public final a(I)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/c;->a:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public final a(IIJI)V
    .locals 7

    .line 7
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/c;->a:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public final a(Landroid/media/MediaFormat;Landroid/view/Surface;)V
    .locals 3
    .param p1    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lcom/tencent/tmediacodec/b/c;->a:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public final a(Lcom/tencent/tmediacodec/a/a;)V
    .locals 1
    .param p1    # Lcom/tencent/tmediacodec/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "DirectCodecWrapper"

    const-string v0, "DirectCodecWrapper setCodecCallback ignore..."

    .line 1
    invoke-static {p1, v0}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    const-string v0, "DirectCodecWrapper"

    const-string v1, "DirectCodecWrapper prepareToReUse ignore..."

    invoke-static {v0, v1}, Lcom/tencent/tmediacodec/f/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmediacodec/b/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmediacodec/b/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmediacodec/b/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmediacodec/b/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    return-void
.end method

.method public final h()I
    .locals 3

    iget-object v0, p0, Lcom/tencent/tmediacodec/b/c;->a:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    return v0
.end method
