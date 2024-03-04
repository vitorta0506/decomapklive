.class public final Lcom/tencent/liteav/videoproducer/producer/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;
.implements Lcom/tencent/liteav/videoproducer/preprocessor/ah;
.implements Lcom/tencent/liteav/videoproducer/producer/d$a;
.implements Lcom/tencent/rtmp/ui/a;
.implements Lcom/tencent/rtmp/ui/b;


# instance fields
.field private final A:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;",
            "Lcom/tencent/liteav/videoproducer/encoder/ah;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

.field private C:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private D:Lcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;

.field private E:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

.field private volatile F:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field private G:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

.field private final H:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field private I:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

.field private final J:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

.field private K:Lcom/tencent/liteav/videoproducer/producer/a;

.field private final L:Lcom/tencent/liteav/base/util/q;

.field private final M:Lcom/tencent/liteav/base/util/q;

.field private final N:Lcom/tencent/liteav/videoproducer/producer/e;

.field private O:Z

.field private P:Z

.field private Q:Z

.field private final R:Lcom/tencent/liteav/base/util/q;

.field a:Ljava/lang/String;

.field final b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final d:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field e:Lcom/tencent/liteav/base/util/CustomHandler;

.field volatile f:Z

.field private final g:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Lcom/tencent/liteav/base/b/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private i:Lcom/tencent/liteav/videobase/b/e;

.field private j:Ljava/lang/Object;

.field private k:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

.field private l:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;

.field private m:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private n:I

.field private o:Lcom/tencent/liteav/videoproducer/producer/d;

.field private p:Z

.field private volatile q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

.field private r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

.field private s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

.field private final t:Lcom/tencent/liteav/videoproducer/producer/ax;

.field private u:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private final v:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;",
            "Lcom/tencent/liteav/videobase/base/GLConstants$Orientation;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private x:Z

.field private y:Lorg/json/JSONArray;

.field private final z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;",
            "Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/tencent/liteav/videobase/videobase/IVideoReporter;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/tencent/liteav/videobase/videobase/IVideoReporter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VideoProducer"

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/tencent/liteav/base/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->h:Lcom/tencent/liteav/base/b/b;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->f:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->j:Ljava/lang/Object;

    .line 6
    sget-object v2, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;->c:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->l:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;

    .line 7
    sget-object v2, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->m:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 8
    iput v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->n:I

    .line 9
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->p:Z

    .line 10
    sget-object v3, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    iput-object v3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    .line 11
    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->w:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 12
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->x:Z

    .line 13
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->y:Lorg/json/JSONArray;

    .line 14
    new-instance v3, Lcom/tencent/liteav/videoproducer/producer/f$1;

    invoke-direct {v3, p0}, Lcom/tencent/liteav/videoproducer/producer/f$1;-><init>(Lcom/tencent/liteav/videoproducer/producer/f;)V

    iput-object v3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->z:Ljava/util/Map;

    .line 15
    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->C:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 16
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;->a:Lcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->D:Lcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;

    .line 17
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->E:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 18
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->G:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    .line 19
    new-instance v2, Lcom/tencent/liteav/videoproducer/producer/f$2;

    invoke-direct {v2, p0}, Lcom/tencent/liteav/videoproducer/producer/f$2;-><init>(Lcom/tencent/liteav/videoproducer/producer/f;)V

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->H:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    .line 20
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->I:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    .line 21
    new-instance v1, Lcom/tencent/liteav/videoproducer/producer/f$3;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoproducer/producer/f$3;-><init>(Lcom/tencent/liteav/videoproducer/producer/f;)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->J:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    .line 22
    new-instance v1, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v1}, Lcom/tencent/liteav/base/util/q;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->L:Lcom/tencent/liteav/base/util/q;

    .line 23
    new-instance v1, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v1}, Lcom/tencent/liteav/base/util/q;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->M:Lcom/tencent/liteav/base/util/q;

    .line 24
    new-instance v1, Lcom/tencent/liteav/videoproducer/producer/e;

    invoke-direct {v1}, Lcom/tencent/liteav/videoproducer/producer/e;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    .line 25
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->O:Z

    .line 26
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->P:Z

    .line 27
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->Q:Z

    .line 28
    new-instance v1, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v1, v0, v0}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->R:Lcom/tencent/liteav/base/util/q;

    .line 29
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->g:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 31
    new-instance v0, Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    invoke-direct {v0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;-><init>(Landroid/content/Context;ZLcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->d:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    .line 32
    new-instance p2, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    invoke-direct {p2, p1, v0, p3}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;-><init>(Landroid/content/Context;Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    .line 33
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance p2, Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-direct {p2, p1}, Lcom/tencent/liteav/videoproducer/producer/ax;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)Lcom/tencent/liteav/videobase/utils/Rotation;
    .locals 3

    .line 360
    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 361
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->b:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-eq v1, v2, :cond_0

    return-object v0

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->l:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;

    sget-object v2, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;

    if-eq v1, v2, :cond_3

    .line 363
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->m:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-nez p1, :cond_1

    return-object v0

    .line 364
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 365
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->m:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 366
    iget p1, p1, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    rsub-int p1, p1, 0x168

    .line 367
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->m:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 368
    iget p1, p1, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    .line 369
    :goto_0
    invoke-static {p1}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p1

    return-object p1

    .line 370
    :cond_3
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/videobase/base/GLConstants$Orientation;

    .line 371
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$Orientation;->a:Lcom/tencent/liteav/videobase/base/GLConstants$Orientation;

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    .line 372
    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ax;->a()Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;

    move-result-object p1

    sget-object v1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;

    if-ne p1, v1, :cond_5

    .line 373
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 374
    sget-object p1, Lcom/tencent/liteav/videobase/utils/Rotation;->b:Lcom/tencent/liteav/videobase/utils/Rotation;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    :goto_1
    move-object v0, p1

    :cond_5
    return-object v0
.end method

.method private static a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;)Lcom/tencent/liteav/videoproducer/capture/t;
    .locals 2

    .line 355
    instance-of v0, p0, Lcom/tencent/liteav/videoproducer/capture/al;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 356
    :cond_0
    check-cast p0, Lcom/tencent/liteav/videoproducer/capture/al;

    .line 357
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/al;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    .line 358
    instance-of v0, p0, Lcom/tencent/liteav/videoproducer/capture/t;

    if-nez v0, :cond_1

    return-object v1

    .line 359
    :cond_1
    check-cast p0, Lcom/tencent/liteav/videoproducer/capture/t;

    return-object p0
.end method

.method private a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;
    .locals 6

    .line 92
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/producer/ax;->d()Lcom/tencent/liteav/base/util/q;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    new-instance v2, Lcom/tencent/liteav/base/util/q;

    iget v3, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget v4, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    invoke-direct {v2, v3, v4}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videoproducer/producer/ax;->b(Lcom/tencent/liteav/base/util/q;)V

    .line 94
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/producer/ax;->d()Lcom/tencent/liteav/base/util/q;

    move-result-object v1

    .line 95
    iget v2, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    iget v3, v1, Lcom/tencent/liteav/base/util/q;->a:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    iget v3, v1, Lcom/tencent/liteav/base/util/q;->b:I

    if-eq v2, v3, :cond_1

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update encode size from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/tencent/liteav/base/util/q;->a:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget v2, v1, Lcom/tencent/liteav/base/util/q;->a:I

    iput v2, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->width:I

    .line 98
    iget v2, v1, Lcom/tencent/liteav/base/util/q;->b:I

    iput v2, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->height:I

    .line 99
    :cond_1
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "producer with encoder "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public static a()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;
    .locals 1

    .line 314
    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getInstance()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->getEncodeAbility()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 7

    .line 101
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/producer/ax;->b()Lcom/tencent/liteav/base/util/q;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 103
    iget v4, v0, Lcom/tencent/liteav/base/util/q;->a:I

    iget v5, v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    if-ne v4, v5, :cond_0

    iget v5, v0, Lcom/tencent/liteav/base/util/q;->b:I

    iget v6, v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    if-eq v5, v6, :cond_1

    .line 104
    :cond_0
    iput v4, v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    .line 105
    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I

    iput v0, v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    const/4 v3, 0x1

    .line 106
    :cond_1
    iget v0, v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->b:I

    if-le p1, v0, :cond_2

    .line 107
    iput p1, v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->b:I

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string/jumbo v0, "updateCapturePreviewSizeFromSupervisor mCaptureParams==null!"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 109
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz p1, :cond_4

    .line 110
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    .line 111
    :cond_4
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ax;->c()Lcom/tencent/liteav/base/util/q;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->M:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/base/util/q;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 113
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->d()V

    :cond_5
    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 315
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->R:Lcom/tencent/liteav/base/util/q;

    iget v1, v1, Lcom/tencent/liteav/base/util/q;->a:I

    if-ne v0, v1, :cond_0

    .line 316
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->R:Lcom/tencent/liteav/base/util/q;

    iget v1, v1, Lcom/tencent/liteav/base/util/q;->b:I

    if-eq v0, v1, :cond_1

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->R:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/liteav/base/util/q;->a(II)V

    .line 318
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/i;->U:Lcom/tencent/liteav/videobase/videobase/i;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->R:Lcom/tencent/liteav/base/util/q;

    iget v1, v1, Lcom/tencent/liteav/base/util/q;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 319
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v0, Lcom/tencent/liteav/videobase/videobase/i;->V:Lcom/tencent/liteav/videobase/videobase/i;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->R:Lcom/tencent/liteav/base/util/q;

    iget v1, v1, Lcom/tencent/liteav/base/util/q;->b:I

    .line 320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 321
    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 322
    :cond_1
    iget-boolean p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->O:Z

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 323
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string v1, "rendered first frame!"

    invoke-static {p1, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/h$b;->f:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "rendered first frame"

    invoke-interface {p1, v1, v3, v2}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 325
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->O:Z

    .line 326
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->T:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    .line 328
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v1

    .line 329
    new-instance v3, Lcom/tencent/liteav/videoproducer/producer/e$b;

    invoke-direct {v3}, Lcom/tencent/liteav/videoproducer/producer/e$b;-><init>()V

    .line 330
    iget-object v4, v0, Lcom/tencent/liteav/videoproducer/producer/e;->c:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v5, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    const/4 v6, 0x1

    if-eq v4, v5, :cond_7

    sget-object v5, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->b:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne v4, v5, :cond_1

    iget-object v7, v0, Lcom/tencent/liteav/videoproducer/producer/e;->e:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;

    sget-object v8, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;

    if-eq v7, v8, :cond_1

    goto :goto_2

    :cond_1
    if-ne v4, v5, :cond_9

    .line 331
    iget-object v4, v0, Lcom/tencent/liteav/videoproducer/producer/e;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    sget-object v5, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 v7, 0x0

    if-eq v4, v5, :cond_4

    sget-object v5, Lcom/tencent/liteav/videobase/utils/Rotation;->c:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v4, v5, :cond_2

    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/producer/e;->c(J)Z

    move-result v4

    .line 333
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/producer/e;->b(J)Lcom/tencent/liteav/videoproducer/producer/e$a;

    move-result-object v5

    .line 334
    iget-boolean v5, v5, Lcom/tencent/liteav/videoproducer/producer/e$a;->a:Z

    iput-boolean v5, v3, Lcom/tencent/liteav/videoproducer/producer/e$b;->a:Z

    if-eqz v5, :cond_3

    if-nez v4, :cond_5

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    move v7, v4

    goto :goto_1

    .line 335
    :cond_4
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/producer/e;->c(J)Z

    move-result v4

    iput-boolean v4, v3, Lcom/tencent/liteav/videoproducer/producer/e$b;->a:Z

    .line 336
    :cond_5
    :goto_1
    iput-boolean v7, v3, Lcom/tencent/liteav/videoproducer/producer/e$b;->b:Z

    .line 337
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/producer/e;->a(J)Lcom/tencent/liteav/videoproducer/producer/e$b;

    move-result-object v0

    .line 338
    iget-boolean v1, v0, Lcom/tencent/liteav/videoproducer/producer/e$b;->a:Z

    if-eqz v1, :cond_6

    .line 339
    iget-boolean v1, v3, Lcom/tencent/liteav/videoproducer/producer/e$b;->a:Z

    xor-int/2addr v1, v6

    iput-boolean v1, v3, Lcom/tencent/liteav/videoproducer/producer/e$b;->a:Z

    .line 340
    :cond_6
    iget-boolean v0, v0, Lcom/tencent/liteav/videoproducer/producer/e$b;->b:Z

    if-eqz v0, :cond_9

    .line 341
    iget-boolean v0, v3, Lcom/tencent/liteav/videoproducer/producer/e$b;->b:Z

    xor-int/2addr v0, v6

    iput-boolean v0, v3, Lcom/tencent/liteav/videoproducer/producer/e$b;->b:Z

    goto :goto_3

    .line 342
    :cond_7
    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/producer/e;->c(J)Z

    move-result v4

    iput-boolean v4, v3, Lcom/tencent/liteav/videoproducer/producer/e$b;->a:Z

    .line 343
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/producer/e;->a(J)Lcom/tencent/liteav/videoproducer/producer/e$b;

    move-result-object v0

    .line 344
    iget-boolean v1, v0, Lcom/tencent/liteav/videoproducer/producer/e$b;->a:Z

    if-nez v1, :cond_8

    iget-boolean v0, v0, Lcom/tencent/liteav/videoproducer/producer/e$b;->b:Z

    if-eqz v0, :cond_9

    .line 345
    :cond_8
    iget-boolean v0, v3, Lcom/tencent/liteav/videoproducer/producer/e$b;->a:Z

    xor-int/2addr v0, v6

    iput-boolean v0, v3, Lcom/tencent/liteav/videoproducer/producer/e$b;->a:Z

    .line 346
    :cond_9
    :goto_3
    iget-boolean v0, v3, Lcom/tencent/liteav/videoproducer/producer/e$b;->a:Z

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->setHorizontalMirror(Z)V

    .line 347
    iget-boolean v0, v3, Lcom/tencent/liteav/videoproducer/producer/e$b;->b:Z

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->setVerticalMirror(Z)V

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMetaData(Lcom/tencent/liteav/videobase/frame/FrameMetaData;)V

    .line 349
    invoke-virtual {p2, p1}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->renderFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void
.end method

.method private a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;)V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setDisplayView "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->B:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTXCloudVideoView()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 222
    invoke-static {p1, v0, p0}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;ZLcom/tencent/rtmp/ui/a;)V

    .line 223
    invoke-static {p1, v0, p0}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;ZLcom/tencent/rtmp/ui/b;)V

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    if-eqz v1, :cond_2

    .line 225
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->B:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->setDisplayView(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private a(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->B:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->setDisplayView(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;Z)V

    .line 282
    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->start(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V

    .line 283
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->E:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->setScaleType(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->f()V

    return-void
.end method

.method private static a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 1

    .line 217
    instance-of v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-eqz v0, :cond_0

    .line 218
    check-cast p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string v1, "Stop custom capture"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->b()V

    .line 185
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    .line 186
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->setSourceType(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V

    .line 187
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/e;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V

    .line 188
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    .line 189
    iput-object v1, v0, Lcom/tencent/liteav/videoproducer/producer/ax;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    .line 190
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->e()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;F)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->b:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-eq v0, v1, :cond_0

    return-void

    .line 312
    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;)Lcom/tencent/liteav/videoproducer/capture/t;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 313
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/t;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;II)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->B:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getSize()Lcom/tencent/liteav/base/util/q;

    move-result-object v0

    .line 59
    iget v1, v0, Lcom/tencent/liteav/base/util/q;->a:I

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/tencent/liteav/videoproducer/producer/f;->a(IIII)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;ILcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 6

    .line 375
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->i:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v0, :cond_4

    .line 376
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->i:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 378
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/videoproducer/encoder/ah;

    if-eqz p1, :cond_1

    .line 379
    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 380
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->G:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    invoke-direct {p0, p2, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;)V

    .line 381
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->I:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    invoke-direct {p0, p2, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;)V

    .line 382
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    .line 383
    iget-wide v2, p0, Lcom/tencent/liteav/videoproducer/producer/e;->b:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    .line 384
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/e;->a:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 385
    :cond_3
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/producer/e;->b:J

    .line 386
    :cond_4
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;ILcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setRPSNearestREFSize: %d"

    invoke-static {v0, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/ah;

    if-nez v0, :cond_0

    .line 116
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v4

    const-string p2, "setRPSNearestREFSize with stream type: %s, but can\'t find matched videoEncodeController."

    invoke-static {p0, p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 117
    :cond_0
    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/am;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;I)Ljava/lang/Runnable;

    move-result-object p0

    const-string p1, "setRPSNearestREFSize"

    invoke-virtual {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Landroid/graphics/Bitmap;FFF)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->setWatermark(Landroid/graphics/Bitmap;FFF)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Landroid/graphics/Bitmap;I)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x40

    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x40

    :goto_0
    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 40
    :cond_2
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    instance-of v3, v2, Lcom/tencent/liteav/videoproducer/capture/al;

    if-eqz v3, :cond_3

    .line 41
    check-cast v2, Lcom/tencent/liteav/videoproducer/capture/al;

    .line 42
    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/tencent/liteav/videoproducer/capture/al;->a(Landroid/graphics/Bitmap;III)V

    return-void

    .line 43
    :cond_3
    instance-of p1, v2, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    if-eqz p1, :cond_4

    .line 44
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string p1, "setPausedImage in Start param."

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 45
    :cond_4
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string p1, "setPausedImage failed!"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Landroid/graphics/Point;IIII)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->b:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-eq v0, v1, :cond_0

    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;)Lcom/tencent/liteav/videoproducer/capture/t;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 305
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/t;->a()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 306
    :cond_2
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Lcom/tencent/liteav/videoproducer/capture/t;->a(II)V

    .line 307
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->B:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz p0, :cond_3

    .line 308
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTXCloudVideoView()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    .line 309
    invoke-static {p0, p2, p3, p4, p5}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;IIII)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->E:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    if-ne v0, p1, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setRenderScaleType: %s"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->E:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 131
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->g()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->setScaleType(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;)V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->D:Lcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;

    if-eq v0, p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setRenderMirrorMode: %s"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->D:Lcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/base/GLConstants$Orientation;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videobase/base/GLConstants$Orientation;

    .line 82
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    .line 84
    iput-object p1, v1, Lcom/tencent/liteav/videoproducer/producer/ax;->e:Lcom/tencent/liteav/videobase/base/GLConstants$Orientation;

    if-eq v0, p1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string/jumbo p1, "update %s orientation from %s to %s"

    invoke-static {v1, p1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-direct {p0, p2}, Lcom/tencent/liteav/videoproducer/producer/f;->b(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    .line 87
    :cond_0
    invoke-direct {p0, p3}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object p1

    .line 88
    sget-object p3, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->b:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-eq p2, p3, :cond_1

    .line 89
    iget p3, p1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    invoke-direct {p0, p3}, Lcom/tencent/liteav/videoproducer/producer/f;->a(I)V

    .line 90
    :cond_1
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/videoproducer/encoder/ah;

    if-eqz p0, :cond_2

    .line 91
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCustomRenderListener PixelFormatType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",  PixelBufferType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " listener= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->F:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    .line 193
    iget-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->F:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    if-eqz p3, :cond_1

    .line 194
    iget-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->I:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    if-nez p3, :cond_0

    .line 195
    new-instance p3, Lcom/tencent/liteav/videoconsumer/consumer/a;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/tencent/liteav/videoconsumer/consumer/a;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->I:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    .line 196
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->J:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    invoke-direct {p0, p3, v0}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->I:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    check-cast p0, Lcom/tencent/liteav/videoconsumer/consumer/a;

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/videoconsumer/consumer/a;->a(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    return-void

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->I:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 200
    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->stop(Z)V

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->I:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCustomVideoProcessListener PixelFormatType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",  PixelBufferType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " listener= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->K:Lcom/tencent/liteav/videoproducer/producer/a;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/tencent/liteav/videoproducer/producer/a;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/a;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->K:Lcom/tencent/liteav/videoproducer/producer/a;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->K:Lcom/tencent/liteav/videoproducer/producer/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/liteav/videoproducer/producer/a;->a(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videoproducer/producer/CustomVideoProcessListener;)V

    .line 207
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->K:Lcom/tencent/liteav/videoproducer/producer/a;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->setInterceptorBeforeWatermark(Lcom/tencent/liteav/videobase/a/a;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/common/SnapshotSourceType;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "takeSnapshot sourceType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/tencent/liteav/videobase/common/SnapshotSourceType;->a:Lcom/tencent/liteav/videobase/common/SnapshotSourceType;

    if-ne p1, v0, :cond_2

    .line 141
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/videoproducer/encoder/ah;

    if-eqz p1, :cond_0

    .line 142
    invoke-static {p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/as;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)Ljava/lang/Runnable;

    move-result-object p0

    const-string/jumbo p2, "snapshot"

    invoke-virtual {p1, p0, p2}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 143
    :cond_2
    sget-object v0, Lcom/tencent/liteav/videobase/common/SnapshotSourceType;->b:Lcom/tencent/liteav/videobase/common/SnapshotSourceType;

    if-ne p1, v0, :cond_5

    .line 144
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->B:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->G:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    if-eqz p1, :cond_3

    .line 145
    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->takeSnapshot(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V

    return-void

    .line 146
    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->I:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    if-eqz p1, :cond_4

    .line 147
    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->takeSnapshot(Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;)V

    return-void

    .line 148
    :cond_4
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string/jumbo p1, "takeSnapshot return null, no match render."

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    const/4 p0, 0x0

    .line 149
    invoke-interface {p2, p0}, Lcom/tencent/liteav/videobase/base/TakeSnapshotListener;->onComplete(Landroid/graphics/Bitmap;)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/frame/PixelFrame;II)V
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-eq v0, v1, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 153
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->D:Lcom/tencent/liteav/videobase/videobase/i;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->C:Lcom/tencent/liteav/videobase/videobase/i;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->D:Lcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;

    invoke-virtual {v0, v3, v4, v1}, Lcom/tencent/liteav/videoproducer/producer/e;->a(JLcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;)V

    .line 157
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->x:Z

    invoke-virtual {v0, v3, v4, v1}, Lcom/tencent/liteav/videoproducer/producer/e;->a(JZ)V

    .line 158
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->L:Lcom/tencent/liteav/base/util/q;

    iget v1, v0, Lcom/tencent/liteav/base/util/q;->a:I

    const/4 v3, 0x1

    if-ne v1, p2, :cond_2

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I

    if-ne v0, p3, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 159
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->p:Z

    if-nez v0, :cond_4

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    sget-object v1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;->d:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/ax;->a(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;)V

    .line 161
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    new-instance v1, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v1, p2, p3}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/ax;->a(Lcom/tencent/liteav/base/util/q;)V

    .line 162
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->d()V

    .line 163
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->L:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v0, p2, p3}, Lcom/tencent/liteav/base/util/q;->a(II)V

    .line 164
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->j:Ljava/lang/Object;

    .line 165
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 166
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->e()V

    .line 167
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Ljava/lang/Object;)V

    .line 168
    :cond_5
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    .line 169
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/tencent/liteav/videoproducer/producer/e;->a(J)Lcom/tencent/liteav/videoproducer/producer/e$b;

    move-result-object p2

    .line 170
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p3

    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->b:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq p3, v0, :cond_6

    .line 171
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p3

    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne p3, v0, :cond_7

    .line 172
    :cond_6
    iget-boolean p3, p2, Lcom/tencent/liteav/videoproducer/producer/e$b;->a:Z

    iget-boolean v0, p2, Lcom/tencent/liteav/videoproducer/producer/e$b;->b:Z

    if-eq p3, v0, :cond_7

    .line 173
    iput-boolean v0, p2, Lcom/tencent/liteav/videoproducer/producer/e$b;->a:Z

    .line 174
    iput-boolean p3, p2, Lcom/tencent/liteav/videoproducer/producer/e$b;->b:Z

    .line 175
    :cond_7
    iget-boolean p3, p2, Lcom/tencent/liteav/videoproducer/producer/e$b;->a:Z

    if-eqz p3, :cond_8

    .line 176
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result p3

    xor-int/2addr p3, v3

    invoke-virtual {p1, p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    .line 177
    :cond_8
    iget-boolean p2, p2, Lcom/tencent/liteav/videoproducer/producer/e$b;->b:Z

    if-eqz p2, :cond_9

    .line 178
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    .line 179
    :cond_9
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_a

    .line 180
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->i:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    .line 181
    :cond_a
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->processFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z

    .line 182
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;)V
    .locals 6

    .line 229
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v1, Lcom/tencent/liteav/videobase/videobase/i;->C:Lcom/tencent/liteav/videobase/videobase/i;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->updateStatus(Lcom/tencent/liteav/videobase/videobase/i;Ljava/lang/Object;)V

    .line 230
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->P:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 231
    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->P:Z

    .line 232
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    sget-object v3, Lcom/tencent/liteav/videobase/videobase/h$b;->j:Lcom/tencent/liteav/videobase/videobase/h$b;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "capture first frame"

    invoke-interface {v0, v3, v5, v4}, Lcom/tencent/liteav/videobase/videobase/IVideoReporter;->notifyEvent(Lcom/tencent/liteav/videobase/videobase/h$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string v3, "receive first capture frame! "

    invoke-static {v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    .line 235
    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/producer/ax;->f:Lcom/tencent/liteav/base/util/q;

    .line 236
    iget-boolean v3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->p:Z

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/tencent/liteav/base/util/q;->a:I

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I

    .line 237
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_3

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    new-instance v3, Lcom/tencent/liteav/base/util/q;

    .line 239
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    .line 240
    iget-object v4, v0, Lcom/tencent/liteav/videoproducer/producer/ax;->f:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v4, v3}, Lcom/tencent/liteav/base/util/q;->a(Lcom/tencent/liteav/base/util/q;)V

    .line 241
    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/producer/ax;->g:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v0, v2, v2}, Lcom/tencent/liteav/base/util/q;->a(II)V

    .line 242
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->d()V

    .line 243
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v3, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->c:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne v0, v3, :cond_3

    .line 244
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/liteav/videoproducer/encoder/ah;

    if-eqz v3, :cond_2

    .line 245
    invoke-virtual {v3}, Lcom/tencent/liteav/videoproducer/encoder/ah;->e()Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v4

    .line 246
    invoke-direct {p0, v4}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object v4

    .line 247
    iget v5, v4, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    invoke-direct {p0, v5}, Lcom/tencent/liteav/videoproducer/producer/f;->a(I)V

    .line 248
    invoke-virtual {v3, v4}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)V

    goto :goto_0

    .line 249
    :cond_3
    invoke-static {p2}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;)Lcom/tencent/liteav/videoproducer/capture/t;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 250
    new-instance p2, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {p2, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    iput-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->u:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 251
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/t;->b()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 252
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    .line 253
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->isFrontCamera()Z

    move-result v0

    .line 254
    invoke-virtual {p2, v3, v4}, Lcom/tencent/liteav/videoproducer/producer/e;->b(J)Lcom/tencent/liteav/videoproducer/producer/e$a;

    move-result-object p2

    .line 255
    iput-boolean v0, p2, Lcom/tencent/liteav/videoproducer/producer/e$a;->a:Z

    .line 256
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    .line 257
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->D:Lcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;

    .line 258
    invoke-virtual {p2, v3, v4, v0}, Lcom/tencent/liteav/videoproducer/producer/e;->a(JLcom/tencent/liteav/videobase/base/GLConstants$MirrorMode;)V

    .line 259
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    .line 260
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v3

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->x:Z

    .line 261
    invoke-virtual {p2, v3, v4, v0}, Lcom/tencent/liteav/videoproducer/producer/e;->a(JZ)V

    .line 262
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/t;->b()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 263
    iget v2, p2, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    .line 264
    :cond_4
    sget-object p2, Lcom/tencent/liteav/videoproducer/producer/f$4;->a:[I

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/producer/ax;->a()Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    if-eq p2, v1, :cond_7

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    const/4 v0, 0x3

    if-eq p2, v0, :cond_5

    goto :goto_1

    :cond_5
    rsub-int p2, v2, 0x21c

    .line 265
    rem-int/lit16 p2, p2, 0x168

    .line 266
    invoke-static {p2}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 267
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->swapWidthHeight()V

    goto :goto_1

    .line 268
    :cond_6
    sget-object p2, Lcom/tencent/liteav/videobase/utils/Rotation;->c:Lcom/tencent/liteav/videobase/utils/Rotation;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    goto :goto_1

    :cond_7
    rsub-int p2, v2, 0x168

    .line 269
    invoke-static {p2}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 270
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->swapWidthHeight()V

    .line 271
    :goto_1
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    .line 272
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/tencent/liteav/videoproducer/producer/e;->a(J)Lcom/tencent/liteav/videoproducer/producer/e$b;

    move-result-object p2

    .line 273
    iget-boolean v0, p2, Lcom/tencent/liteav/videoproducer/producer/e$b;->a:Z

    if-eqz v0, :cond_8

    .line 274
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorHorizontal()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    .line 275
    :cond_8
    iget-boolean p2, p2, Lcom/tencent/liteav/videoproducer/producer/e$b;->b:Z

    if-eqz p2, :cond_9

    .line 276
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->isMirrorVertical()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorVertical(Z)V

    .line 277
    :cond_9
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_a

    .line 278
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->i:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    .line 279
    :cond_a
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->processFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)Z

    .line 280
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->C:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v0, p1, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->l:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;

    .line 135
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setRenderRotation: %s, GSensorMode is %s"

    .line 136
    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->C:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 138
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->f()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/utils/Rotation;I)V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 287
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onOrientationChanged: %s, displayRotation:%d"

    .line 288
    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->m:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 290
    iput p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->n:I

    .line 291
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    if-nez p1, :cond_0

    .line 292
    sget-object p1, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 293
    :cond_0
    iput-object p1, p2, Lcom/tencent/liteav/videoproducer/producer/e;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 294
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->f()V

    .line 295
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->h()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/videobase/DisplayTarget;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->B:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCaptureParams "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p3}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setCaptureParamInternal "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-eq v0, p1, :cond_0

    .line 12
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "setCaptureParamInternal sourcetype not match: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , current is "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    .line 15
    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/producer/ax;->b:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;

    if-ne p2, v0, :cond_2

    .line 16
    invoke-virtual {p1, p3}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->d:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    sget-object v0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;->b:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;

    if-ne p2, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;->setPerformanceMode(Z)V

    .line 18
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoproducer/producer/ax;->a(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;)V

    .line 19
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    new-instance p2, Lcom/tencent/liteav/base/util/q;

    iget v0, p3, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    iget v1, p3, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    invoke-direct {p2, v0, v1}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoproducer/producer/ax;->a(Lcom/tencent/liteav/base/util/q;)V

    .line 20
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    iget-object p2, p3, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoproducer/producer/ax;->a(Landroid/graphics/Rect;)V

    .line 21
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ax;->b()Lcom/tencent/liteav/base/util/q;

    move-result-object p1

    .line 22
    iget p2, p1, Lcom/tencent/liteav/base/util/q;->a:I

    iput p2, p3, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    .line 23
    iget p1, p1, Lcom/tencent/liteav/base/util/q;->b:I

    iput p1, p3, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    .line 24
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ax;->c()Lcom/tencent/liteav/base/util/q;

    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->M:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/base/util/q;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 26
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->d()V

    .line 27
    :cond_4
    instance-of p1, p3, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-eqz p1, :cond_5

    .line 28
    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    check-cast p3, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-direct {p1, p3}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    goto :goto_1

    .line 29
    :cond_5
    instance-of p1, p3, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    if-eqz p1, :cond_6

    .line 30
    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    check-cast p3, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;

    invoke-direct {p1, p3}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/VirtualCamera$VirtualCameraParams;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    goto :goto_1

    .line 31
    :cond_6
    instance-of p1, p3, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    if-eqz p1, :cond_7

    .line 32
    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    check-cast p3, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;

    invoke-direct {p1, p3}, Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/ScreenCapturer$ScreenCaptureParams;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    goto :goto_1

    .line 33
    :cond_7
    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-direct {p1, p3}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    .line 34
    :goto_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    .line 35
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    :cond_8
    return-void

    .line 36
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "setCaptureParamInternal capturesource is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setServerConfig="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->k:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    .line 4
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/ah;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->setServerConfig(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->c:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne v0, v1, :cond_0

    .line 61
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string p1, "setGSensorMode has been ignored for screen capturing"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->l:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;

    .line 63
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    .line 64
    iput-object p1, v0, Lcom/tencent/liteav/videoproducer/producer/e;->f:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;

    .line 65
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "set GSensor mode to %s"

    invoke-static {v0, p1, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->h()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->c:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne v0, v1, :cond_0

    .line 68
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string p1, "setHomeOrientation has been ignored for screen capturing"

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->o:Lcom/tencent/liteav/videoproducer/producer/d;

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/producer/d;->disable()V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    .line 72
    iput-object p1, v0, Lcom/tencent/liteav/videoproducer/producer/ax;->c:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;

    .line 73
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    if-nez p1, :cond_2

    .line 74
    sget-object v1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 75
    :goto_0
    iput-object v1, v0, Lcom/tencent/liteav/videoproducer/producer/e;->e:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;

    .line 76
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "set HomeOrientation to %s"

    invoke-static {v0, p1, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ax;->c()Lcom/tencent/liteav/base/util/q;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->M:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/base/util/q;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 79
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->d()V

    .line 80
    :cond_3
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->h()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string v1, "requestKeyFrame"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/ah;

    if-nez v0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "requestKeyFrame with stream type: %s, but can\'t find matched videoEncodeController."

    invoke-static {p0, p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 124
    :cond_0
    invoke-static {v0}, Lcom/tencent/liteav/videoproducer/encoder/ak;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;)Ljava/lang/Runnable;

    move-result-object p0

    const-string p1, "restartIDRFrame"

    invoke-virtual {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;II)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/ah;

    if-nez v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "ackRPSRecvFrameIndex with stream type: %s, but can\'t find matched videoEncodeController."

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 120
    :cond_0
    invoke-static {v0, p2, p3}, Lcom/tencent/liteav/videoproducer/encoder/an;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;II)Ljava/lang/Runnable;

    move-result-object p0

    const-string p1, "ackRPSRecvFrameIndex"

    invoke-virtual {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;)V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/ah;

    if-eqz v0, :cond_0

    .line 388
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "%s video encoder is started"

    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startEncodeStreamInternal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-direct {p0, p2}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;)Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;

    move-result-object p2

    .line 391
    sget-object v0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->b:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-eq p1, v0, :cond_1

    .line 392
    iget v0, p2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->fps:I

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/producer/f;->a(I)V

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->y:Lorg/json/JSONArray;

    iput-object v0, p2, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->mediaCodecDeviceRelatedParams:Lorg/json/JSONArray;

    .line 394
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/ah;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    .line 395
    invoke-virtual {p2}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;->isTranscodingMode()Z

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/liteav/videoproducer/encoder/ah;-><init>(Lcom/tencent/liteav/videobase/videobase/IVideoReporter;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Z)V

    .line 396
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a()V

    .line 397
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->k:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    .line 398
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->z:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;)V

    .line 399
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->b(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    .line 401
    invoke-virtual {v0, p2, p3}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncodeParams;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;)V
    .locals 3

    .line 48
    sget-object v0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->b:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-ne p1, v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->z:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;

    if-eqz v0, :cond_2

    if-ne v0, p2, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setEncodeStrategy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->z:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/videoproducer/encoder/ah;

    if-eqz p0, :cond_2

    .line 53
    invoke-virtual {p0, p2}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeStrategy;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Ljava/lang/String;)V
    .locals 3

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string v1, "setHWEncoderDeviceRelatedParams: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->y:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 56
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setHWEncoderDeviceRelatedParams error "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoproducer/producer/f;Z)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->B:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTXCloudVideoView()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v1

    .line 228
    :goto_1
    invoke-static {v0, p1, p0}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;ZLcom/tencent/rtmp/ui/b;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->j:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/CommonUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->e()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->i:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v0, :cond_1

    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->h:Lcom/tencent/liteav/base/b/b;

    const-string v1, "initGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "initOpenGLComponents"

    invoke-static {v0, v1, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->j:Ljava/lang/Object;

    .line 213
    new-instance v0, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->i:Lcom/tencent/liteav/videobase/b/e;

    const/16 v1, 0x80

    const/4 v3, 0x0

    .line 214
    :try_start_0
    invoke-virtual {v0, p1, v3, v1, v1}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 215
    iput-object v3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->i:Lcom/tencent/liteav/videobase/b/e;

    .line 216
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->h:Lcom/tencent/liteav/base/b/b;

    const-string v1, "initGLError"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string p1, "EGLCore create failed."

    invoke-static {v0, v1, p1, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string/jumbo v1, "stopCaptureInternal"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->p:Z

    .line 33
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->unregisterVideoProcessedListener(ILcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    .line 34
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->unregisterVideoProcessedListener(ILcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    .line 35
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {v3, v2}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->stop(Z)V

    goto :goto_0

    .line 37
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->c()V

    .line 38
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->o:Lcom/tencent/liteav/videoproducer/producer/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 39
    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/producer/d;->disable()V

    .line 40
    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->o:Lcom/tencent/liteav/videoproducer/producer/d;

    .line 41
    :cond_2
    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    .line 42
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->setSourceType(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V

    .line 43
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videoproducer/producer/e;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V

    .line 44
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    .line 45
    iput-object v3, v1, Lcom/tencent/liteav/videoproducer/producer/ax;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    .line 46
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    new-instance v3, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v3}, Lcom/tencent/liteav/base/util/q;-><init>()V

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/videoproducer/producer/ax;->a(Lcom/tencent/liteav/base/util/q;)V

    .line 47
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/videoproducer/producer/ax;->a(Landroid/graphics/Rect;)V

    .line 48
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->P:Z

    .line 49
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->Q:Z

    .line 50
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->O:Z

    .line 51
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->e()V

    return-void
.end method

.method private b(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/ah;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->l:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;

    sget-object v2, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->w:Lcom/tencent/liteav/videobase/utils/Rotation;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 57
    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->b(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/producer/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string/jumbo v1, "uninitialize"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->b()V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videoproducer/encoder/ah;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->c()V

    .line 5
    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->d()V

    .line 6
    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->b()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    new-instance v1, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v1}, Lcom/tencent/liteav/base/util/q;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/ax;->b(Lcom/tencent/liteav/base/util/q;)V

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->f:Z

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string/jumbo v1, "videoproducer already uninitialize."

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    monitor-exit p0

    return-void

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    const/4 v2, 0x0

    .line 15
    iput-boolean v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->f:Z

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->uninitialize()V

    .line 18
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->G:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    .line 19
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->I:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    .line 20
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->e()V

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Lcom/tencent/liteav/base/util/CustomHandler;->a()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/producer/f;ILcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 5

    .line 27
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setRPSIFrameFPS: %d"

    invoke-static {v0, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/ah;

    if-nez v0, :cond_0

    .line 29
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p2, p1, v4

    const-string p2, "setRPSIFrameFPS with stream type: %s, but can\'t find matched videoEncodeController."

    invoke-static {p0, p2, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 30
    :cond_0
    invoke-static {v0, p1}, Lcom/tencent/liteav/videoproducer/encoder/al;->a(Lcom/tencent/liteav/videoproducer/encoder/ah;I)Ljava/lang/Runnable;

    move-result-object p0

    const-string p1, "setRPSIFrameFPS"

    invoke-virtual {v0, p0, p1}, Lcom/tencent/liteav/videoproducer/encoder/ah;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 1

    .line 105
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 106
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->F:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->F:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;->onRenderFrame(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->w:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v0, p1, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->l:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;

    aput-object v3, v1, v2

    const-string v2, "setEncodeRotation rotation: %s, GSensor mode: %s"

    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->w:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 26
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->h()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startCaptureInternal sourceType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",captureParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 68
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/ay;->a()Lcom/tencent/liteav/videoproducer/capture/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/ay;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Ljava/lang/Object;)V

    .line 69
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    .line 70
    iput-object p3, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    .line 71
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->d:Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;

    sget-object v1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;->b:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/preprocessor/BeautyProcessor;->setPerformanceMode(Z)V

    .line 72
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->setSourceType(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V

    .line 73
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/e;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V

    .line 74
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    .line 75
    iput-object v1, v0, Lcom/tencent/liteav/videoproducer/producer/ax;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    .line 76
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-virtual {v0, p2}, Lcom/tencent/liteav/videoproducer/producer/ax;->a(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;)V

    .line 77
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->e:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/videoproducer/producer/ax;->a(Landroid/graphics/Rect;)V

    .line 78
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    new-instance v0, Lcom/tencent/liteav/base/util/q;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    iget v2, v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    iget v1, v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    invoke-direct {v0, v2, v1}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/videoproducer/producer/ax;->a(Lcom/tencent/liteav/base/util/q;)V

    .line 79
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-virtual {p2}, Lcom/tencent/liteav/videoproducer/producer/ax;->b()Lcom/tencent/liteav/base/util/q;

    move-result-object p2

    .line 80
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    iget v1, p2, Lcom/tencent/liteav/base/util/q;->a:I

    iput v1, v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    .line 81
    iget p2, p2, Lcom/tencent/liteav/base/util/q;->b:I

    iput p2, v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    .line 82
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->d()V

    .line 83
    sget-object p2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->b:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne p1, p2, :cond_2

    .line 84
    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/al;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->g:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {p1, p2, v0, v1}, Lcom/tencent/liteav/videoproducer/capture/al;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    .line 85
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->o:Lcom/tencent/liteav/videoproducer/producer/d;

    if-nez p1, :cond_4

    .line 86
    new-instance p1, Lcom/tencent/liteav/videoproducer/producer/d;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->g:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/tencent/liteav/videoproducer/producer/d;-><init>(Landroid/content/Context;Lcom/tencent/liteav/videoproducer/producer/d$a;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->o:Lcom/tencent/liteav/videoproducer/producer/d;

    .line 87
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ax;->a()Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;

    move-result-object p1

    sget-object p2, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$HomeOrientation;

    if-ne p1, p2, :cond_4

    .line 88
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->o:Lcom/tencent/liteav/videoproducer/producer/d;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/d;->enable()V

    goto :goto_1

    .line 89
    :cond_2
    sget-object p2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->c:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne p1, p2, :cond_3

    .line 90
    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/al;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->g:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {p1, p2, v0, v1}, Lcom/tencent/liteav/videoproducer/capture/al;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    .line 91
    sget-object p1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->l:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;

    .line 92
    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    .line 93
    iput-object p1, p2, Lcom/tencent/liteav/videoproducer/producer/e;->f:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$GSensorMode;

    goto :goto_1

    .line 94
    :cond_3
    sget-object p2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->d:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne p1, p2, :cond_4

    .line 95
    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {p1, p2, v0}, Lcom/tencent/liteav/videoproducer/capture/VirtualCamera;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    .line 96
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->i:Lcom/tencent/liteav/videobase/b/e;

    if-eqz p2, :cond_5

    .line 97
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object p2

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    .line 98
    :goto_2
    invoke-virtual {p1, p2, p3, p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->start(Ljava/lang/Object;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V

    .line 99
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->B:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videobase/videobase/DisplayTarget;)V

    .line 100
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->G:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    iget-object p2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->H:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V

    .line 101
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V

    return-void

    .line 102
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "can\'t Start when sourceType isn\'t NONE. current is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    .line 103
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 104
    invoke-static {p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoproducer/encoder/ah;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->c()V

    .line 61
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->d()V

    .line 62
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/encoder/ah;->b()V

    .line 63
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    if-ne p1, v0, :cond_0

    .line 65
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    new-instance p1, Lcom/tencent/liteav/base/util/q;

    invoke-direct {p1}, Lcom/tencent/liteav/base/util/q;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/ax;->b(Lcom/tencent/liteav/base/util/q;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoproducer/producer/f;Z)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->B:Lcom/tencent/liteav/videobase/videobase/DisplayTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/videobase/DisplayTarget;->getTXCloudVideoView()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v1

    .line 54
    :goto_1
    invoke-static {v0, p1, p0}, Lcom/tencent/liteav/videobase/videobase/g;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;ZLcom/tencent/rtmp/ui/a;)V

    :cond_2
    return-void
.end method

.method private c()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->stop()V

    .line 5
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    .line 6
    :cond_0
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->s:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;

    .line 7
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->u:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/producer/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->initialize()V

    .line 2
    new-instance v0, Lcom/tencent/liteav/videoconsumer/renderer/p;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->b:Lcom/tencent/liteav/videobase/videobase/IVideoReporter;

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/videoconsumer/renderer/p;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/videobase/videobase/IVideoReporter;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->G:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/videoproducer/producer/f;Z)V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    if-eqz p1, :cond_0

    .line 9
    sget-object p1, Lcom/tencent/liteav/videobase/base/GLConstants$Orientation;->b:Lcom/tencent/liteav/videobase/base/GLConstants$Orientation;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/tencent/liteav/videobase/base/GLConstants$Orientation;->a:Lcom/tencent/liteav/videobase/base/GLConstants$Orientation;

    :goto_0
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/producer/ax;->d:Lcom/tencent/liteav/videobase/base/GLConstants$Orientation;

    return-void
.end method

.method private d()V
    .locals 11

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/producer/ax;->c()Lcom/tencent/liteav/base/util/q;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->M:Lcom/tencent/liteav/base/util/q;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/producer/ax;->b()Lcom/tencent/liteav/base/util/q;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "producer with capture "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " preview "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mode:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    .line 9
    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/producer/ax;->b:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;

    .line 10
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->M:Lcom/tencent/liteav/base/util/q;

    iget v2, v0, Lcom/tencent/liteav/base/util/q;->a:I

    iget v3, v0, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/base/util/q;->a(II)V

    .line 13
    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->p:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    invoke-virtual {v1, v2, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->unregisterVideoProcessedListener(ILcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    .line 15
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, p0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->unregisterVideoProcessedListener(ILcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    .line 16
    :cond_1
    new-instance v1, Lcom/tencent/liteav/videobase/videobase/a;

    iget v3, v0, Lcom/tencent/liteav/base/util/q;->a:I

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-direct {v1, v3, v0}, Lcom/tencent/liteav/videobase/videobase/a;-><init>(II)V

    .line 17
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    const/4 v5, 0x1

    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    sget-object v3, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    const/4 v9, 0x1

    move-object v6, v1

    move-object v7, v0

    move-object v8, v3

    move-object v10, p0

    invoke-virtual/range {v4 .. v10}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->registerVideoProcessedListener(ILcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ZLcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    .line 18
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    const/4 v5, 0x2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->registerVideoProcessedListener(ILcom/tencent/liteav/videobase/videobase/a;Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;ZLcom/tencent/liteav/videoproducer/preprocessor/ah;)V

    .line 19
    iput-boolean v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->p:Z

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoproducer/producer/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->b()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoproducer/producer/f;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->x:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setEncodeMirrorEnabled : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", old is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->x:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->x:Z

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->h()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->h:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v1, "uninitGL"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "uninitOpenGLComponents"

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->i:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->i:Lcom/tencent/liteav/videobase/b/e;

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->uninitializeGLComponents()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/liteav/videoproducer/producer/f;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string v1, "pauseCaptureInternal"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne v0, v1, :cond_0

    .line 7
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string v0, "ignore invoking pauseCapture() when using custom input"

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->pause()V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->n:I

    rsub-int v0, v0, 0x168

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->C:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 2
    iget v1, v1, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    add-int/2addr v0, v1

    .line 3
    rem-int/lit16 v0, v0, 0x168

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;->setRenderRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/tencent/liteav/videoproducer/producer/f;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string v1, "resumeCaptureInternal"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-ne v0, v1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string v0, "ignore invoking resumeCapture() when using custom input"

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->r:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;->resume()V

    :cond_1
    return-void
.end method

.method private g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->G:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->I:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method static synthetic g(Lcom/tencent/liteav/videoproducer/producer/f;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    if-eq v0, v1, :cond_0

    .line 7
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string v0, "can\'t Start when sourceType isn\'t NONE"

    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string v1, "Start custom capture"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/ay;->a()Lcom/tencent/liteav/videoproducer/capture/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/ay;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->c()V

    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    sget-object v1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;->a:Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/ax;->a(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$ProducerMode;)V

    .line 12
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->L:Lcom/tencent/liteav/base/util/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/tencent/liteav/base/util/q;->a(II)V

    .line 13
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;->e:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    .line 14
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->c:Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/preprocessor/VideoPreprocessor;->setSourceType(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V

    .line 15
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->N:Lcom/tencent/liteav/videoproducer/producer/e;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videoproducer/producer/e;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;)V

    .line 16
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->t:Lcom/tencent/liteav/videoproducer/producer/ax;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->q:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    .line 17
    iput-object v1, v0, Lcom/tencent/liteav/videoproducer/producer/ax;->a:Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$SourceType;

    .line 18
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->G:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->H:Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderInterface;Lcom/tencent/liteav/videoconsumer/renderer/VideoRenderListener;)V

    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;

    .line 2
    invoke-direct {p0, v1}, Lcom/tencent/liteav/videoproducer/producer/f;->b(Lcom/tencent/liteav/videoproducer/producer/VideoProducerDef$StreamType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/tencent/liteav/videoproducer/producer/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/producer/f;->h()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    .line 310
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/ar;->a(Lcom/tencent/liteav/videoproducer/producer/f;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(IIII)V
    .locals 11

    .line 296
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->u:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-eqz v0, :cond_1

    if-lez p3, :cond_1

    if-gtz p4, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    new-instance v1, Lcom/tencent/liteav/base/util/q;

    .line 298
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->u:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    .line 299
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/producer/f;->u:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 300
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v4, p3, p4}, Lcom/tencent/liteav/base/util/q;-><init>(II)V

    .line 301
    invoke-static {v0, v2, v3, v4, v1}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->reverseMappingPoint(Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;Lcom/tencent/liteav/videobase/utils/Rotation;Landroid/graphics/Point;Lcom/tencent/liteav/base/util/q;Lcom/tencent/liteav/base/util/q;)Landroid/graphics/Point;

    move-result-object v6

    move-object v5, p0

    move v7, p1

    move v8, p2

    move v9, p3

    move v10, p4

    .line 302
    invoke-static/range {v5 .. v10}, Lcom/tencent/liteav/videoproducer/producer/aq;->a(Lcom/tencent/liteav/videoproducer/producer/f;Landroid/graphics/Point;IIII)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/tencent/liteav/videobase/utils/Rotation;I)V
    .locals 0

    .line 285
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/producer/ap;->a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/utils/Rotation;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final a(Ljava/lang/Runnable;)Z
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->e:Lcom/tencent/liteav/base/util/CustomHandler;

    .line 351
    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/producer/f;->f:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 353
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1

    .line 354
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final didProcessFrame(ILcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->Q:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->Q:Z

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string v1, "preprocess first frame out!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 5
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    .line 6
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/producer/ao;->a(Lcom/tencent/liteav/videoproducer/producer/f;ILcom/tencent/liteav/videobase/frame/PixelFrame;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_2
    return-void
.end method

.method public final onCameraTouchEnable(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCameraTouchEnable enableTouch:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/ak;->a(Lcom/tencent/liteav/videoproducer/producer/f;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCameraZoomEnable(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCameraZoomEnable enableZoom:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/al;->a(Lcom/tencent/liteav/videoproducer/producer/f;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCaptureError()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    const-string v1, "onCaptureError"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onCaptureFirstFrame()V
    .locals 0

    return-void
.end method

.method public final onFrameAvailable(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->retain()I

    .line 2
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v0, v1, :cond_1

    .line 4
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 5
    :cond_1
    invoke-static {p0, p2, p1}, Lcom/tencent/liteav/videoproducer/producer/am;->a(Lcom/tencent/liteav/videoproducer/producer/f;Lcom/tencent/liteav/videobase/frame/PixelFrame;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-virtual {p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    :cond_2
    return-void
.end method

.method public final onScreenDisplayOrientationChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onScreenDisplayOrientationChanged isPortrait:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/aj;->a(Lcom/tencent/liteav/videoproducer/producer/f;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onStartFinish(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/producer/f;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onStartFinish success:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/producer/ai;->a(Lcom/tencent/liteav/videoproducer/producer/f;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/producer/f;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
