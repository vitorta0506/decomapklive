.class public final Lcom/tencent/qgame/animplayer/HardDecoder;
.super Lcom/tencent/qgame/animplayer/Decoder;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/HardDecoder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\r\u0018\u0000 52\u00020\u00012\u00020\u0002:\u00015B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0019H\u0002J\u0012\u0010\u001b\u001a\u00020\u00192\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0010H\u0016J\u001c\u0010\u001d\u001a\u00020\u00192\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0002J\u0006\u0010\"\u001a\u00020\u0019J\u0010\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020%H\u0016J\u0018\u0010&\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010\'\u001a\u00020\u00192\u0006\u0010$\u001a\u00020%H\u0002J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)H\u0002J@\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020)2\u0006\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020)2\u0006\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u0007H\u0002J\u0018\u00103\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u00104\u001a\u00020\u0007H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/HardDecoder;",
        "Lcom/tencent/qgame/animplayer/Decoder;",
        "Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;",
        "player",
        "Lcom/tencent/qgame/animplayer/AnimPlayer;",
        "(Lcom/tencent/qgame/animplayer/AnimPlayer;)V",
        "alignHeight",
        "",
        "alignWidth",
        "bufferInfo",
        "Landroid/media/MediaCodec$BufferInfo;",
        "getBufferInfo",
        "()Landroid/media/MediaCodec$BufferInfo;",
        "bufferInfo$delegate",
        "Lkotlin/Lazy;",
        "glTexture",
        "Landroid/graphics/SurfaceTexture;",
        "needDestroy",
        "",
        "needYUV",
        "outputFormat",
        "Landroid/media/MediaFormat;",
        "videoHeight",
        "videoWidth",
        "destroy",
        "",
        "destroyInner",
        "onFrameAvailable",
        "surfaceTexture",
        "release",
        "decoder",
        "Landroid/media/MediaCodec;",
        "extractor",
        "Landroid/media/MediaExtractor;",
        "renderData",
        "start",
        "fileContainer",
        "Lcom/tencent/qgame/animplayer/file/IFileContainer;",
        "startDecode",
        "startPlay",
        "yuv420spTop",
        "",
        "yuv420sp",
        "yuvCopy",
        "src",
        "srcOffset",
        "inWidth",
        "inHeight",
        "dest",
        "outWidth",
        "outHeight",
        "yuvProcess",
        "outputIndex",
        "Companion",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/tencent/qgame/animplayer/HardDecoder$Companion;

.field private static final TAG:Ljava/lang/String; = "AnimPlayer.HardDecoder"


# instance fields
.field private alignHeight:I

.field private alignWidth:I

.field private final bufferInfo$delegate:Lkotlin/Lazy;

.field private glTexture:Landroid/graphics/SurfaceTexture;

.field private needDestroy:Z

.field private needYUV:Z

.field private outputFormat:Landroid/media/MediaFormat;

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/tencent/qgame/animplayer/HardDecoder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "bufferInfo"

    const-string v4, "getBufferInfo()Landroid/media/MediaCodec$BufferInfo;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/qgame/animplayer/HardDecoder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/tencent/qgame/animplayer/HardDecoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/HardDecoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/HardDecoder;->Companion:Lcom/tencent/qgame/animplayer/HardDecoder$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/AnimPlayer;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/AnimPlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/qgame/animplayer/Decoder;-><init>(Lcom/tencent/qgame/animplayer/AnimPlayer;)V

    .line 2
    sget-object p1, Lcom/tencent/qgame/animplayer/HardDecoder$bufferInfo$2;->INSTANCE:Lcom/tencent/qgame/animplayer/HardDecoder$bufferInfo$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->bufferInfo$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$destroyInner(Lcom/tencent/qgame/animplayer/HardDecoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/HardDecoder;->destroyInner()V

    return-void
.end method

.method public static final synthetic access$getGlTexture$p(Lcom/tencent/qgame/animplayer/HardDecoder;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->glTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public static final synthetic access$getNeedDestroy$p(Lcom/tencent/qgame/animplayer/HardDecoder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->needDestroy:Z

    return p0
.end method

.method public static final synthetic access$release(Lcom/tencent/qgame/animplayer/HardDecoder;Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qgame/animplayer/HardDecoder;->release(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V

    return-void
.end method

.method public static final synthetic access$setGlTexture$p(Lcom/tencent/qgame/animplayer/HardDecoder;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->glTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public static final synthetic access$setNeedDestroy$p(Lcom/tencent/qgame/animplayer/HardDecoder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->needDestroy:Z

    return-void
.end method

.method public static final synthetic access$startDecode(Lcom/tencent/qgame/animplayer/HardDecoder;Landroid/media/MediaExtractor;Landroid/media/MediaCodec;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qgame/animplayer/HardDecoder;->startDecode(Landroid/media/MediaExtractor;Landroid/media/MediaCodec;)V

    return-void
.end method

.method public static final synthetic access$startPlay(Lcom/tencent/qgame/animplayer/HardDecoder;Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qgame/animplayer/HardDecoder;->startPlay(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V

    return-void
.end method

.method private final destroyInner()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/Decoder;->getRenderThread()Lcom/tencent/qgame/animplayer/HandlerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/HandlerHolder;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/qgame/animplayer/HardDecoder$destroyInner$1;

    invoke-direct {v1, p0}, Lcom/tencent/qgame/animplayer/HardDecoder$destroyInner$1;-><init>(Lcom/tencent/qgame/animplayer/HardDecoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private final getBufferInfo()Landroid/media/MediaCodec$BufferInfo;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->bufferInfo$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/tencent/qgame/animplayer/HardDecoder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    return-object v0
.end method

.method private final release(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/Decoder;->getRenderThread()Lcom/tencent/qgame/animplayer/HandlerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/HandlerHolder;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/qgame/animplayer/HardDecoder$release$1;-><init>(Lcom/tencent/qgame/animplayer/HardDecoder;Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private final startDecode(Landroid/media/MediaExtractor;Landroid/media/MediaCodec;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-nez v13, :cond_11

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qgame/animplayer/Decoder;->isStopReq()Z

    move-result v3

    const-string v9, "AnimPlayer.HardDecoder"

    if-eqz v3, :cond_0

    .line 3
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string/jumbo v3, "stop decode"

    invoke-virtual {v0, v9, v3}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {v1, v10, v2}, Lcom/tencent/qgame/animplayer/HardDecoder;->release(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V

    return-void

    :cond_0
    const/16 v17, 0x1

    const-wide/16 v7, 0x2710

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {v10, v7, v8}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    if-ltz v4, :cond_2

    .line 6
    aget-object v3, v11, v4

    .line 7
    invoke-virtual {v2, v3, v12}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    if-gez v6, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v18, 0x0

    const/4 v0, 0x4

    move-object/from16 v3, p2

    move-wide/from16 v7, v18

    move-object v12, v9

    move v9, v0

    .line 8
    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 9
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v3, "decode EOS"

    invoke-virtual {v0, v12, v3}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    move-object v12, v9

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v7

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    move/from16 v19, v6

    .line 11
    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 12
    sget-object v3, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "submitted frame "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to dec, size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v19

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v12, v4}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1

    :cond_2
    move-object v12, v9

    .line 14
    sget-object v3, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v4, "input buffer not available"

    invoke-virtual {v3, v12, v4}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v12, v9

    :goto_1
    move v3, v0

    :goto_2
    if-nez v13, :cond_10

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qgame/animplayer/HardDecoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    const-wide/16 v4, 0x2710

    invoke-virtual {v10, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    .line 16
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v4, "no output from decoder available"

    invoke-virtual {v0, v12, v4}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    const/4 v5, -0x3

    if-ne v0, v5, :cond_5

    .line 17
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v4, "decoder output buffers changed"

    invoke-virtual {v0, v12, v4}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_5
    const/4 v5, -0x2

    if-ne v0, v5, :cond_7

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qgame/animplayer/HardDecoder;->outputFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_6

    :try_start_0
    const-string/jumbo v4, "stride"

    .line 19
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "slice-height"

    .line 20
    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-lez v4, :cond_6

    if-lez v0, :cond_6

    .line 21
    iput v4, v1, Lcom/tencent/qgame/animplayer/HardDecoder;->alignWidth:I

    .line 22
    iput v0, v1, Lcom/tencent/qgame/animplayer/HardDecoder;->alignHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 23
    sget-object v4, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v12, v5, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :cond_6
    :goto_3
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decoder output format changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/tencent/qgame/animplayer/HardDecoder;->outputFormat:Landroid/media/MediaFormat;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v12, v4}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_7
    if-ltz v0, :cond_f

    .line 25
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qgame/animplayer/HardDecoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v5

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_9

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qgame/animplayer/Decoder;->getPlayLoop()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/tencent/qgame/animplayer/Decoder;->setPlayLoop(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qgame/animplayer/Decoder;->getPlayLoop()I

    move-result v4

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qgame/animplayer/Decoder;->getPlayer()Lcom/tencent/qgame/animplayer/AnimPlayer;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qgame/animplayer/Decoder;->getPlayLoop()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/qgame/animplayer/AnimPlayer;->setPlayLoop(I)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qgame/animplayer/Decoder;->getPlayLoop()I

    move-result v5

    if-gtz v5, :cond_8

    const/4 v13, 0x1

    goto :goto_4

    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    xor-int/lit8 v5, v13, 0x1

    if-eqz v5, :cond_a

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qgame/animplayer/Decoder;->getSpeedControlUtil()Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/tencent/qgame/animplayer/HardDecoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v7

    iget-wide v7, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v7, v8}, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->preRender(J)V

    .line 30
    :cond_a
    iget-boolean v6, v1, Lcom/tencent/qgame/animplayer/HardDecoder;->needYUV:Z

    if-eqz v6, :cond_b

    if-eqz v5, :cond_b

    .line 31
    invoke-direct {v1, v10, v0}, Lcom/tencent/qgame/animplayer/HardDecoder;->yuvProcess(Landroid/media/MediaCodec;I)V

    :cond_b
    if-eqz v5, :cond_c

    .line 32
    iget-boolean v5, v1, Lcom/tencent/qgame/animplayer/HardDecoder;->needYUV:Z

    if-nez v5, :cond_c

    const/4 v5, 0x1

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v10, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-nez v15, :cond_d

    if-nez v16, :cond_d

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qgame/animplayer/Decoder;->onVideoStart()V

    .line 34
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qgame/animplayer/Decoder;->getPlayer()Lcom/tencent/qgame/animplayer/AnimPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getPluginManager()Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->onDecoding(I)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qgame/animplayer/Decoder;->getPlayer()Lcom/tencent/qgame/animplayer/AnimPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getConfigManager()Lcom/tencent/qgame/animplayer/AnimConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfigManager;->getConfig()Lcom/tencent/qgame/animplayer/AnimConfig;

    move-result-object v0

    invoke-virtual {v1, v15, v0}, Lcom/tencent/qgame/animplayer/Decoder;->onVideoRender(ILcom/tencent/qgame/animplayer/AnimConfig;)V

    add-int/lit8 v15, v15, 0x1

    .line 36
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decode frameIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v12, v5}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v4, :cond_e

    const-string v3, "Reached EOD, looping"

    .line 37
    invoke-virtual {v0, v12, v3}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qgame/animplayer/Decoder;->getPlayer()Lcom/tencent/qgame/animplayer/AnimPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getPluginManager()Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->onLoopStart()V

    const-wide/16 v3, 0x0

    const/4 v0, 0x2

    .line 39
    invoke-virtual {v2, v3, v4, v0}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaCodec;->flush()V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qgame/animplayer/Decoder;->getSpeedControlUtil()Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->reset()V

    const/4 v3, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    :cond_e
    if-eqz v13, :cond_10

    .line 42
    invoke-direct {v1, v10, v2}, Lcom/tencent/qgame/animplayer/HardDecoder;->release(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V

    goto :goto_6

    .line 43
    :cond_f
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    :goto_6
    move v0, v3

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method private final startPlay(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
    .locals 11

    const-string/jumbo v0, "video/hevc"

    const-string v1, "AnimPlayer.HardDecoder"

    .line 1
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 3
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    :try_start_0
    sget-object v3, Lcom/tencent/qgame/animplayer/util/MediaUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/MediaUtil;

    invoke-virtual {v3, p1}, Lcom/tencent/qgame/animplayer/util/MediaUtil;->getExtractor(Lcom/tencent/qgame/animplayer/file/IFileContainer;)Landroid/media/MediaExtractor;

    move-result-object p1

    iput-object p1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    move-object v4, p1

    check-cast v4, Landroid/media/MediaExtractor;

    invoke-virtual {v3, p1}, Lcom/tencent/qgame/animplayer/util/MediaUtil;->selectVideoTrack(Landroid/media/MediaExtractor;)I

    move-result p1

    if-ltz p1, :cond_8

    .line 6
    iget-object v4, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/media/MediaExtractor;

    invoke-virtual {v4, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 7
    iget-object v4, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/media/MediaExtractor;

    invoke-virtual {v4, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 8
    move-object v4, p1

    check-cast v4, Landroid/media/MediaFormat;

    if-eqz p1, :cond_7

    .line 9
    move-object v4, p1

    check-cast v4, Landroid/media/MediaFormat;

    invoke-virtual {v3, p1}, Lcom/tencent/qgame/animplayer/util/MediaUtil;->checkIsHevc(Landroid/media/MediaFormat;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v0}, Lcom/tencent/qgame/animplayer/util/MediaUtil;->checkSupportCodec(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x2718

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0x8 hevc not support "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "sdk:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",support hevc:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v3, v0}, Lcom/tencent/qgame/animplayer/util/MediaUtil;->checkSupportCodec(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0, v4, p1}, Lcom/tencent/qgame/animplayer/Decoder;->onFailed(ILjava/lang/String;)V

    .line 15
    invoke-direct {p0, v2, v2}, Lcom/tencent/qgame/animplayer/HardDecoder;->release(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V

    return-void

    .line 16
    :cond_0
    iget-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaFormat;

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoWidth:I

    .line 17
    iget-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaFormat;

    const-string v0, "height"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoHeight:I

    .line 18
    iget v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoWidth:I

    iput v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->alignWidth:I

    .line 19
    iput p1, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->alignHeight:I

    .line 20
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video size is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoWidth:I

    rem-int/lit8 v0, v0, 0x10

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/Decoder;->getPlayer()Lcom/tencent/qgame/animplayer/AnimPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getEnableVersion1()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->needYUV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/tencent/qgame/animplayer/Decoder;->prepareRender(Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_6

    .line 23
    :try_start_2
    iget v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoWidth:I

    iget v4, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoHeight:I

    invoke-virtual {p0, v0, v4}, Lcom/tencent/qgame/animplayer/Decoder;->preparePlay(II)V

    .line 24
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/Decoder;->getRender()Lcom/tencent/qgame/animplayer/IRenderListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 25
    new-instance v4, Landroid/graphics/SurfaceTexture;

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/IRenderListener;->getExternalTexture()I

    move-result v6

    invoke-direct {v4, v6}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 26
    invoke-virtual {v4, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 27
    iget v6, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoWidth:I

    iget v7, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoHeight:I

    invoke-virtual {v4, v6, v7}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 28
    iput-object v4, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->glTexture:Landroid/graphics/SurfaceTexture;

    .line 29
    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/IRenderListener;->clearFrame()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 30
    :cond_2
    :try_start_3
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaFormat;

    const-string v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, ""

    .line 31
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video MIME is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    .line 33
    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->needYUV:Z

    if-eqz v0, :cond_4

    .line 34
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaFormat;

    const-string v4, "color-format"

    const/16 v6, 0x13

    invoke-virtual {v0, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 35
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaFormat;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_2

    .line 36
    :cond_4
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaFormat;

    new-instance v4, Landroid/view/Surface;

    iget-object v6, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->glTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v4, v6}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1, v0, v4, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 37
    :goto_2
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 38
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/Decoder;->getDecodeThread()Lcom/tencent/qgame/animplayer/HandlerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/HandlerHolder;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v10, Lcom/tencent/qgame/animplayer/HardDecoder$startPlay$$inlined$apply$lambda$1;

    move-object v2, v10

    move-object v3, p1

    move-object v4, p0

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/tencent/qgame/animplayer/HardDecoder$startPlay$$inlined$apply$lambda$1;-><init>(Landroid/media/MediaCodec;Lcom/tencent/qgame/animplayer/HardDecoder;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    :cond_5
    iput-object p1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 40
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaCodec configure exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x2712

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x2 MediaCodec exception e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/qgame/animplayer/Decoder;->onFailed(ILjava/lang/String;)V

    .line 42
    iget-object p1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCodec;

    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaExtractor;

    invoke-direct {p0, p1, v0}, Lcom/tencent/qgame/animplayer/HardDecoder;->release(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V

    return-void

    .line 43
    :cond_6
    :try_start_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "render create fail"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    const/16 v0, 0x2714

    .line 44
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x4 render create fail e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/qgame/animplayer/Decoder;->onFailed(ILjava/lang/String;)V

    .line 45
    invoke-direct {p0, v2, v2}, Lcom/tencent/qgame/animplayer/HardDecoder;->release(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V

    return-void

    .line 46
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "format is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "No video track found"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 48
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaExtractor exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x2711

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x1 MediaExtractor exception e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/qgame/animplayer/Decoder;->onFailed(ILjava/lang/String;)V

    .line 50
    iget-object p1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCodec;

    iget-object v0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaExtractor;

    invoke-direct {p0, p1, v0}, Lcom/tencent/qgame/animplayer/HardDecoder;->release(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V

    return-void
.end method

.method private final yuv420spTop([B)[B
    .locals 6

    .line 1
    array-length v0, p1

    new-array v0, v0, [B

    .line 2
    iget v1, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->alignWidth:I

    iget v2, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->alignHeight:I

    mul-int v3, v1, v2

    mul-int v1, v1, v2

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v3

    move v2, v1

    :goto_0
    mul-int/lit8 v4, v3, 0x3

    .line 4
    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_0

    .line 5
    aget-byte v4, p1, v1

    aput-byte v4, v0, v2

    .line 6
    div-int/lit8 v4, v3, 0x4

    add-int/2addr v4, v2

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    aput-byte v5, v0, v4

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final yuvCopy([BIII[BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    if-ge v0, p7, :cond_0

    mul-int v1, v0, p3

    add-int/2addr v1, p2

    mul-int v2, v0, p6

    invoke-static {p1, v1, p5, v2, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final yuvProcess(Landroid/media/MediaCodec;I)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    aget-object p1, p1, p2

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/HardDecoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/HardDecoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v1, v0, [B

    .line 5
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    if-nez v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    xor-int/2addr p1, p2

    if-eqz p1, :cond_3

    .line 6
    iget p1, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoWidth:I

    iget p2, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoHeight:I

    mul-int v0, p1, p2

    new-array v0, v0, [B

    mul-int v2, p1, p2

    .line 7
    div-int/lit8 v2, v2, 0x4

    new-array v11, v2, [B

    mul-int p1, p1, p2

    .line 8
    div-int/lit8 p1, p1, 0x4

    new-array p1, p1, [B

    .line 9
    iget-object p2, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->outputFormat:Landroid/media/MediaFormat;

    if-eqz p2, :cond_1

    const-string v2, "color-format"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    const/16 v2, 0x15

    if-ne p2, v2, :cond_1

    .line 10
    invoke-direct {p0, v1}, Lcom/tencent/qgame/animplayer/HardDecoder;->yuv420spTop([B)[B

    move-result-object v1

    :cond_1
    const/4 v4, 0x0

    .line 11
    iget v5, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->alignWidth:I

    iget v6, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->alignHeight:I

    iget v8, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoWidth:I

    iget v9, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoHeight:I

    move-object v2, p0

    move-object v3, v1

    move-object v7, v0

    invoke-direct/range {v2 .. v9}, Lcom/tencent/qgame/animplayer/HardDecoder;->yuvCopy([BIII[BII)V

    .line 12
    iget p2, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->alignWidth:I

    iget v2, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->alignHeight:I

    mul-int v5, p2, v2

    div-int/lit8 v6, p2, 0x2

    div-int/lit8 v7, v2, 0x2

    iget p2, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoWidth:I

    div-int/lit8 v9, p2, 0x2

    iget p2, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoHeight:I

    div-int/lit8 v10, p2, 0x2

    move-object v3, p0

    move-object v4, v1

    move-object v8, v11

    invoke-direct/range {v3 .. v10}, Lcom/tencent/qgame/animplayer/HardDecoder;->yuvCopy([BIII[BII)V

    .line 13
    iget p2, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->alignWidth:I

    iget v2, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->alignHeight:I

    mul-int v3, p2, v2

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v4, v3, 0x4

    div-int/lit8 v5, p2, 0x2

    div-int/lit8 v6, v2, 0x2

    iget p2, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoWidth:I

    div-int/lit8 v8, p2, 0x2

    iget p2, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoHeight:I

    div-int/lit8 v9, p2, 0x2

    move-object v2, p0

    move-object v3, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v9}, Lcom/tencent/qgame/animplayer/HardDecoder;->yuvCopy([BIII[BII)V

    .line 14
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/Decoder;->getRender()Lcom/tencent/qgame/animplayer/IRenderListener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoWidth:I

    iget v4, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->videoHeight:I

    move-object v5, v0

    move-object v6, v11

    move-object v7, p1

    invoke-interface/range {v2 .. v7}, Lcom/tencent/qgame/animplayer/IRenderListener;->setYUVData(II[B[B[B)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/HardDecoder;->renderData()V

    :cond_3
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->needDestroy:Z

    .line 2
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/Decoder;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/Decoder;->stop()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/HardDecoder;->destroyInner()V

    :goto_0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/Decoder;->isStopReq()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v0, "AnimPlayer.HardDecoder"

    const-string v1, "onFrameAvailable"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/HardDecoder;->renderData()V

    return-void
.end method

.method public final renderData()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/Decoder;->getRenderThread()Lcom/tencent/qgame/animplayer/HandlerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/HandlerHolder;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/qgame/animplayer/HardDecoder$renderData$1;

    invoke-direct {v1, p0}, Lcom/tencent/qgame/animplayer/HardDecoder$renderData$1;-><init>(Lcom/tencent/qgame/animplayer/HardDecoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public start(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
    .locals 2
    .param p1    # Lcom/tencent/qgame/animplayer/file/IFileContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/tencent/qgame/animplayer/Decoder;->setStopReq(Z)V

    .line 2
    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/HardDecoder;->needDestroy:Z

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/tencent/qgame/animplayer/Decoder;->setRunning(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/Decoder;->getRenderThread()Lcom/tencent/qgame/animplayer/HandlerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/HandlerHolder;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/qgame/animplayer/HardDecoder$start$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qgame/animplayer/HardDecoder$start$1;-><init>(Lcom/tencent/qgame/animplayer/HardDecoder;Lcom/tencent/qgame/animplayer/file/IFileContainer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
